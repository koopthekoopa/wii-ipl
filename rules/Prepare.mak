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

$(TOOLS_ROOT)/PPC:
	@echo Downloading PPC Utilities...
	@$(PY) $(TOOLS_ROOT)/download_ppc_utils.py
	@$(CHMOD) $(OBJCOPY)
	@$(CHMOD) $(AS)

$(TOOLS_ROOT)/GC:
	@echo Downloading MWCC...
	@$(PY) $(TOOLS_ROOT)/download_mwcc.py

ifneq ($(OS),Windows_NT)
$(WIBO):
	@echo Downloading Wibo...
	@$(PY) $(TOOLS_ROOT)/download_wibo.py
	@$(CHMOD) $(WIBO)
endif

$(DTK):
	@echo Downloading DTK...
	@$(PY) $(TOOLS_ROOT)/download_dtk.py
	@$(CHMOD) $(DTK)

.PHONY: $(TOOLS_ROOT)/wibo

DownloadTools: $(TOOLS_ROOT)/GC $(PPC_ROOT) $(WIBO) $(DTK)

# Extract data

$(DATA_ROOT): $(CONFIG_ROOT)/extract.txt
	@echo Extracting Data...
	@$(PY) $(TOOLS_ROOT)/$(EXTRACT_DATA) -i $< -o $(DATA_ROOT) -ib $(IPL_INFILE) -oc $(OBJCOPY)

# Prepare

PrepareDecomp: $(TOOLS) DownloadTools $(DATA_ROOT)
	@echo Prepared for Building!

# Check if the decomp is prepared

ifeq (,$(wildcard $(TOOLS_ROOT)/GC))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifeq (,$(wildcard $(PPC_ROOT)))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifeq (,$(wildcard $(DTK)))
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

ifeq (,$(wildcard $(DATA_ROOT)/$(DEFRULES).mak))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif

ifneq ($(OS),Windows_NT)
ifeq (,$(wildcard $(WIBO)))
ifneq ($(MAKECMDGOALS),prepare)
$(error $(PREP_ERROR))
endif
endif
endif


