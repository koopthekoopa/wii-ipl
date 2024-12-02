DEPENDENCIES = 

# IPL executable defines
VERSION		:= 43U

IPL_INFILE	= base.$(VERSION).app
IPL_DTKFILE	= base.$(VERSION).dtk
IPL_OUTFILE	= ipl.$(VERSION).app

# Directory defines (must be here)
BUILD_ROOT				= build
BUILD_INPUT_ROOT		= $(BUILD_ROOT)/inputs
CONFIG_ROOT				= config/$(VERSION)
DATA_ROOT				= data/$(VERSION)
DATA_OUT_ROOT			= $(DATA_ROOT)/build
ASSEMBLY_ROOT			= asm
SOURCE_ROOT				= src
INCLUDE_ROOT			= include
OBJECT_ROOT				= obj
RULES_ROOT				= rules
TOOLS_ROOT				= tools
LIBRARIES_ROOT			= libs

SPLIT_UNITS				= $(CONFIG_ROOT)/splits.txt
SPLIT_SYMBOLS			= $(CONFIG_ROOT)/symbols.txt
SPLIT_FILE				= $(CONFIG_ROOT)/dtkconfig.yml
SPLIT_ROOT				= $(BUILD_ROOT)/split_$(VERSION)
SPLIT_OBJ_ROOT			= $(SPLIT_ROOT)/obj
SPLIT_LIBOBJ_ROOT		= $(SPLIT_OBJ_ROOT)/libs
LINKER_FILE				= $(SPLIT_ROOT)/ldscript.lcf

# Library path defines (must be here)
RUNTIME_ROOT		= $(LIBRARIES_ROOT)/Runtime
METROTRK_ROOT		= $(LIBRARIES_ROOT)/MetroTRK
MSL_ROOT			= $(LIBRARIES_ROOT)/MSL
REVOLUTION_SDK_ROOT	= $(LIBRARIES_ROOT)/RVL_SDK
REVOLUTION_EXT_ROOT	= $(LIBRARIES_ROOT)/RevoEX
NW4R_ROOT			= $(LIBRARIES_ROOT)/NW4R
EGG_ROOT			= $(LIBRARIES_ROOT)/EGG
RVLFACELIB_ROOT		= $(LIBRARIES_ROOT)/RVLFaceLib
EZITEXT_ROOT		= $(LIBRARIES_ROOT)/RVLMiddleware/eZiText
JSATOK_ROOT			= $(LIBRARIES_ROOT)/RVLMiddleware/ATOKDict
TMCJPEG_ROOT		= $(LIBRARIES_ROOT)/RVLMiddleware/TMC_JPEG

# Checks

ifeq (,$(wildcard $(IPL_INFILE)))
$(error Obtain the Wii Menu's Executable file, place it in this directory and rename it to $(IPL_INFILE))
endif

# Include the main definitions
-include $(RULES_ROOT)/global/define.mak
-include $(RULES_ROOT)/global/build.mak

.PHONY: prepare all clean

.NOTPARALLEL: $(BUILD_ROOT)/$(IPL_OUTFILE)

# Build
all: $(SPLIT_ROOT) $(BUILD_ROOT)/$(IPL_OUTFILE)
	@echo Build complete!

# Split
$(SPLIT_ROOT): $(SPLIT_FILE) $(SPLIT_UNITS) $(SPLIT_SYMBOLS)
	@echo Splitting IPL executable...
	@mkdir -p $(BUILD_INPUT_ROOT)
	@$(TOOLS_ROOT)/$(IPL2DTK) $(IPL_INFILE) $(BUILD_INPUT_ROOT)/$(IPL_DTKFILE)
	@$(DTK) dol split $(SPLIT_FILE) $(SPLIT_ROOT)

# Link
$(BUILD_ROOT)/$(IPL_OUTFILE): $(SPLIT_ROOT) bs1 bs2
	@echo Converting ELF files to $@...
	@$(TOOLS_ROOT)/$(ELF2BS) -b $(IPL_INFILE) -bs1 $(BS1_BLD_PATH)/$(BS1_ELF_NAME).elf -bs2 $(BS2_GBL_BLD_PATH)/$(BS2_ELF_NAME).elf -bs2_size $(BS2_IMAGE_SIZE) -output $@
	@echo ========================================================================
	@echo SHA1 Sum should fail here as it does not link a matching executable yet.
	@echo ========================================================================
	@$(SHA1) -c $(CONFIG_ROOT)/sha1.txt

# Clean
clean: clean_Runtime clean_RVL_SDK clean_RevoEX clean_NW4R clean_RFL clean_eZiText clean_TMCJpeg clean_bs1 clean_bs2 clean_data clean_ATOK
	@rm -rf $(SPLIT_ROOT)
	@rm -rf $(BUILD_ROOT)/$(IPL_OUTFILE)

# Prepare
prepare: PrepareDecomp

### Prepare rules
-include $(RULES_ROOT)/Prepare.mak

# Library rules
-include $(RUNTIME_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(NW4R_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(RVLFACELIB_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(EZITEXT_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(JSATOK_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(TMCJPEG_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak

# App rules
-include $(RULES_ROOT)/BS1rules.mak
-include $(RULES_ROOT)/BS2rules.mak

# Inlcude dependencies
DEPENDENCIES += $(MAKECMDGOALS:.o=.d)
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),prepare)
-include $(DEPENDENCIES)
endif
endif

# Data rules (auto generated by extract_bin.py)
ifneq (,$(wildcard $(DATA_ROOT)/$(DEFRULES).mak))
-include $(DATA_ROOT)/$(DEFRULES).mak
endif


