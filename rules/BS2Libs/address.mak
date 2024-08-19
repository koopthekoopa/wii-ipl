ADDRESS_OBJECTS	=	$(BS2_OBJASM_PATH)/address/iplAddress.o \
					$(BS2_OBJASM_PATH)/address/iplAddressAddSel.o \
					$(BS2_OBJASM_PATH)/address/iplAddressEdit.o

DEPENDENCIES += $(ADDRESS_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/address/%.o: $(BS2_SRC_PATH)/address/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/address/%.o: $(BS2_ASM_PATH)/address/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/address.a: $(ADDRESS_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



