VI_OBJECTS	=	$(SDK_OBJ_PATH)/vi/vi.o \
				$(SDK_OBJ_PATH)/vi/i2c.o \
				$(SDK_OBJ_PATH)/vi/vi3in1.o

DEPENDENCIES += $(VI_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/vi/%.o: $(SDK_SRC_PATH)/vi/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/vi.a: $(VI_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


