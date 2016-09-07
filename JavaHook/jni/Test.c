#include "native.h"
#include <android/log.h>
#include "stdio.h"
#include "stdlib.h"
#include "MethodHooker.h"

#define log(a,b) __android_log_print(ANDROID_LOG_VERBOSE,a,b); // LOG类型:info
#define log_(b) __android_log_print(ANDROID_LOG_VERBOSE,"JNI_LOG_INFO",b); // LOG类型:info

int getpHookInfo(HookInfo** pInfo);

JNIEXPORT void JNICALL Java_com_example_testar_InjectClassloader_hookMethodNative
  (JNIEnv * jenv, jobject jboj, jobject jobj, jclass jclazz, jint slot)
{
	//log("TestAE","start Inject other process");
}

JNIEXPORT jstring JNICALL test(JNIEnv *env, jclass clazz)  
{  
    __android_log_print(ANDROID_LOG_VERBOSE, "Log", "call <native_printf> in java");
    return (*env)->NewStringUTF(env,"haha ");;
}

HookInfo hookInfos[] = {
		{"android/net/wifi/WifiInfo","getMacAddress","()Ljava/lang/String;",(void*)test},
		{"com/example/javahook/MainActivity","test","()Ljava/lang/String;",(void*)test},
		//{"android/app/ApplicationLoaders","getText","()Ljava/lang/CharSequence;",(void*)test},
};

int getpHookInfo(HookInfo** pInfo){
	*pInfo = hookInfos;
	return sizeof(hookInfos) / sizeof(hookInfos[0]);
}
