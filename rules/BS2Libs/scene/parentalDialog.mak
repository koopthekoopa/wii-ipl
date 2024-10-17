PARENTAL_DLG_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/parentalDialog/iplParentalDialog.o

ALL_OBJECTS += $(PARENTAL_DLG_OBJECTS)

$(BS2_OBJ_PATH)/scene/parentalDialog/%.o: $(BS2_SRC_PATH)/scene/parentalDialog/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/parentalDialog/%.o: $(BS2_ASM_PATH)/scene/parentalDialog/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/parentalDialog.a: $(PARENTAL_DLG_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



