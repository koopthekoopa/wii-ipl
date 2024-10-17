NET_OBJECTS =	$(REVOEX_OBJ_PATH)/net/crc.o \
				$(REVOEX_OBJASM_PATH)/net/md5.o \
				$(REVOEX_OBJASM_PATH)/net/sha1.o \
				$(REVOEX_OBJASM_PATH)/net/hmac.o \
				$(REVOEX_OBJASM_PATH)/net/neterrorcode.o \
				$(REVOEX_OBJ_PATH)/net/NETVersion.o \
				$(REVOEX_OBJASM_PATH)/net/aes.o \
				$(REVOEX_OBJ_PATH)/net/wireless_macaddr.o

ALL_OBJECTS += $(NET_OBJECTS)

$(REVOEX_OBJ_PATH)/net/%.o: $(REVOEX_SRC_PATH)/net/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/net/%.o: $(REVOEX_ASM_PATH)/net/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/net.a: $(NET_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


