EXI_OBJECTS	=	$(SDK_OBJ_PATH)/exi/EXIBios.o \
				$(SDK_OBJ_PATH)/exi/EXIUart.o \
				$(SDK_OBJ_PATH)/exi/EXICommon.o

DEPENDENCIES += $(EXI_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/exi/%.o: $(SDK_SRC_PATH)/exi/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/exi.a: $(EXI_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


