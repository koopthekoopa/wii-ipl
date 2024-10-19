WD_OBJECTS =	$(REVOEX_SPLIT_PATH)/wd/wd_misc.o \
				$(REVOEX_SPLIT_PATH)/wd/wd_request.o \
				$(REVOEX_SPLIT_PATH)/wd/wd_init.o \
				$(REVOEX_SPLIT_PATH)/wd/WDScan.o

ALL_OBJECTS += $(WD_OBJECTS)

$(REVOEX_OBJ_PATH)/wd/%.o: $(REVOEX_SRC_PATH)/wd/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/wd.a: $(WD_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


