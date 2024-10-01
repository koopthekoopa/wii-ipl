WD_OBJECTS =	$(REVOEX_OBJASM_PATH)/wd/wd_misc.o \
				$(REVOEX_OBJASM_PATH)/wd/wd_request.o \
				$(REVOEX_OBJASM_PATH)/wd/wd_init.o \
				$(REVOEX_OBJASM_PATH)/wd/WDScan.o

DEPENDENCIES += $(WD_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/wd/%.o: $(REVOEX_SRC_PATH)/wd/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/wd/%.o: $(REVOEX_ASM_PATH)/wd/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/wd.a: $(WD_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


