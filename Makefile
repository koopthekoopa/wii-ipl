DEPENDENCIES = 

# IPL executable defines
VERSION_FULL	:= 4.3U
VERSION			:= $(subst .,,$(VERSION_FULL))
IPL_INFILE		= base.$(VERSION).app
IPL_OUTFILE		= ipl.$(VERSION).app

# Directory defines (must be here)
BUILD_ROOT				= build/$(VERSION)
CONFIG_ROOT				= config/$(VERSION)
DATA_ROOT				= data/$(VERSION)
DATA_OUT_ROOT			= data/$(VERSION)/build
ASSEMBLY_ROOT			= asm
VER_ASSEMBLY_ROOT		= $(ASSEMBLY_ROOT)/$(VERSION)
SOURCE_ROOT				= src
INCLUDE_ROOT			= include
OBJECT_ROOT				= obj
RULES_ROOT				= rules
TOOLS_ROOT				= tools
LIBRARIES_ROOT			= libs

# Library path defines (must be here)
RUNTIME_ROOT		= $(LIBRARIES_ROOT)/Runtime
METROTRK_ROOT		= $(LIBRARIES_ROOT)/MetroTRK
MSL_ROOT			= $(LIBRARIES_ROOT)/MSL
REVOLUTION_SDK_ROOT	= $(LIBRARIES_ROOT)/RVL_SDK
REVOLUTION_EXT_ROOT	= $(LIBRARIES_ROOT)/RevoEX
NW4R_ROOT			= $(LIBRARIES_ROOT)/NW4R
EGG_ROOT			= $(LIBRARIES_ROOT)/EGG
RVLFACELIB_ROOT		= $(LIBRARIES_ROOT)/RVLFaceLib

# Checks
ifneq ($(VERSION),43U)
$(error Only Wii Menu 4.3U is currently supported. Sorry)
endif

ifeq (,$(wildcard $(IPL_INFILE)))
$(error Obtain the Wii Menu's Executable file, place it in this directory and rename it to $(IPL_INFILE))
endif

# Include the main definitions
-include $(RULES_ROOT)/global/define.mak
-include $(RULES_ROOT)/global/build.mak

.PHONY: prepare clean_data

### Build
all: Runtime RVL_SDK RevoEX bs1 bs2 build/$(IPL_OUTFILE)
	@echo Build complete!

# Link
build/$(IPL_OUTFILE): bs1 bs2
	@echo Converting ELF files to $@...
	@$(TOOLS_ROOT)/$(ELF2BS) -b $(IPL_INFILE) -bs1 $(BUILD_ROOT)/$(BS1_ELF_NAME).elf -bs2 $(BUILD_ROOT)/$(BS2_ELF_NAME).elf -bs2_size $(BS2_IMAGE_SIZE) -output $@
	@echo =============================================================================
	@echo SHA1 Sum should fail here as this does not compile a matching executable yet.
	@echo =============================================================================
	@sha1sum -c $(CONFIG_ROOT)/sha1.txt

# Clean
clean: clean_Runtime clean_RVL_SDK clean_RevoEX clean_bs1 clean_bs2 clean_data

# Prepare
prepare: PrepareDecomp

### Prepare rules
-include $(RULES_ROOT)/Prepare.mak

# Library rules
-include $(RUNTIME_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak

# App rules
-include $(RULES_ROOT)/BS1rules.mak
-include $(RULES_ROOT)/BS2rules.mak

# Inlcude dependencies
DEPENDENCIES += $(MAKECMDGOALS:.o=.d)
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),prepare)
-include $(DEPENDENCIES:.d=.unix.d)
endif
endif


# Data rules (auto generated by extract_bin.py)
ifneq (,$(wildcard $(DATA_ROOT)/$(DEFRULES).mak))
-include $(DATA_ROOT)/$(DEFRULES).mak
endif


