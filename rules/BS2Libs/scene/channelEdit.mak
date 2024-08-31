CHANNEL_EDIT_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/channelEdit/iplChannelEdit.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplChanAppBase.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplChanAppBox.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplChanAppEdit.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplAnmController.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplNandSDCardManager.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplThumbnail.o

DEPENDENCIES += $(CHANNEL_EDIT_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/channelEdit/%.o: $(BS2_SRC_PATH)/scene/channelEdit/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/channelEdit/%.o: $(BS2_ASM_PATH)/scene/channelEdit/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/channelEdit.a: $(CHANNEL_EDIT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



