#include "jni.h"
#include "android_runtime/AndroidRuntime.h"
#include "android/log.h"
#include "stdio.h"
#include "stdlib.h"
#include "MethodHooker.h"
//#include <utils/CallStack.h>
//#include "art.h"
#define log(a,b) __android_log_write(ANDROID_LOG_INFO,a,b); // LOG类型:info
#define log_(b) __android_log_write(ANDROID_LOG_INFO,"JNITag",b); // LOG类型:info


extern "C" void InjectInterface(char*arg) __attribute__((constructor));

extern "C" void InjectInterface(char*arg)
{

	log_("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*");
	log_("*-*-*-*-*-* Injected so *-*-*-*-*-*-*-*");
	log_("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*");
	Hook();
	log_("*-*-*-*-*-*-*- End -*-*-*-*-*-*-*-*-*-*");

}

extern "C" JNIEXPORT jstring JNICALL Java_com_example_testar_InjectApplication_test(JNIEnv *env, jclass clazz)
{
//	Abort_();
    return env->NewStringUTF("haha ");;
}
