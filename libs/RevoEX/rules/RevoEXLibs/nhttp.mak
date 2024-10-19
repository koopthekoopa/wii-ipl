NHTTP_OBJECTS =	$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_bgnend.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_control.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_list.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_os_RVL.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_recvbuf.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_request.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_response.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_socket_RVL.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_stdlib_RVL.o \
				$(REVOEX_SPLIT_PATH)/nhttp/NHTTP_thread.o \
				$(REVOEX_SPLIT_PATH)/nhttp/d_nhttp_private.o \
				$(REVOEX_SPLIT_PATH)/nhttp/d_nhttp.o \
				$(REVOEX_SPLIT_PATH)/nhttp/d_nhttp_common.o

ALL_OBJECTS += $(NHTTP_OBJECTS)

$(REVOEX_OBJ_PATH)/nhttp/%.o: $(REVOEX_SRC_PATH)/nhttp/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/nhttp.a: $(NHTTP_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


