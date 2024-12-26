LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SDK_VERSION := 21

LOCAL_MODULE := libXdmcp

LOCAL_C_INCLUDES := \
	swallow/xorg/proto/xorgproto/include \
	swallow/xorg/lib/libfontenc/include \
	swallow/xorg/lib/libxtrans \
	swallow/xorg/lib/libXau/include \
	$(LOCAL_PATH)/ \
	$(LOCAL_PATH)/include \


LOCAL_CFLAGS := -DHAVE_CONFIG_H

LOCAL_SRC_FILES := \
	Array.c \
	Fill.c \
	Flush.c \
	Key.c \
	Read.c \
	Unwrap.c \
	Wrap.c \
	Write.c \
	Wraphelp.c

LOCAL_SHARED_LIBRARIES := 
LOCAL_STATIC_LIBRARIES := 

LOCAL_LDLIBS :=  -llog -lc -lm -ldl -lz

include $(BUILD_SHARED_LIBRARY)

