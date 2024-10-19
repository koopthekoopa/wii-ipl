BASE_CFLAGS		= -O4,s -ipa file $(COMMON_CCFLAGS)
BASE_CCPATH		= $(CW_GC_30A52)
BASE_OBJECTS	= $(SDK_OBJ_PATH)/base/PPCArch.o

ALL_OBJECTS += $(BASE_OBJECTS)

$(SDK_OBJ_PATH)/base/%.o: $(SDK_SRC_PATH)/base/%.c
	$(call BuildCSources,$(BASE_CCPATH),$(BASE_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_OBJ_PATH)/base/%.o: $(SDK_SRC_PATH)/base/%.cpp
	$(call BuildCPPSources,$(BASE_CCPATH),$(BASE_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/base.a: $(BASE_OBJECTS)
	$(call LinkLibrary,$(BASE_CCPATH),$^,$@)



