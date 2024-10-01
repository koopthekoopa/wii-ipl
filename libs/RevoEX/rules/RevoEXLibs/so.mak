SOCKET_OBJECTS =	$(REVOEX_OBJASM_PATH)/so/SOCommon.o \
					$(REVOEX_OBJASM_PATH)/so/SOBasic.o \
					$(REVOEX_OBJASM_PATH)/so/SOInformation.o \
					$(REVOEX_OBJASM_PATH)/so/SOOption.o

DEPENDENCIES += $(SOCKET_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/so/%.o: $(REVOEX_SRC_PATH)/so/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/so/%.o: $(REVOEX_ASM_PATH)/so/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/so.a: $(SOCKET_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


