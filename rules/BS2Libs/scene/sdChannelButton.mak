SD_CHAN_BUTTON_OBJS	=	$(BS2_SPLIT_PATH)/scene/sdChannelButton/iplSDButton.o \
						$(BS2_SPLIT_PATH)/scene/sdChannelButton/iplSDArrow.o \
						$(BS2_SPLIT_PATH)/scene/sdChannelButton/iplSDMenuButton.o 

DEPENDENCIES +=			$(SD_CHAN_BUTTON_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelButton/%.o: $(BS2_SRC_PATH)/scene/sdChannelButton/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelButton.a: $(SD_CHAN_BUTTON_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



