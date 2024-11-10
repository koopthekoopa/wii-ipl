# Compile tools

TOOLS_CFLAGS = -Wall -Wextra -O2 -s
TOOLS = $(TOOLS_ROOT)/$(ELF2BS) \
		$(TOOLS_ROOT)/$(MAKESEL)\
		$(TOOLS_ROOT)/$(IPL2DTK)

$(TOOLS_ROOT)/$(ELF2BS): $(TOOLS_ROOT)/elf2bs.c
	@echo Building $@...
	@$(GCC) $(TOOLS_CFLAGS) -o $@ $^

$(TOOLS_ROOT)/$(MAKESEL): $(TOOLS_ROOT)/makesel.c
	@echo Building $@...
	@$(GCC) $(TOOLS_CFLAGS) -o $@ $^

$(TOOLS_ROOT)/$(IPL2DTK): $(TOOLS_ROOT)/ipl2dtk.c
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

$(DATA_ROOT): $(CONFIG_ROOT)/extract.csv
	@echo Extracting Data...
	@$(PY) $(TOOLS_ROOT)/$(EXTRACT_DATA) -i $< -o $(DATA_ROOT) -ib $(IPL_INFILE) -oc $(OBJCOPY)

# Prepare

PrepareDecomp: $(TOOLS) DownloadTools $(DATA_ROOT)


