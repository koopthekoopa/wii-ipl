# mandatory
SDK_SRC_PATH	= $(REVOLUTION_SDK_ROOT)/$(SOURCE_ROOT)
SDK_ASM_PATH	= $(REVOLUTION_SDK_ROOT)/$(VER_ASSEMBLY_ROOT)
SDK_BLD_PATH	= $(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)
SDK_OBJ_PATH	= $(SDK_BLD_PATH)/obj
SDK_INC_PATHS	= $(COMMON_INCLUDES)

include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/RVLSDKLibs/base.mak
include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/RVLSDKLibs/os.mak

RVL_SDK:	$(SDK_BLD_PATH)/base.a \
			$(SDK_BLD_PATH)/os.a

clean_RVL_SDK:
	@echo Cleaning RVL_SDK...
	@rm -rf $(SDK_BLD_PATH)


