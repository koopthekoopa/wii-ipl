# Mandatory
BS2_SRC_PATH			= $(SOURCE_ROOT)
BS2_ASM_PATH			= $(VER_ASSEMBLY_ROOT)
BS2_GBL_BLD_PATH		= $(BUILD_ROOT)/BS2
BS2_BLD_PATH			= $(BS2_GBL_BLD_PATH)/$(VERSION)
BS2_OBJ_PATH			= $(BS2_BLD_PATH)/$(OBJECT_ROOT)
BS2_SPLIT_PATH			= $(SPLIT_OBJ_ROOT)
BS2_INC_PATHS			= $(COMMON_INCLUDES)

# stuff for linking the elf
BS2_ELF_NAME		= BS2.$(VERSION)
BS2_ELF_CC			= $(CW_GC_30A52)
BS2_ELF_ENTRY_POINT	= __start
BS2_ELF_ADDRESS		= 0x81330000

# for BootStage
BS2_IMAGE_SIZE		= 0x3B0000

# for libraries
BS2_CMN_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
BS2_CMN_CCPATH	=	$(CW_GC_30A52)

# libraries
-include $(RULES_ROOT)/BS2Libs/system.mak
-include $(RULES_ROOT)/BS2Libs/utility.mak
-include $(RULES_ROOT)/BS2Libs/layout.mak
-include $(RULES_ROOT)/BS2Libs/sound.mak
-include $(RULES_ROOT)/BS2Libs/iplwww.mak
-include $(RULES_ROOT)/BS2Libs/homebutton.mak
-include $(RULES_ROOT)/BS2Libs/BS2.mak
-include $(RULES_ROOT)/BS2Libs/scene/address.mak
-include $(RULES_ROOT)/BS2Libs/scene/backMenu.mak
-include $(RULES_ROOT)/BS2Libs/scene/board.mak
-include $(RULES_ROOT)/BS2Libs/scene/button.mak
-include $(RULES_ROOT)/BS2Libs/scene/calendar.mak
-include $(RULES_ROOT)/BS2Libs/scene/channelEdit.mak
-include $(RULES_ROOT)/BS2Libs/scene/channelSelect.mak
-include $(RULES_ROOT)/BS2Libs/scene/faceSelect.mak
-include $(RULES_ROOT)/BS2Libs/scene/health.mak
-include $(RULES_ROOT)/BS2Libs/scene/kitayamaTest.mak
-include $(RULES_ROOT)/BS2Libs/scene/letterWriter.mak
-include $(RULES_ROOT)/BS2Libs/scene/limitOver.mak
-include $(RULES_ROOT)/BS2Libs/scene/mailAddSel.mak
-include $(RULES_ROOT)/BS2Libs/scene/saveDataEdit.mak
-include $(RULES_ROOT)/BS2Libs/scene/memoryCard.mak
-include $(RULES_ROOT)/BS2Libs/scene/nakamuraTest.mak
-include $(RULES_ROOT)/BS2Libs/scene/parentalDialog.mak
-include $(RULES_ROOT)/BS2Libs/scene/sceneMisc.mak
-include $(RULES_ROOT)/BS2Libs/scene/sdChannelSelect.mak
-include $(RULES_ROOT)/BS2Libs/scene/setting.mak
-include $(RULES_ROOT)/BS2Libs/scene/sceneSystem.mak
-include $(RULES_ROOT)/BS2Libs/scene/textWriter.mak
-include $(RULES_ROOT)/BS2Libs/bannerSound.mak
-include $(RULES_ROOT)/BS2Libs/keyboard.mak
-include $(RULES_ROOT)/BS2Libs/channelScript.mak

BS2_ELF_LIBRARIES	=	$(BS2_BLD_PATH)/system.a \
						$(BS2_BLD_PATH)/utility.a \
						$(BS2_BLD_PATH)/layout.a \
						$(BS2_BLD_PATH)/sound.a \
						$(BS2_BLD_PATH)/iplwww.a \
						$(BS2_BLD_PATH)/homebutton.a \
						$(BS2_BLD_PATH)/BS2.a \
						$(BS2_BLD_PATH)/scene/address.a \
						$(BS2_BLD_PATH)/scene/backMenu.a \
						$(BS2_BLD_PATH)/scene/board.a \
						$(BS2_BLD_PATH)/scene/button.a \
						$(BS2_BLD_PATH)/scene/calendar.a \
						$(BS2_BLD_PATH)/scene/channelEdit.a \
						$(BS2_BLD_PATH)/scene/channelSelect.a \
						$(BS2_BLD_PATH)/scene/faceSelect.a \
						$(BS2_BLD_PATH)/scene/health.a \
						$(BS2_BLD_PATH)/scene/kitayamaTest.a \
						$(BS2_BLD_PATH)/scene/letterWriter.a \
						$(BS2_BLD_PATH)/scene/limitOver.a \
						$(BS2_BLD_PATH)/scene/mailAddSel.a \
						$(BS2_BLD_PATH)/scene/saveDataEdit.a \
						$(BS2_BLD_PATH)/scene/memoryCard.a \
						$(BS2_BLD_PATH)/scene/nakamuraTest.a \
						$(BS2_BLD_PATH)/scene/parentalDialog.a \
						$(BS2_BLD_PATH)/scene/sceneMisc.a \
						$(BS2_BLD_PATH)/scene/sdChannelSelect.a \
						$(BS2_BLD_PATH)/scene/sceneSystem.a \
						$(BS2_BLD_PATH)/scene/setting.a \
						$(BS2_BLD_PATH)/scene/textWriter.a \
						$(BS2_BLD_PATH)/bannerSound.a \
						$(BS2_BLD_PATH)/keyboard.a \
						$(BS2_BLD_PATH)/channelScript.a \
						$(EZITEXT_ROOT)/$(BUILD_ROOT)/zi8_ezitext.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/cdb.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/ncd.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/net.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/nhttp.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/nwc24.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/so.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/ssl.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/vf.a \
						$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/wd.a \
						$(RVLFACELIB_ROOT)/$(BUILD_ROOT)/RVLFaceLib.a \
						$(TMCJPEG_ROOT)/$(BUILD_ROOT)/tmccjpeg.a \
						$(NW4R_ROOT)/$(BUILD_ROOT)/libnw4r_snd.a \
						$(NW4R_ROOT)/$(BUILD_ROOT)/libnw4r_ut.a \
						$(NW4R_ROOT)/$(BUILD_ROOT)/libnw4r_db.a \
						$(NW4R_ROOT)/$(BUILD_ROOT)/libnw4r_math.a \
						$(NW4R_ROOT)/$(BUILD_ROOT)/libnw4r_lyt.a \
						$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/base.a \
						$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/os.a \
						$(RUNTIME_ROOT)/$(BUILD_ROOT)/Runtime.PPCEABI.H.a

$(BUILD_ROOT)/BS2/$(BS2_ELF_NAME).elf: $(SPLIT_ROOT) $(BS2_ELF_LIBRARIES)
	$(call LinkElf,$(BS2_ELF_CC),$(BS2_ELF_LIBRARIES),$@,$(LINKER_FILE))

# the target
bs2:	$(BUILD_ROOT)/BS2/$(BS2_ELF_NAME).elf

clean_bs2:
	@echo Cleaning BS2...
	@rm -rf $(BS2_BLD_PATH)
	@rm -rf $(BS2_GBL_BLD_PATH)/$(BS2_ELF_NAME).elf
	@rm -rf $(BS2_GBL_BLD_PATH)/$(BS2_ELF_NAME).map


