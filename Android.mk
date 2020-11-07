LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        libubox/avl.c \
        libubox/avl-cmp.c \
        libubox/blob.c \
        libubox/blobmsg.c \
        libubox/uloop.c \
        libubox/usock.c \
        libubox/ustream.c \
        libubox/ustream-fd.c \
        libubox/vlist.c \
        libubox/utils.c \
        libubox/safe_list.c \
        libubox/runqueue.c \
        libubox/md5.c \
        libubox/kvlist.c \
        libubox/ulog.c \
        libubox/base64.c

LOCAL_MODULE := libubox
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_C_INCLUDES:=external/json-c/
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_CFLAGS+=-DJSONC

LOCAL_SRC_FILES := \
        libubox/blobmsg_json.c

LOCAL_MODULE := libblobmsg_json
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_C_INCLUDES:=external/json-c/
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:=        \
	main.c \
	dev.c \
	commands.c \
	qmi-message.c \
	mbim.c \
	qmi-message-ctl.c \
	qmi-message-dms.c \
	qmi-message-nas.c \
	qmi-message-pds.c \
	qmi-message-uim.c \
	qmi-message-wds.c \
	qmi-message-wms.c \
	qmi-message-wda.c


LOCAL_MODULE:= uqmi

LOCAL_STATIC_LIBRARIES := libubox libblobmsg_json
LOCAL_SHARED_LIBRARIES := libjson

LOCAL_VENDOR_MODULE := true

include $(BUILD_EXECUTABLE)
