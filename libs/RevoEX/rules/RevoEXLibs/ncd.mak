NCD_OBJECTS =	$(REVOEX_OBJASM_PATH)/ncd/ncdsystem.o \
				$(REVOEX_OBJASM_PATH)/ncd/ncdsleep.o

ALL_OBJECTS += $(NCD_OBJECTS)

$(REVOEX_OBJ_PATH)/ncd/%.o: $(REVOEX_SRC_PATH)/ncd/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/ncd/%.o: $(REVOEX_ASM_PATH)/ncd/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/ncd.a: $(NCD_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


