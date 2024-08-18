ADDRESS_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
ADDRESS_CCPATH	=	$(CW_GC_30A52)
ADDRESS_OBJECTS	=	$(BS2_OBJASM_PATH)/address/iplAddress.o \
					$(BS2_OBJASM_PATH)/address/iplAddressAddSel.o \
					$(BS2_OBJASM_PATH)/address/iplAddressEdit.o

DEPENDENCIES += $(ADDRESS_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/address/%.o: $(BS2_SRC_PATH)/address/%.cpp
	$(call BuildCPPSources,$(ADDRESS_CCPATH),$(ADDRESS_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/address/%.o: $(BS2_ASM_PATH)/address/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/address.a: $(ADDRESS_OBJECTS)
	$(call LinkLibrary,$(ADDRESS_CCPATH),$^,$@)



