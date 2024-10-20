SOUND_OBJECTS	=	$(BS2_SPLIT_PATH)/sound/iplSound.o

DEPENDENCIES += $(SOUND_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/sound/%.o: $(BS2_SRC_PATH)/sound/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/sound.a: $(SOUND_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



