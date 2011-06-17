SDKVERSION = latest
include theos/makefiles/common.mk

TWEAK_NAME = surveyscheme
surveyscheme_FILES = Tweak.xm
surveyscheme_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
