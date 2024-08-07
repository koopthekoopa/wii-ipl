SYSTEM_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
SYSTEM_CCPATH	=	$(CW_GC_30A52)
SYSTEM_OBJECTS	=	$(BS2_OBJASM_PATH)/system/rvl_dec.o \
					$(BS2_OBJ_PATH)/system/RIPL_BoardRecord.o \
					$(BS2_OBJASM_PATH)/system/iplSystem.o \
					$(BS2_OBJASM_PATH)/system/iplController.o \
					$(BS2_OBJASM_PATH)/system/iplChannelManager.o \
					$(BS2_OBJASM_PATH)/system/iplChannelScriptManager.o \
					$(BS2_OBJASM_PATH)/system/iplFramework.o \
					$(BS2_OBJASM_PATH)/system/iplException.o \
					$(BS2_OBJASM_PATH)/system/iplMessage.o \
					$(BS2_OBJASM_PATH)/system/iplMessageManager.o \
					$(BS2_OBJASM_PATH)/system/iplNigaoeManager.o \
					$(BS2_OBJ_PATH)/system/iplNigaoe.o \
					$(BS2_OBJASM_PATH)/system/iplCdbManager.o \
					$(BS2_OBJASM_PATH)/system/iplCdbWrapper.o \
					$(BS2_OBJASM_PATH)/system/iplPlayTimeLog.o \
					$(BS2_OBJASM_PATH)/system/iplNwc24Manager.o \
					$(BS2_OBJ_PATH)/system/iplPointer.o \
					$(BS2_OBJ_PATH)/system/iplPointerCore.o \
					$(BS2_OBJASM_PATH)/system/iplDialogWindow.o \
					$(BS2_OBJASM_PATH)/system/iplHomeButtonMenu.o \
					$(BS2_OBJASM_PATH)/system/iplNandSDWorker.o \
					$(BS2_OBJASM_PATH)/system/iplKeyboard.o \
					$(BS2_OBJASM_PATH)/system/iplErrorHandler.o \
					$(BS2_OBJASM_PATH)/system/iplResetHandler.o \
					$(BS2_OBJASM_PATH)/system/iplWarningHandler.o \
					$(BS2_OBJASM_PATH)/system/iplSocketSetting.o \
					$(BS2_OBJASM_PATH)/system/iplPostmanManager.o \
					$(BS2_OBJASM_PATH)/system/iplSaveDataManager.o \
					$(BS2_OBJASM_PATH)/system/iplChannelRsoThread.o \
					$(BS2_OBJASM_PATH)/system/IplRsoSystem.o \
					$(BS2_OBJASM_PATH)/system/iplCdbBackup.o \
					$(BS2_OBJASM_PATH)/system/odh.o \
					$(BS2_OBJASM_PATH)/system/iplSDVFWorker.o \
					$(BS2_OBJASM_PATH)/system/iplNandWrapper.o \
					$(BS2_OBJ_PATH)/system/main.o \
					$(BS2_OBJASM_PATH)/system/iplBs2Manager.o \
					$(BS2_OBJASM_PATH)/system/TVRC.o \
					$(BS2_OBJASM_PATH)/system/iplTVRCManager.o \
					$(DATA_OUT_ROOT)/ipl_error_eng.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_fra.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_ger.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_ita.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_jpn.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_ned.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_spa.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_kor.bmg.o \
					$(DATA_OUT_ROOT)/ipl_error_chn.bmg.o \
					$(DATA_OUT_ROOT)/fatalDlg.ash.o

DEPENDENCIES += $(SYSTEM_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/system/%.o: $(BS2_SRC_PATH)/system/%.c
	$(call BuildCSources,$(SYSTEM_CCPATH),$(SYSTEM_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/system/%.o: $(BS2_SRC_PATH)/system/%.cpp
	$(call BuildCPPSources,$(SYSTEM_CCPATH),$(SYSTEM_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/system/%.o: $(BS2_ASM_PATH)/system/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/system.a: $(SYSTEM_OBJECTS)
	$(call LinkLibrary,$(SYSTEM_CCPATH),$?,$@)



