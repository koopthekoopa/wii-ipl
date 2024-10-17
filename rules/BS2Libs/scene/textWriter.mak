TEXT_WRITER_OBJS	=	$(BS2_OBJASM_PATH)/scene/textWriter/iplTextWriter.o

ALL_OBJECTS += 		$(TEXT_WRITER_OBJS)

$(BS2_OBJ_PATH)/scene/textWriter/%.o: $(BS2_SRC_PATH)/scene/textWriter/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/textWriter/%.o: $(BS2_ASM_PATH)/scene/textWriter/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/textWriter.a: $(TEXT_WRITER_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



