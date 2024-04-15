BS2_COMMON_INC =	$(COMMON_INCLUDES) \
					$(REVOLUTION_EXT_ROOT)/$(INCLUDE_ROOT)

include $(RULES_ROOT)/system/define.mak
include $(RULES_ROOT)/BS2/define.mak
include $(RULES_ROOT)/BS1/define.mak

# for BS1 executable linking
BS1_ELF_NAME = BS1
BS1_ELF_CC = $(CW_GC_30A52)
BS1_ELF_ENTRY_POINT = __BS1_entry
BS1_ELF_ADDRESS = 0x80003400

BS1_ELF_OBJECTS =	$(OBJECT_ROOT)/BS1.o

# for BS2 executable linking

BS2_ELF_NAME = BS2
BS2_ELF_CC = $(CW_GC_30A52)
BS2_ELF_LINKER_FILE = ldscript_ipl2.lcf
BS2_ELF_LDFLAGS = $(COMMON_LDFLAGS)

# the objects!... or libraries
BS2_ELF_OBJECTS =	$(BUILD_ROOT)/system.a \
					$(BUILD_ROOT)/BS2.a \
					$(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)/net.a \
					$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/base.a \
					$(REVOLUTION_SDK_ROOT)/$(BUILD_ROOT)/os.a \
					$(RUNTIME_ROOT)/$(BUILD_ROOT)/Runtime.PPCEABI.H.a


