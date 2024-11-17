SD_CHAN_TITLE_OBJS	=	$(BS2_SPLIT_PATH)/scene/sdChannelTitle/iplSDChannelTitle.o

DEPENDENCIES += 		$(SD_CHAN_TITLE_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelTitle/%.o: $(BS2_SRC_PATH)/scene/sdChannelTitle/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelTitle.a: $(SD_CHAN_TITLE_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



