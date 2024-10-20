TEXT_WRITER_OBJS	=	$(BS2_SPLIT_PATH)/scene/textWriter/iplTextWriter.o

DEPENDENCIES += 		$(TEXT_WRITER_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/textWriter/%.o: $(BS2_SRC_PATH)/scene/textWriter/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/textWriter.a: $(TEXT_WRITER_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



