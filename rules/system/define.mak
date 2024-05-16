SYSTEM_LIBNAME =	system
SYSTEM_CFLAGS =		-O4,s -ipa file $(COMMON_CCFLAGS)
SYSTEM_INCLUDES =	$(BS2_COMMON_INC)
SYSTEM_CCPATH =		$(CW_GC_30A52)
SYSTEM_SOURCES =	$(VERSION)/rvl_dec.s \
					$(VERSION)/RIPL_BoardRecord.s \
					$(VERSION)/iplSystem.s \
					$(VERSION)/iplController.s \
					$(VERSION)/iplChannelManager.s \
					$(VERSION)/iplChannelScriptManager.s \
					$(VERSION)/iplFramework.s \
					$(VERSION)/iplException.s \
					$(VERSION)/iplMessage.s \
					$(VERSION)/iplMessageManager.s \
					$(VERSION)/iplNigaoeManager.s \
					$(VERSION)/iplNigaoe.s \
					$(VERSION)/iplCdbManager.s \
					$(VERSION)/iplCdbWrapper.s \
					$(VERSION)/iplPlayTimeLog.s \
					$(VERSION)/iplNwc24Manager.s \
					$(VERSION)/iplPointer.s \
					$(VERSION)/iplPointerCore.s \
					$(VERSION)/iplDialogWindow.s \
					$(VERSION)/iplHomeButtonMenu.s \
					$(VERSION)/iplNandSDWorker.s \
					$(VERSION)/iplKeyboard.s \
					$(VERSION)/iplErrorHandler.s \
					$(VERSION)/iplResetHandler.s \
					$(VERSION)/iplWarningHandler.s \
					$(VERSION)/iplSocketSetting.s \
					$(VERSION)/iplPostmanManager.s \
					$(VERSION)/iplSaveDataManager.s \
					$(VERSION)/iplChannelRsoThread.s \
					$(VERSION)/iplRsoManager.s \
					$(VERSION)/iplCdbBackup.s \
					$(VERSION)/odh.s