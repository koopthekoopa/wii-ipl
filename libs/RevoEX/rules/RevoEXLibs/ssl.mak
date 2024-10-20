SSL_OBJECTS =	$(REVOEX_SPLIT_PATH)/ssl/ssl_api.o \
				$(REVOEX_SPLIT_PATH)/ssl/ssl_mutex.o

DEPENDENCIES += $(SSL_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/ssl/%.o: $(REVOEX_SRC_PATH)/ssl/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/ssl.a: $(SSL_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


