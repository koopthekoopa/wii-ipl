PREP_ERROR = Please run 'make prepare' first

# Compile tools

TOOLS_CFLAGS = -Wall -Wextra -O3 -s
TOOLS = $(TOOLS_ROOT)/$(ELF2BS) \
		$(TOOLS_ROOT)/$(MAKESEL)

$(TOOLS_ROOT)/$(ELF2BS): $(TOOLS_ROOT)/elf2bs.c
	@echo Building $@...
	@$(GCC) $(TOOLS_CFLAGS) -o $@ $^

$(TOOLS_ROOT)/$(MAKESEL): $(TOOLS_ROOT)/makesel.c
	@echo Building $@...
	@$(GCC) $(TOOLS_CFLAGS) -o $@ $^

# Download tools

$(TOOLS_ROOT)/$(AS):
	@echo Downloading PPC Utilities...
	@$(PY) $(TOOLS_ROOT)/download_ppc_utils.py
	@echo Giving tools permissions...
	@$(PY) $(TOOLS_ROOT)/tools_perms.py

$(TOOLS_ROOT)/GC:
	@echo Downloading MWCC...
	@$(PY) $(TOOLS_ROOT)/download_mwcc.py

ifneq ($(OS),Windows_NT)
$(TOOLS_ROOT)/wibo:
	@echo Downloading Wibo...
	@$(PY) $(TOOLS_ROOT)/download_wibo.py
endif

.PHONY: $(TOOLS_ROOT)/wibo

DownloadTools: $(TOOLS_ROOT)/GC $(TOOLS_ROOT)/$(AS) $(TOOLS_ROOT)/wibo

# Prepare

PrepareDecomp: $(TOOLS) DownloadTools
	@echo Prepared for Building!

# Check if the decomp is prepared

ifeq (,$(wildcard $(TOOLS_ROOT)/GC))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifeq (,$(wildcard $(TOOLS_ROOT)/$(AS)))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifeq (,$(wildcard $(TOOLS_ROOT)/$(ELF2BS)))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifeq (,$(wildcard $(TOOLS_ROOT)/$(MAKESEL)))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifneq ($(OS),Windows_NT)
ifeq (,$(wildcard $(TOOLS_ROOT)/wibo))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif
endif


