LETTER_WRITER_OBJS    =	$(BS2_SPLIT_PATH)/scene/letterWriter/iplLetterWriter.o

DEPENDENCIES += $(LETTER_WRITER_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/letterWriter/%.o: $(BS2_SRC_PATH)/scene/letterWriter/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/letterWriter.a: $(LETTER_WRITER_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



