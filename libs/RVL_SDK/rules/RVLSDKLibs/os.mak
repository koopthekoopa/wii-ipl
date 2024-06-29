OS_LIBNAME  =   os
OS_CFLAGS   =   -O4,s -ipa file $(COMMON_CCFLAGS)
OS_CCPATH   =   $(CW_GC_30A3)
OS_OBJECTS  =   OSAlarm.o \
                stubs.o \
                __ppc_eabi_init.o

$(SDK_OBJ_PATH)/$(OS_LIBNAME)/%.o: $(SDK_SRC_PATH)/$(OS_LIBNAME)/%.c
	$(call BuildCSources,$(OS_CCPATH),$(OS_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/$(OS_LIBNAME)/%.o: $(SDK_SRC_PATH)/$(OS_LIBNAME)/%.cpp
	$(call BuildCPPSources,$(OS_CCPATH),$(OS_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/$(OS_LIBNAME)/$(ASSEMBLY_ROOT)/%.o: $(SDK_ASM_PATH)/$(OS_LIBNAME)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/$(OS_LIBNAME).a: $(foreach OBJ,$(OS_OBJECTS:.s=.o),$(SDK_OBJ_PATH)/$(OS_LIBNAME)/$(OBJ))
	$(call LinkLibrary,$(OS_CCPATH),$?,$@)



