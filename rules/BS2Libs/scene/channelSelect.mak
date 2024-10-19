CHANNEL_SELECT_OBJECTS    =	$(BS2_SPLIT_PATH)/scene/channelSelect/iplChannelSelect.o \
                            $(BS2_SPLIT_PATH)/scene/channelSelect/iplClock.o \
                            $(BS2_SPLIT_PATH)/scene/channelSelect/iplChannelObj.o \
                            $(BS2_SPLIT_PATH)/scene/channelSelect/iplChannelTitle.o

ALL_OBJECTS += $(CHANNEL_SELECT_OBJECTS)

$(BS2_OBJ_PATH)/scene/channelSelect/%.o: $(BS2_SRC_PATH)/scene/channelSelect/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/channelSelect.a: $(CHANNEL_SELECT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



