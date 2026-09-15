TARGET := iphone:clang:latest:14.0
ARCHS := arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZaynixXios
ZaynixXios_FILES = Tweak.x
ZaynixXios_CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/tweak.mk
