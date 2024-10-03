DEBUG = 0
FINALPACKAGE=1
THEOS_USE_NEW_ABI=1
export TARGET = iphone:clang:16.5:11.0
ARCHS = arm64 arm64e

THEOS_PACKAGE_SCHEME = rootless
# THEOS_PACKAGE_SCHEME = roothide

INSTALL_TARGET_PROCESSES = Preferences

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BatteryHealth

$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_PRIVATE_FRAMEWORKS = Preferences
# $(TWEAK_NAME)_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk
