SYSTEM_LIBNAME =	system
SYSTEM_CFLAGS =		-O4,s -ipa file $(COMMON_CCFLAGS)
SYSTEM_INCLUDES =	$(BS2_COMMON_INC)
SYSTEM_CCPATH =		$(CW_GC_30A52)
SYSTEM_SOURCES =	$(VERSION)/rvl_dec.s \
					RIPL_BoardRecord.c \
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
					$(VERSION)/iplNandSDWorker.s