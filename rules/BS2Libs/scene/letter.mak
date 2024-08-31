LETTER_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/letter/iplLetterWriter.o

DEPENDENCIES += $(LETTER_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/letter/%.o: $(BS2_SRC_PATH)/scene/letter/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/letter/%.o: $(BS2_ASM_PATH)/scene/letter/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/letter.a: $(LETTER_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



