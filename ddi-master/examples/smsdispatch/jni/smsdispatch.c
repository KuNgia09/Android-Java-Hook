/*
 *  Collin's Dynamic Dalvik Instrumentation Toolkit for Android
 *  Collin Mulliner <collin[at]mulliner.org>
 *
 *  (c) 2012,2013
 *
 *  License: LGPL v2.1
 *
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dlfcn.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/select.h>
#include <string.h>
#include <termios.h>
#include <pthread.h>
#include <sys/epoll.h>

#include <jni.h>
#include <stdlib.h>
#include <android/log.h>
#include "hook.h"
#include "dexstuff.h"
#include "dalvik_hook.h"
#include "base.h"

#undef log

#define log(...) \
        {FILE *fp = fopen("/data/local/tmp/smsdispatch.log", "a+"); if (fp) {\
        fprintf(fp, __VA_ARGS__);\
        fclose(fp);}}

//#define log(...) {__android_log_print(ANDROID_LOG_VERBOSE, __VA_ARGS__);}

static struct hook_t eph;
static struct dexstuff_t d;
static struct dalvik_hook_t dpdu;

// switch for debug output of dalvikhook and dexstuff code
static int debug;

static void my_log(char *msg)
{
	log("%s", msg)
}
static void my_log2(char *msg)
{
	if (debug)
		log("%s", msg);
}

static void my_dispatch(JNIEnv *env, jobject obj, jobjectArray pdu)
{
	/*
	log("env = 0x%x\n", env)
	log("obj = 0x%x\n", obj)
	log("pdu = 0x%x\n", pdu)
	*/
		
	// load dex classes
	int cookie = dexstuff_loaddex(&d, "/data/local/tmp/ddiclasses.dex");
	log("libsmsdispatch: loaddex res = %x\n", cookie)
	if (!cookie)
		log("libsmsdispatch: make sure /data/dalvik-cache/ is world writable and delete data@local@tmp@ddiclasses.dex\n")
	void *clazz = dexstuff_defineclass(&d, "org/mulliner/ddiexample/SMSDispatch", cookie);
	log("libsmsdispatch: clazz = 0x%x\n", clazz)

	// call constructor and passin the pdu
	jclass smsd = (*env)->FindClass(env, "org/mulliner/ddiexample/SMSDispatch");
	jmethodID constructor = (*env)->GetMethodID(env, smsd, "<init>", "([[B)V");
	if (constructor) { 
		jvalue args[1];
		args[0].l = pdu;

		jobject obj = (*env)->NewObjectA(env, smsd, constructor, args);      
		log("libsmsdispatch: new obj = 0x%x\n", obj)
		
		if (!obj)
			log("libsmsdispatch: failed to create smsdispatch class, FATAL!\n")
	}
	else {
		log("libsmsdispatch: constructor not found!\n")
	}

	// call original SMS dispatch method
	jvalue args[1];
	args[0].l = pdu;
	dalvik_prepare(&d, &dpdu, env);
	(*env)->CallVoidMethodA(env, obj, dpdu.mid, args);
	log("success calling : %s\n", dpdu.method_name)
	dalvik_postcall(&d, &dpdu);
}


static jstring my_getmacaddress(JNIEnv *env, jobject obj){
	log("having enter fakemacaddress\n");
		/*
	log("env = 0x%x\n", env)
	log("obj = 0x%x\n", obj)
	log("pdu = 0x%x\n", pdu)
	*/
		
	// load dex classes
	int cookie = dexstuff_loaddex(&d, "/data/local/tmp/getMacAddressHook.dex");
	log("libgetMacAddressHook: loaddex res = %x\n", cookie)
	if (!cookie)
		log("libsmsdispatch: make sure /data/dalvik-cache/ is world writable and delete data@local@tmp@ddiclasses.dex\n")
	void *clazz = dexstuff_defineclass(&d, "com/example/javahook/getMacAddressHook", cookie);
	log("libgetMacAddressHook: clazz = 0x%x\n", clazz)

	// call constructor and passin the pdu
	jclass smsd = (*env)->FindClass(env, "com/example/javahook/getMacAddressHook");
	//寻找构造函数
	jmethodID constructor = (*env)->GetMethodID(env, smsd, "<init>", "()V");
	if (constructor) { 
//		jvalue args[1];
//		args[0].l = pdu;

		//调用构造函数
		jobject fakeobj = (*env)->NewObject(env, smsd, constructor);      
		log("libgetMacAddressHook: new obj = 0x%x\n", fakeobj)
		
		if (!fakeobj)
			log("libgetMacAddressHook: failed to create smsdispatch class, FATAL!\n")
	}
	else {
		log("libgetMacAddressHook: constructor not found!\n")
	}

	// call original SMS dispatch method
//	jvalue args[1];
//	args[0].l = pdu;
	dalvik_prepare(&d, &dpdu, env);
	//调用原始的getMacAddress函数
	jstring result=(jstring)((*env)->CallObjectMethod(env, obj, dpdu.mid));
//	(*env)->CallObjectMethod(env, obj, dpdu.mid);
	log("Mac address is 0x%x\n", result);
	log("success calling : %s\n", dpdu.method_name)
	dalvik_postcall(&d, &dpdu);
	return result;
}
static int my_epoll_wait(int epfd, struct epoll_event *events, int maxevents, int timeout)
{
	int (*orig_epoll_wait)(int epfd, struct epoll_event *events, int maxevents, int timeout);
	orig_epoll_wait = (void*)eph.orig;
	// remove hook for epoll_wait
	hook_precall(&eph);

	// resolve symbols from DVM
	dexstuff_resolv_dvm(&d);
	//log("start call exec hook_setup\n")
	// hook
	//protected void dispatchPdus(byte[][] pdus) 
	//{"android/net/wifi/WifiInfo","getMacAddress","()Ljava/lang/String;",(void*)test},
//	dalvik_hook_setup(&dpdu, "Lcom/android/internal/telephony/SMSDispatcher;", "dispatchPdus", "([[B)V", 2, my_dispatch);
	dalvik_hook_setup(&dpdu,"Landroid/net/wifi/WifiInfo;","getMacAddress","()Ljava/lang/String;",1,my_getmacaddress);
//	dalvik_hook_setup(&dpdu, "Landroid/app/Activity;", "setContentView", "(I)V", 2, my_dispatch);
	dalvik_hook(&d, &dpdu);
	        
	// call original function
	int res = orig_epoll_wait(epfd, events, maxevents, timeout);    
	return res;
}


// set my_init as the entry point
void __attribute__ ((constructor)) my_init(void);

void my_init(void)
{
	log("libsmsdispatch: started\n")
 
 	debug = 1;
 	// set log function for  libbase (very important!)
	set_logfunction(my_log2);
	// set log function for libdalvikhook (very important!)
	dalvikhook_set_logfunction(my_log2);

	hook(&eph, getpid(), "libc.", "epoll_wait", my_epoll_wait, 0);
}
