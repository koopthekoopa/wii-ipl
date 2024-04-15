include $(RULES_ROOT)/system/build.mak
include $(RULES_ROOT)/BS2/build.mak
include $(RULES_ROOT)/BS1/build.mak

BS1_ELF_OUTPUT = $(BUILD_ROOT)/$(BS1_ELF_NAME).out.elf
BS2_ELF_OUTPUT = $(BUILD_ROOT)/$(BS2_ELF_NAME).out.elf

ipl: $(SYSTEM_BIN_OUT) $(BS2_BIN_OUT) $(BS1_OBJ) $(BS1_ELF_OUTPUT) $(BS2_ELF_OUTPUT)

clean_ipl:
	@echo Cleaning IPL...
	@rm -rf $(BUILD_ROOT)

## Linking the BS1 exectuable
$(BS1_ELF_OUTPUT): $(BS1_ELF_OBJECTS)
	$(call LinkSmallElf,$(BS1_ELF_CC),$(BS1_ELF_OBJECTS),$@,$(BS1_ELF_ADDRESS))

## Linking the BS2 exectuable
$(BS2_ELF_OUTPUT): $(BS2_ELF_OBJECTS)
	$(call LinkElf,$(BS2_ELF_CC),$(BS2_ELF_OBJECTS),$@,$(BS2_ELF_LINKER_FILE))


