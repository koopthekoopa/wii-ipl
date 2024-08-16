NET_CFLAGS =	-O4,s -ipa file $(COMMON_CCFLAGS)
NET_CCPATH =	$(CW_GC_30A52)
NET_OBJECTS =	$(REVOEX_OBJ_PATH)/net/NETDigest.o

DEPENDENCIES += $(NET_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/net/%.o: $(REVOEX_SRC_PATH)/net/%.c
	$(call BuildCSources,$(NET_CCPATH),$(NET_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJ_PATH)/net/%.o: $(REVOEX_SRC_PATH)/net/%.cpp
	$(call BuildCPPSources,$(NET_CCPATH),$(NET_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/net/%.o: $(REVOEX_ASM_PATH)/net/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/net.a: $(NET_OBJECTS)
	$(call LinkLibrary,$(NET_CCPATH),$^,$@)



