SOUND_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
SOUND_CCPATH	=	$(CW_GC_30A52)
SOUND_OBJECTS	=	$(BS2_OBJASM_PATH)/sound/iplSound.o

$(BS2_OBJ_PATH)/sound/%.o: $(BS2_SRC_PATH)/sound/%.c
	$(call BuildCSources,$(SOUND_CCPATH),$(SOUND_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/sound/%.o: $(BS2_SRC_PATH)/sound/%.cpp
	$(call BuildCPPSources,$(SOUND_CCPATH),$(SOUND_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/sound/%.o: $(BS2_ASM_PATH)/sound/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/sound.a: $(SOUND_OBJECTS)
	$(call LinkLibrary,$(SOUND_CCPATH),$?,$@)



