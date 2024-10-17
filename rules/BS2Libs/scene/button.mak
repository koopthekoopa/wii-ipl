BUTTON_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/button/iplUrlProcessor.o \
					$(BS2_OBJASM_PATH)/scene/button/iplLetterButton.o \
					$(BS2_OBJASM_PATH)/scene/button/iplButton.o \
					$(BS2_OBJASM_PATH)/scene/button/iplArrow.o

ALL_OBJECTS += $(BUTTON_OBJECTS)

$(BS2_OBJ_PATH)/scene/button/%.o: $(BS2_SRC_PATH)/scene/button/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/button/%.o: $(BS2_ASM_PATH)/scene/button/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/button.a: $(BUTTON_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



