ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:13.0

THEOS_DEVICE_IP = 192.168.2.107
THEOS_PLATFORM_DEB_COMPRESSION_TYPE = xz

ifeq ($(THEOS), )
	export THEOS=/var/mobile/theos
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = h5tap

h5tap = Tweak.mm
h5tap = -fobjc-arc -fvisibility=hidden -std=c++11

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

