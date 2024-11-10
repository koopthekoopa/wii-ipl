MTX_OBJECTS	=	$(SDK_OBJ_PATH)/mtx/mtx.o \
				$(SDK_OBJ_PATH)/mtx/mtxvec.o \
				$(SDK_OBJ_PATH)/mtx/mtx44.o \
				$(SDK_OBJ_PATH)/mtx/vec.o

DEPENDENCIES += $(MTX_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/mtx/%.o: $(SDK_SRC_PATH)/mtx/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/mtx.a: $(MTX_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


