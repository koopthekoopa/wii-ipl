# mandatory
BS2_SRC_PATH			= $(SOURCE_ROOT)
BS2_ASM_PATH			= $(VER_ASSEMBLY_ROOT)
BS2_BLD_PATH			= $(BUILD_ROOT)/BS2
BS2_OBJ_PATH			= $(BS2_BLD_PATH)/obj
BS2_OBJ_ASM_PATH		= $(BS2_BLD_PATH)/obj/$(ASSEMBLY_ROOT)
BS2_INC_PATHS			= $(COMMON_INCLUDES)

# stuff for linking the elf
BS2_ELF_NAME		= BS2
BS2_ELF_CC			= $(CW_GC_30A52)
BS2_ELF_ENTRY_POINT	= __start
BS2_ELF_ADDRESS		= 0x81330000
BS2_ELF_LINKSCRIPT	= ldscript_ipl2.lcf

# libraries
include $(RULES_ROOT)/BS2Libs/system.mak
include $(RULES_ROOT)/BS2Libs/utility.mak
include $(RULES_ROOT)/BS2Libs/layout.mak
include $(RULES_ROOT)/BS2Libs/BS2.mak

BS2_ELF_LIBRARIES	=	$(BS2_BLD_PATH)/system.a \
						$(BS2_BLD_PATH)/utility.a \
						$(BS2_BLD_PATH)/layout.a \
						$(BS2_BLD_PATH)/BS2.a \
						$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/base.a \
						$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/os.a \
						$(RUNTIME_ROOT)/$(BUILD_ROOT)/Runtime.PPCEABI.H.a

$(BUILD_ROOT)/$(BS2_ELF_NAME).elf: $(BS2_ELF_LIBRARIES)
	$(call LinkElf,$(BS2_ELF_CC),$?,$@,$(BS2_ELF_LINKSCRIPT))

# the target
bs2:	$(BUILD_ROOT)/$(BS2_ELF_NAME).elf

clean_bs2:
	@echo Cleaning BS2...
	@rm -rf $(BS2_BLD_PATH)
	@rm -rf $(BUILD_ROOT)/$(BS2_ELF_NAME).elf
	@rm -rf $(BUILD_ROOT)/$(BS2_ELF_NAME).map


