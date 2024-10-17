MAIL_ADDSEL_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/mailAddSel/iplMailAddressSelect.o

ALL_OBJECTS += $(MAIL_ADDSEL_OBJECTS)

$(BS2_OBJ_PATH)/scene/mailAddSel/%.o: $(BS2_SRC_PATH)/scene/mailAddSel/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/mailAddSel/%.o: $(BS2_ASM_PATH)/scene/mailAddSel/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/mailAddSel.a: $(MAIL_ADDSEL_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



