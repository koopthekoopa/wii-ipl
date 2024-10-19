OS_CFLAGS   =   -O4,s -ipa file $(COMMON_CCFLAGS)
OS_CCPATH   =   $(CW_GC_30A52)
OS_OBJECTS  =   $(SDK_OBJ_PATH)/os/OSAlarm.o \
                $(SDK_OBJ_PATH)/os/stubs.o \
                $(SDK_OBJ_PATH)/os/__ppc_eabi_init.o

ALL_OBJECTS += $(OS_OBJECTS)

$(SDK_OBJ_PATH)/os/%.o: $(SDK_SRC_PATH)/os/%.c
	$(call BuildCSources,$(OS_CCPATH),$(OS_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/os/%.o: $(SDK_SRC_PATH)/os/%.cpp
	$(call BuildCPPSources,$(OS_CCPATH),$(OS_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/os.a: $(OS_OBJECTS)
	$(call LinkLibrary,$(OS_CCPATH),$^,$@)



