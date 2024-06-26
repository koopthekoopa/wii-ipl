# mandatory
BS1_BLD_PATH		= $(BUILD_ROOT)/BS1
BS1_OBJ_PATH		= $(BS1_BLD_PATH)/obj

# stuff for linking the elf
BS1_ELF_NAME		= BS1
BS1_ELF_CC			= $(CW_GC_30A3)
BS1_ELF_ADDRESS		= 0x80003400

# only one little object
BS1_OBJECTS	= BS1.o

$(BS1_OBJ_PATH)/%.o: $(ASSEMBLY_ROOT)/%.s
	$(call BuildMWCCASMSources,$(INCLUDE_ROOT),$(BS1_ELF_CC))
$(BUILD_ROOT)/$(BS1_ELF_NAME).elf: $(foreach OBJ,$(BS1_OBJECTS:.s=.o),$(BS1_OBJ_PATH)/$(OBJ))
	$(call LinkSmallElf,$(BS1_ELF_CC),$?,$@,$(BS1_ELF_ADDRESS))

bs1:	$(BUILD_ROOT)/$(BS1_ELF_NAME).elf

clean_bs1:
	@echo Cleaning BS1...
	@rm -rf $(BS1_BLD_PATH)
	@rm -rf $(BUILD_ROOT)/$(BS1_ELF_NAME).elf
	@rm -rf $(BUILD_ROOT)/$(BS1_ELF_NAME).map


