BASE_OBJECTS	= $(SDK_OBJ_PATH)/base/PPCArch.o

DEPENDENCIES += $(BASE_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/base/%.o: $(SDK_SRC_PATH)/base/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/base.a: $(BASE_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)



