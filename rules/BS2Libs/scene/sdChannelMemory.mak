SD_CHAN_MEM_OBJS	=	$(BS2_SPLIT_PATH)/scene/sdChannelMemory/iplSDMemory.o

DEPENDENCIES += 		$(SD_CHAN_MEM_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelMemory/%.o: $(BS2_SRC_PATH)/scene/sdChannelMemory/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelMemory.a: $(SD_CHAN_MEM_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



