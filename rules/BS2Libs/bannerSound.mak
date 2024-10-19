BANNER_SOUND_OBJS	=	$(BS2_SPLIT_PATH)/bannerSound/AudioWavePlayer.o \
						$(BS2_SPLIT_PATH)/bannerSound/AxAdpcmPlayer.o \
						$(BS2_SPLIT_PATH)/bannerSound/BannerSoundPlayer.o \
						$(BS2_SPLIT_PATH)/bannerSound/AudioWaveUtility.o

ALL_OBJECTS += 		$(BANNER_SOUND_OBJS)

$(BS2_OBJ_PATH)/bannerSound/%.o: $(BS2_SRC_PATH)/bannerSound/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/bannerSound.a: $(BANNER_SOUND_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



