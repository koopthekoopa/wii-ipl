ifneq ($(OS),Windows_NT)
define AddPerms
	@chmod +x $(1)
endef
endif

# $(1) = Include Path
define BuildASMSources
	@echo Assembling $<...
	@mkdir -p $(dir $@)
	@$(call AddPerms,$(TOOLS_ROOT)/$(AS))
	@$(TOOLS_ROOT)/$(AS) $(COMMON_ASFLAGS) -DIPL=$(VERSION) -I- -I $(1) -c -o $@ $<
endef

# $(1) = Include Path
# $(2) = CC Path
define BuildMWCCASMSources
	@echo Assembling MWCC $<...
	@mkdir -p $(dir $@)
	@$(EXEC) $(2)/$(AS_MWCC) $(COMMON_MWCC_ASFLAGS) -DIPL=$(VERSION) -I- -i $(1) -c -o $@ $<
endef

# $(1) = CC Path
# $(2) = CC Flags
# $(3) = Include Paths
# $(4) = Include Path
define BuildCSources
	@echo Compiling $<...
	@mkdir -p $(dir $@)
	@$(EXEC) $(1)/$(CC) -lang c $(2) -DIPL=$(VERSION) -I- -i $(4) $(foreach INC,$(3),-ir $(INC)) -nodefaults -c -o $@ $<
endef

# $(1) = CC Path
# $(2) = CC Flags
# $(3) = Include Paths
# $(4) = Include Path
define BuildCPPSources
	@echo Compiling $<...
	@mkdir -p $(dir $@)
	@$(EXEC) $(1)/$(CC) -lang c++ $(2) -DIPL=$(VERSION) -I- -i $(4) $(foreach INC,$(3),-ir $(INC)) -nodefaults -c -o $@ $<
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
# $(4) = Linker file
define LinkElf
	@echo Linking exectuable $@...
	@mkdir -p $(dir $@)
	@$(EXEC) $(1)/$(LD) $(COMMON_LDFLAGS) -nodefaults -lcf $(4) -map $(3:.elf=.map) -o $@ $(2)
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
# $(4) = Code Address
define LinkSmallElf
	@echo Linking exectuable $@...
	@mkdir -p $(dir $@)
	@$(EXEC) $(1)/$(LD) -codeaddr $(4) -nodefaults -map $(3:.elf=.map) -o $@ $(2)
endef

# $(1) = CC Path
# $(2) = Objects
# $(3) = Output
define LinkLibrary
	@echo Linking $@...
	@mkdir -p $(dir $@)
	@$(EXEC) $(1)/$(LD) $(COMMON_LDFLAGS) -xm l -nodefaults -o $@ $(2)
endef


