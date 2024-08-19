BUTTON_OBJECTS	=	$(BS2_OBJASM_PATH)/button/iplUrlProcessor.o \
					$(BS2_OBJASM_PATH)/button/iplLetterButton.o \
					$(BS2_OBJASM_PATH)/button/iplButton.o \
					$(BS2_OBJASM_PATH)/button/iplArrow.o

DEPENDENCIES += $(BUTTON_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/button/%.o: $(BS2_SRC_PATH)/button/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/button/%.o: $(BS2_ASM_PATH)/button/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/button.a: $(BUTTON_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



