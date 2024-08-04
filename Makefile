VERSION		:= 43U
IPL_INFILE	= base.$(VERSION).app
IPL_OUTFILE	= ipl.$(VERSION).app

ifneq ($(VERSION),43U)
$(error Only Wii Menu 4.3U is currently supported. Sorry)
endif

ifeq ("$(wildcard $(IPL_INFILE))","")
$(error You must obtain the Wii Menu's Executable file and place it in this directory and rename it to $(IPL_INFILE))
endif

### Directory defines
BUILD_ROOT				= build/$(VERSION)
CONFIG_ROOT				= config/$(VERSION)
ASSEMBLY_ROOT			= asm
VER_ASSEMBLY_ROOT		= $(ASSEMBLY_ROOT)/$(VERSION)
SOURCE_ROOT				= src
INCLUDE_ROOT			= include
OBJECT_ROOT				= $(BUILD_ROOT)/obj
RULES_ROOT				= rules
TOOLS_ROOT				= tools
LIBRARIES_ROOT			= libs

### Library path defines
RUNTIME_ROOT		= $(LIBRARIES_ROOT)/Runtime
METROTRK_ROOT		= $(LIBRARIES_ROOT)/MetroTRK
MSL_ROOT			= $(LIBRARIES_ROOT)/MSL
REVOLUTION_SDK_ROOT	= $(LIBRARIES_ROOT)/RVL_SDK
REVOLUTION_EXT_ROOT	= $(LIBRARIES_ROOT)/RevoEX
NW4R_ROOT			= $(LIBRARIES_ROOT)/NW4R
EGG_ROOT			= $(LIBRARIES_ROOT)/EGG
RVLFACELIB_ROOT		= $(LIBRARIES_ROOT)/RVLFaceLib

-include $(RULES_ROOT)/global/define.mak
-include $(RULES_ROOT)/global/build.mak

### Main thing
all: Runtime RVL_SDK RevoEX bs1 bs2 build/$(IPL_OUTFILE)
	@echo Build complete!

clean: clean_Runtime clean_RVL_SDK clean_RevoEX clean_bs1 clean_bs2

prepare: PrepareDecomp

build/$(IPL_OUTFILE): bs1 bs2
	@echo Converting ELF files to $@...
	@$(TOOLS_ROOT)/$(ELF2BS) -b $(IPL_INFILE) -bs1 $(BUILD_ROOT)/$(BS1_ELF_NAME).elf -bs2 $(BUILD_ROOT)/$(BS2_ELF_NAME).elf -bs2_size $(BS2_IMAGE_SIZE) -output $@
	@echo == SHA1 Sum should fail here as this does not compile a matching executable yet. ==
	@sha1sum -c sums/ipl.$(VERSION).sha1
	


### Build library files
-include $(RULES_ROOT)/Prepare.mak

-include $(RUNTIME_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak

-include $(RULES_ROOT)/BS1rules.mak
-include $(RULES_ROOT)/BS2rules.mak


