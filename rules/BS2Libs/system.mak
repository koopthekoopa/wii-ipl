SYSTEM_LIBNAME	=	system
SYSTEM_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
SYSTEM_CCPATH	=	$(CW_GC_30A52)
SYSTEM_OBJECTS	=	$(ASSEMBLY_ROOT)/rvl_dec.o \
					RIPL_BoardRecord.o \
					$(ASSEMBLY_ROOT)/iplSystem.o \
					$(ASSEMBLY_ROOT)/iplController.o \
					$(ASSEMBLY_ROOT)/iplChannelManager.o \
					$(ASSEMBLY_ROOT)/iplChannelScriptManager.o \
					$(ASSEMBLY_ROOT)/iplFramework.o \
					$(ASSEMBLY_ROOT)/iplException.o \
					$(ASSEMBLY_ROOT)/iplMessage.o \
					$(ASSEMBLY_ROOT)/iplMessageManager.o \
					$(ASSEMBLY_ROOT)/iplNigaoeManager.o \
					iplNigaoe.o \
					$(ASSEMBLY_ROOT)/iplCdbManager.o \
					$(ASSEMBLY_ROOT)/iplCdbWrapper.o \
					$(ASSEMBLY_ROOT)/iplPlayTimeLog.o \
					$(ASSEMBLY_ROOT)/iplNwc24Manager.o \
					iplPointer.o \
					iplPointerCore.o \
					$(ASSEMBLY_ROOT)/iplDialogWindow.o \
					$(ASSEMBLY_ROOT)/iplHomeButtonMenu.o \
					$(ASSEMBLY_ROOT)/iplNandSDWorker.o \
					$(ASSEMBLY_ROOT)/iplKeyboard.o \
					$(ASSEMBLY_ROOT)/iplErrorHandler.o \
					$(ASSEMBLY_ROOT)/iplResetHandler.o \
					$(ASSEMBLY_ROOT)/iplWarningHandler.o \
					$(ASSEMBLY_ROOT)/iplSocketSetting.o \
					$(ASSEMBLY_ROOT)/iplPostmanManager.o \
					$(ASSEMBLY_ROOT)/iplSaveDataManager.o \
					$(ASSEMBLY_ROOT)/iplChannelRsoThread.o \
					$(ASSEMBLY_ROOT)/IplRsoSystem.o \
					$(ASSEMBLY_ROOT)/iplCdbBackup.o \
					$(ASSEMBLY_ROOT)/odh.o \
					$(ASSEMBLY_ROOT)/iplSDVFWorker.o \
					$(ASSEMBLY_ROOT)/iplNandWrapper.o \
					main.o \
					$(ASSEMBLY_ROOT)/iplBs2Manager.o \
					$(ASSEMBLY_ROOT)/TVRC.o \
					$(ASSEMBLY_ROOT)/iplTVRCManager.o \
					$(ASSEMBLY_ROOT)/data/iplEngErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplFraErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplGerErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplItaErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplJpnErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplDutErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplSpaErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplKorErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/iplChnErrorBmg.o \
					$(ASSEMBLY_ROOT)/data/UnkErrorAshFile.o

$(BS2_OBJ_PATH)/$(SYSTEM_LIBNAME)/%.o: $(BS2_SRC_PATH)/$(SYSTEM_LIBNAME)/%.c
	$(call BuildCSources,$(SYSTEM_CCPATH),$(SYSTEM_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/$(SYSTEM_LIBNAME)/%.o: $(BS2_SRC_PATH)/$(SYSTEM_LIBNAME)/%.cpp
	$(call BuildCPPSources,$(SYSTEM_CCPATH),$(SYSTEM_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/$(SYSTEM_LIBNAME)/$(ASSEMBLY_ROOT)/%.o: $(BS2_ASM_PATH)/$(SYSTEM_LIBNAME)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/$(SYSTEM_LIBNAME).a: $(foreach OBJ,$(SYSTEM_OBJECTS),$(BS2_OBJ_PATH)/$(SYSTEM_LIBNAME)/$(OBJ))
	$(call LinkLibrary,$(SYSTEM_CCPATH),$?,$@)



