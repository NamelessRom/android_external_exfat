LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libexfat_fsck_static
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS = -D_FILE_OFFSET_BITS=64 -Dmain=fsck_exfat_main
LOCAL_SRC_FILES =  main.c
LOCAL_C_INCLUDES += $(LOCAL_PATH) \
					external/exfat/libexfat \
					external/fuse/include
LOCAL_STATIC_LIBRARIES := libfuse_static libexfat_static
include $(BUILD_STATIC_LIBRARY)
