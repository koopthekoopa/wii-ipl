CHANNEL_SELECT_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/channelSelect/iplCalendar.o \
                            $(BS2_OBJASM_PATH)/scene/channelSelect/iplDate.o

DEPENDENCIES += $(CHANNEL_SELECT_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/channelSelect/%.o: $(BS2_SRC_PATH)/scene/channelSelect/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/channelSelect/%.o: $(BS2_ASM_PATH)/scene/channelSelect/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/channelSelect.a: $(CHANNEL_SELECT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)


