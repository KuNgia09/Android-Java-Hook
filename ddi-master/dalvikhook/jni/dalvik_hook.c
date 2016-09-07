/*
 *  Collin's Dynamic Dalvik Instrumentation Toolkit for Android
 *  Collin Mulliner <collin[at]mulliner.org>
 *
 *  (c) 2012,2013
 *
 *  License: LGPL v2.1
 *
 */


#include <stdio.h>
#include <stdlib.h>

#include "dexstuff.h"
#include "dalvik_hook.h"

#include "log.h"

 //
//dalvik_hook_setup(&dpdu, "Lcom/android/internal/telephony/SMSDispatcher;", "dispatchPdus", "([[B)V", 2, my_dispatch);
int dalvik_hook_setup(struct dalvik_hook_t *h, char *cls, char *meth, char *sig, int ns, void *func)
{
	log("start call exec hook_setup\n")
	if (!h)
		return 0;
    //copy "Lcom/android/internal/telephony/SMSDispatcher;"
	strcpy(h->clname, cls);
	//copy "com/android/internal/telephony/SMSDispatcher"
	strncpy(h->clnamep, cls+1, strlen(cls)-2);
	//copy "dispatchPdus"
	strcpy(h->method_name, meth);
	strcpy(h->method_sig, sig);
	h->n_iss = ns;
	h->n_rss = ns;
	h->n_oss = 0;
	h->native_func = func;

	h->sm = 0; // set by hand if needed

	h->af = 0x0100; // native, modify by hand if needed
	
	h->resolvm = 0; // don't resolve method on-the-fly, change by hand if needed

	h->debug_me = 1;

	return 1;
}

void* dalvik_hook(struct dexstuff_t *dex, struct dalvik_hook_t *h)
{
	if (h->debug_me)
		log("dalvik_hook: class %s\n", h->clname)
	//找到"Lcom/android/internal/telephony/SMSDispatcher;"这个类
	void *target_cls = dex->dvmFindLoadedClass_fnPtr(h->clname);
	if (h->debug_me)
		log("class = 0x%x\n", target_cls)

	// print class in logcat
	if (h->dump && dex && target_cls)
		dex->dvmDumpClass_fnPtr(target_cls, (void*)1);

	if (!target_cls) {
		if (h->debug_me)
			log("target_cls == 0\n")
		return (void*)0;
	}

	//返回一个jmethodID
	h->method = dex->dvmFindVirtualMethodHierByDescriptor_fnPtr(target_cls, h->method_name, h->method_sig);
	if (h->method == 0) {
		h->method = dex->dvmFindDirectMethodByDescriptor_fnPtr(target_cls, h->method_name, h->method_sig);
	}

	// constrcutor workaround, see "dalvik_prepare" below
	if (!h->resolvm) {
		h->cls = target_cls;//指向SMSDispatcher类对象
		h->mid = (void*)h->method;//dispatchPdus方法id
	}

	if (h->debug_me)
		log("%s(%s) = 0x%x\n", h->method_name, h->method_sig, h->method)

	if (h->method) {
		//保存原始的insns
		h->insns = h->method->insns;

		if (h->debug_me) {
			log("nativeFunc %x\n", h->method->nativeFunc)	
			log("insSize = 0x%x  registersSize = 0x%x  outsSize = 0x%x\n", h->method->insSize, h->method->registersSize, h->method->outsSize)
		}
		/*
		举个例子，如果一个非静态方法有2个参数（没有long和double型的），
		其使用到了5个寄存器（v0-v4），那么参数将置于最后2个寄存器，即v3和v4中，
		而v2是这个方法所在对象的指针，v0和v1是函数自己所需要的本地寄存器。
		这时，registersSize的值是5，而insSize的值是3。
		*/
        //保存方法原先所需要的参数
		h->iss = h->method->insSize;
		h->rss = h->method->registersSize;
		h->oss = h->method->outsSize;
	
		/*
		h->n_iss = ns;ns=2
		h->n_rss = ns;
		h->n_oss = 0;
		h->native_func = func;
		*/

		//这里打印出执行dvmComputeArgSize计算hook函数的参数结果
		int argsize=dex->dvmComputeMethodArgsSize_fnPtr(h->method);
		log("hook funcname argsize is %d\n",argsize);
		if(!dex->dvmIsStaticMethod_fnPtr(h->method))
		{
			log("is not static method\n")
			argsize++;
		}
		//修改jMethodID
/*		h->method->insSize = h->n_iss;
		h->method->registersSize = h->n_rss;*/
		h->method->insSize = argsize;
		h->method->registersSize = argsize;
		h->method->outsSize = h->n_oss;



		if (h->debug_me) {
			log("shorty %s\n", h->method->shorty)
			log("name %s\n", h->method->name)
			log("arginfo %x\n", h->method->jniArgInfo)

		}
		/*
		jniArgInfo：这个变量记录了一些预先计算好的信息，
		从而不需要在调用的时候再通过方法的参数和返回值实时计算了，
		方便了JNI的调用，提高了调用的速度。如果第一位为1（即0x80000000），
		则Dalvik虚拟机会忽略后面的所有信息，强制在调用时实时计算
		*/
		h->method->jniArgInfo = 0x80000000; // <--- also important
		if (h->debug_me) {
			log("noref %c\n", h->method->noRef)
			log("access %x\n", h->method->a)

		}
		//将需要hook的函数修改为native
		h->access_flags = h->method->a;
		h->method->a = h->method->a | h->af; // make method native
		if (h->debug_me){
			log("access %x\n", h->method->a)
			
		}
	    //由于前面修改accessflag将要hook的java函数修改为native函数 dvmUseJNIBridge_fnPtr将hook函数指向native 函数实例
		dex->dvmUseJNIBridge_fnPtr(h->method, h->native_func);
		
		if (h->debug_me){

			log("patched %s to: 0x%x\n", h->method_name, h->native_func)
			
		}

		return (void*)1;
	}
	else {
		if (h->debug_me){
			log("could NOT patch %s\n", h->method_name)
			
		}
	}

	return (void*)0;
}

int dalvik_prepare(struct dexstuff_t *dex, struct dalvik_hook_t *h, JNIEnv *env)
{
	log("back original methodID\n")
	// this seems to crash when hooking "constructors"

	if (h->resolvm) {
		h->cls = (*env)->FindClass(env, h->clnamep);
		if (h->debug_me)
			log("cls = 0x%x\n", h->cls)
		if (!h->cls)
			return 0;
		if (h->sm)
			h->mid = (*env)->GetStaticMethodID(env, h->cls, h->method_name, h->method_sig);
		else
			h->mid = (*env)->GetMethodID(env, h->cls, h->method_name, h->method_sig);
		if (h->debug_me)
			log("mid = 0x%x\n", h-> mid)
		if (!h->mid)
			return 0;
	}
	//恢复SmsDispatch方法jMethodID的值
	h->method->insSize = h->iss;
	h->method->registersSize = h->rss;
	h->method->outsSize = h->oss;
	h->method->a = h->access_flags;
	h->method->jniArgInfo = 0;
	h->method->insns = h->insns; 
	
}

void dalvik_postcall(struct dexstuff_t *dex, struct dalvik_hook_t *h)
{
	h->method->insSize = h->n_iss;
	h->method->registersSize = h->n_rss;
	h->method->outsSize = h->n_oss;

	//log("shorty %s\n", h->method->shorty)
	//log("name %s\n", h->method->name)
	//log("arginfo %x\n", h->method->jniArgInfo)
	h->method->jniArgInfo = 0x80000000;
	//log("noref %c\n", h->method->noRef)
	//log("access %x\n", h->method->a)
	h->access_flags = h->method->a;
	h->method->a = h->method->a | h->af;
	//log("access %x\n", h->method->a)

	dex->dvmUseJNIBridge_fnPtr(h->method, h->native_func);
	
	if (h->debug_me)
		log("patched BACK %s to: 0x%x\n", h->method_name, h->native_func)
}

//static void __attribute__ ((constructor)) dalvikhook_my_init(void);

static char logfile[] = "/data/local/tmp/log";

static void logmsgtofile(char *msg)
{
    int fp = open(logfile, O_WRONLY|O_APPEND);
    write(fp, msg, strlen(msg));
    close(fp);
}

static void logmsgtostdout(char *msg)
{
	write(1, msg, strlen(msg));
}

void* dalvikhook_set_logfunction(void *func)
{
    void *old = libdalvikhook_log_function;
    libdalvikhook_log_function = func;
    //logmsgtofile("dalvik_set_logfunction called\n");
    return old;
}

static void dalvikhook_my_init(void)
{
    // set the log_function
	//logmsgtofile("dalvik init\n");
    libdalvikhook_log_function = logmsgtofile;
}
