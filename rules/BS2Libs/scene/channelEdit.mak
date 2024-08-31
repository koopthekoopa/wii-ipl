CHANNEL_EDIT_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/channelEdit/iplCalendar.o \
                            $(BS2_OBJASM_PATH)/scene/channelEdit/iplDate.o

DEPENDENCIES += $(CHANNEL_EDIT_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/channelEdit/%.o: $(BS2_SRC_PATH)/scene/channelEdit/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/channelEdit/%.o: $(BS2_ASM_PATH)/scene/channelEdit/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/channelEdit.a: $(CHANNEL_EDIT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



