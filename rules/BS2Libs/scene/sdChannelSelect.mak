SD_CHAN_EL_OBJS	=	$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDChannelSelect.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDChannelObj.o

DEPENDENCIES += 	$(SD_CHAN_EL_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelSelect/%.o: $(BS2_SRC_PATH)/scene/sdChannelSelect/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelSelect.a: $(SD_CHAN_EL_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



