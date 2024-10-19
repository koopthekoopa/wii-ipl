# $(1) = Include Path
# $(2) = CC Path
define BuildASMSources
	@echo Assembling $<...
	@mkdir -p $(dir $@)
	@$(WIBO) $(2)/$(AS_MWCC) $(COMMON_MWCC_ASFLAGS) -DIPL=$(VERSION) $(OBJDIFF_FLAG) -I- -i $(1) -c -o $@ $<
endef

# $(1) = CC Path
# $(2) = CC Flags
# $(3) = Include Paths
# $(4) = Include Path
define BuildCSources
	@echo Compiling $<...
	@mkdir -p $(dir $@)
	@$(WIBO) $(1)/$(CC) -lang c $(2) -DIPL=$(VERSION) $(OBJDIFF_FLAG) -I- -i $(4) $(foreach INC,$(3),-ir $(INC)) -nodefaults -MD -c -o $(dir $@) $<
	@$(PY) $(FIX_DEP) $(subst .o,.d,$@) $(subst .o,.d,$@)
endef

# $(1) = CC Path
# $(2) = CC Flags
# $(3) = Include Paths
# $(4) = Include Path
define BuildCPPSources
	@echo Compiling $<...
	@mkdir -p $(dir $@)
	@$(WIBO) $(1)/$(CC) -lang c++ $(2) -DIPL=$(VERSION) $(OBJDIFF_FLAG) -I- -i $(4) $(foreach INC,$(3),-ir $(INC)) -nodefaults -MD -c -o $(dir $@) $<
	@$(PY) $(FIX_DEP) $(subst .o,.d,$@) $(subst .o,.d,$@)
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
# $(4) = Linker file
define LinkElf
	@echo Linking executable $@...
	@mkdir -p $(dir $@)
	@$(WIBO) $(1)/$(LD) $(COMMON_LDFLAGS) -nodefaults -lcf $(4) -map $(3:.elf=.map) -o $@ $(2)
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
# $(4) = Code Address
define LinkSmallElf
	@echo Linking small executable $@...
	@mkdir -p $(dir $@)
	@$(WIBO) $(1)/$(LD) -codeaddr $(4) -nodefaults -map $(3:.elf=.map) -o $@ $(2)
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
define LinkLibrary
	@echo Linking library $@...
	@mkdir -p $(dir $@)
	@$(WIBO) $(1)/$(LD) $(COMMON_LDFLAGS) -xm l -nodefaults -o $@ $(2)
endef


