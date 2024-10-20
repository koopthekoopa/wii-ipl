OS_OBJECTS  =   $(SDK_OBJ_PATH)/os/OSAlarm.o \
                $(SDK_OBJ_PATH)/os/stubs.o \
                $(SDK_OBJ_PATH)/os/__ppc_eabi_init.o

DEPENDENCIES += $(OS_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/os/%.o: $(SDK_SRC_PATH)/os/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/os.a: $(OS_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)



