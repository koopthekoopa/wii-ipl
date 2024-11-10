DB_OBJECTS	=	$(SDK_OBJ_PATH)/db/db.o

DEPENDENCIES += $(DB_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/db/%.o: $(SDK_SRC_PATH)/db/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/db.a: $(DB_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


