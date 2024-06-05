VERSION		:= 43U
IPL_INFILE	= base.$(VERSION).app
ifneq ($(VERSION),43U)
$(error Only Wii Menu 4.3U is currently supported)
endif

ifneq ($(OS),Windows_NT)
EXEC	= wine
PY		= python
else
EXEC	=
PY		= python3
endif

### Directory defines
BUILD_ROOT				= build/$(VERSION)
CONFIG_ROOT				= config/$(VERSION)
OBJECT_ROOT				= $(BUILD_ROOT)/obj
ASSEMBLY_ROOT			= asm
VER_ASSEMBLY_ROOT		= $(ASSEMBLY_ROOT)/$(VERSION)
SOURCE_ROOT				= src
INCLUDE_ROOT			= include
RULES_ROOT				= rules
TOOLS_ROOT				= tools
LIBRARIES_ROOT			= libs

### Library path defines
RUNTIME_ROOT		= $(LIBRARIES_ROOT)/Runtime
METROTRK_ROOT		= $(LIBRARIES_ROOT)/MetroTRK
MSL_ROOT			= $(LIBRARIES_ROOT)/MSL
REVOLUTION_SDK_ROOT	= $(LIBRARIES_ROOT)/RVL_SDK
REVOLUTION_EXT_ROOT	= $(LIBRARIES_ROOT)/RevoEX

include $(RULES_ROOT)/global/define.mak
include $(RULES_ROOT)/global/build.mak

### Setup library files



### Main thing
all: Runtime RVL_SDK RevoEX bs1 bs2 $(BIN_OUTPUT)

clean: clean_Runtime clean_RVL_SDK clean_RevoEX clean_bs1 clean_bs2



### Build library files
include $(RUNTIME_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/$(DEFRULES).mak
include $(RULES_ROOT)/BS1rules.mak
include $(RULES_ROOT)/BS2rules.mak