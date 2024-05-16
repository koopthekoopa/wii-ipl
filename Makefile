VERSION := 43U
IPL_INFILE = base.$(VERSION).app
ifneq ($(VERSION),43U)
$(error Only Wii Menu 4.3U is currently supported)
endif

ifneq ($(OS),Windows_NT)
EXEC = wine
PY = python
else
EXEC =
PY = python3
endif

### Directory defines
BUILD_ROOT		= build/$(VERSION)
CONFIG_ROOT		= config/$(VERSION)
OBJECT_ROOT		= $(BUILD_ROOT)/obj
ASSEMBLY_ROOT	= asm
SOURCE_ROOT		= src
INCLUDE_ROOT	= include
RULES_ROOT		= rules
TOOLS_ROOT		= tools
LIBRARIES_ROOT	= libs

### Library path defines
RUNTIME_ROOT =			$(LIBRARIES_ROOT)/Runtime
METROTRK_ROOT =			$(LIBRARIES_ROOT)/MetroTRK
MSL_ROOT =				$(LIBRARIES_ROOT)/MSL
REVOLUTION_SDK_ROOT =	$(LIBRARIES_ROOT)/RVL_SDK
REVOLUTION_EXT_ROOT =	$(LIBRARIES_ROOT)/RevoEX

include $(RULES_ROOT)/global_define.mak

### Setup library files
include $(RUNTIME_ROOT)/$(RULES_ROOT)/define.mak
include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/define.mak
include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/define.mak
include $(RULES_ROOT)/define.mak



### Main thing
all: Runtime RVL_SDK RevoEX ipl $(BIN_OUTPUT)

clean: clean_Runtime clean_RVL_SDK clean_RevoEX clean_ipl



include $(RULES_ROOT)/global_build.mak

### Build library files
include $(RUNTIME_ROOT)/$(RULES_ROOT)/build.mak
include $(REVOLUTION_SDK_ROOT)/$(RULES_ROOT)/build.mak
include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/build.mak
include $(RULES_ROOT)/build.mak


