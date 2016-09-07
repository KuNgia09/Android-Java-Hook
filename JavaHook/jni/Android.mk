LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= so

LOCAL_SRC_FILES := so.cpp MethodHooker.cpp

LOCAL_LDLIBS+= 

#LOCAL_CFLAGS    := -I./jni/include/ -I./jni/dalvik/vm/ -I./jni/dalvik -DHAVE_LITTLE_ENDIAN
LOCAL_CFLAGS    := -I./include/ -I./dalvik/vm/ -I./dalvik -DHAVE_LITTLE_ENDIAN
#LOCAL_C_INCLUDES :=$(LOCAL_PATH)\jni\include
#LOCAL_C_INCLUDES +=$(LOCAL_PATH)\jni
LOCAL_LDFLAGS	:=	-L./lib/  -L$(SYSROOT)/usr/lib -llog -ldvm -landroid_runtime  -lart

LOCAL_STATIC_LIBRARIES := hookart

LOCAL_SHARED_LIBRARIES :=
include $(BUILD_SHARED_LIBRARY)

#------------------------------------------------------------------------

#------------------------------------------------------------------------

include $(CLEAR_VARS)

LOCAL_MODULE:= Test

LOCAL_SRC_FILES := Test.c

LOCAL_LDLIBS+= -L./lib/ -llog

LOCAL_CFLAGS    := -I./include/ -I./dalvik/vm/ -I./dalvik -fPIC -shared

LOCAL_SHARED_LIBRARIES := 

include $(BUILD_SHARED_LIBRARY)

#------------------------------------------------------------------------

