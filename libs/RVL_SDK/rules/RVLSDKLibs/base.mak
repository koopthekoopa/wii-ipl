BASE_CFLAGS		= -O4,s -ipa file $(COMMON_CCFLAGS)
BASE_CCPATH		= $(CW_GC_30A3)
BASE_OBJECTS	= PPCArch.o

$(SDK_OBJ_PATH)/base/%.o: $(SDK_SRC_PATH)/base/%.c
	$(call BuildCSources,$(BASE_CCPATH),$(BASE_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/base/%.o: $(SDK_SRC_PATH)/base/%.cpp
	$(call BuildCPPSources,$(BASE_CCPATH),$(BASE_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/base/$(ASSEMBLY_ROOT)/%.o: $(SDK_ASM_PATH)/base/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/base.a: $(foreach OBJ,$(BASE_OBJECTS:.s=.o),$(SDK_OBJ_PATH)/base/$(OBJ))
	$(call LinkLibrary,$(BASE_CCPATH),$?,$@)



