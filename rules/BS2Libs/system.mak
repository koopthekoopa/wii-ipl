SYSTEM_OBJECTS	=	$(BS2_SPLIT_PATH)/system/enctable_stuff.o \
					$(BS2_SPLIT_PATH)/system/rvl_dec.o \
					$(BS2_OBJ_PATH)/system/RIPL_BoardRecord.o \
					$(BS2_SPLIT_PATH)/system/iplSystem.o \
					$(BS2_SPLIT_PATH)/system/iplController.o \
					$(BS2_SPLIT_PATH)/system/iplChannelManager.o \
					$(BS2_SPLIT_PATH)/system/iplChannelScriptManager.o \
					$(BS2_SPLIT_PATH)/system/iplNand.o \
					$(BS2_SPLIT_PATH)/system/iplNandShared.o \
					$(BS2_OBJ_PATH)/system/iplNandMeta.o \
					$(BS2_SPLIT_PATH)/system/iplNandManager.o \
					$(BS2_OBJ_PATH)/system/iplNandWall.o \
					$(BS2_SPLIT_PATH)/system/iplFramework.o \
					$(BS2_SPLIT_PATH)/system/iplException.o \
					$(BS2_OBJ_PATH)/system/iplMessage.o \
					$(BS2_OBJ_PATH)/system/iplMessageManager.o \
					$(BS2_OBJ_PATH)/system/iplNigaoeManager.o \
					$(BS2_OBJ_PATH)/system/iplNigaoe.o \
					$(BS2_SPLIT_PATH)/system/iplCdbManager.o \
					$(BS2_SPLIT_PATH)/system/iplCdbWrapper.o \
					$(BS2_SPLIT_PATH)/system/iplPlayTimeLog.o \
					$(BS2_SPLIT_PATH)/system/iplNwc24Manager.o \
					$(BS2_OBJ_PATH)/system/iplPointer.o \
					$(BS2_OBJ_PATH)/system/iplPointerCore.o \
					$(BS2_SPLIT_PATH)/system/iplDialogWindow.o \
					$(BS2_SPLIT_PATH)/system/iplHomeButtonMenu.o \
					$(BS2_SPLIT_PATH)/system/iplNandSDWorker.o \
					$(BS2_SPLIT_PATH)/system/iplKeyboard.o \
					$(BS2_OBJ_PATH)/system/iplErrorHandler.o \
					$(BS2_SPLIT_PATH)/system/iplResetHandler.o \
					$(BS2_OBJ_PATH)/system/iplWarningHandler.o \
					$(BS2_SPLIT_PATH)/system/iplSocketSetting.o \
					$(BS2_SPLIT_PATH)/system/iplPostmanManager.o \
					$(BS2_SPLIT_PATH)/system/iplSaveDataManager.o \
					$(BS2_OBJ_PATH)/system/iplChannelRsoThread.o \
					$(BS2_SPLIT_PATH)/system/RsoSystem.o \
					$(BS2_SPLIT_PATH)/system/iplCdbBackup.o \
					$(BS2_SPLIT_PATH)/system/odh.o \
					$(BS2_SPLIT_PATH)/system/iplSDVFWorker.o \
					$(BS2_OBJ_PATH)/system/iplNandWrapper.o \
					$(BS2_OBJ_PATH)/system/main.o \
					$(BS2_OBJ_PATH)/system/iplBS2Manager.o \
					$(BS2_SPLIT_PATH)/system/TVRC.o \
					$(BS2_SPLIT_PATH)/system/iplTVRCManager.o \
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

ALL_OBJECTS += $(SYSTEM_OBJECTS)

$(BS2_OBJ_PATH)/system/%.o: $(BS2_SRC_PATH)/system/%.c
	$(call BuildCSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/system/%.o: $(BS2_SRC_PATH)/system/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/system.a: $(SYSTEM_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



