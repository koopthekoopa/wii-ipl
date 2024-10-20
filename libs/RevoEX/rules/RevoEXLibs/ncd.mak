NCD_OBJECTS =	$(REVOEX_SPLIT_PATH)/ncd/ncdsystem.o \
				$(REVOEX_SPLIT_PATH)/ncd/ncdsleep.o

DEPENDENCIES += $(NCD_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/ncd/%.o: $(REVOEX_SRC_PATH)/ncd/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/ncd.a: $(NCD_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


