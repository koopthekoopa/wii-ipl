SETTING_OBJS	=	$(BS2_OBJASM_PATH)/scene/setting/iplSetting.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplSensitivity.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplNCDSetting.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplParental.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplAPScanThread.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplUsbAP.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplUsbAPThread.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplAOSSThread.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplAOSS.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplRakuRakuThread.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplATERM.o \
					$(BS2_OBJ_PATH)/scene/setting/iplSettingBg.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplSettingButton.o \
					$(BS2_OBJASM_PATH)/scene/setting/iplSettingSelect.o \

DEPENDENCIES += 	$(SETTING_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/setting/%.o: $(BS2_SRC_PATH)/scene/setting/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/setting/%.o: $(BS2_ASM_PATH)/scene/setting/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/setting.a: $(SETTING_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



