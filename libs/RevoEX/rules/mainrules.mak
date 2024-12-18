# mandatory
REVOEX_SRC_PATH			= $(REVOLUTION_EXT_ROOT)/$(SOURCE_ROOT)
REVOEX_BLD_PATH			= $(REVOLUTION_EXT_ROOT)/$(BUILD_ROOT)
REVOEX_OBJ_PATH			= $(REVOEX_BLD_PATH)/$(OBJECT_ROOT)
REVOEX_SPLIT_PATH		= $(SPLIT_LIBOBJ_ROOT)/RevoEX
REVOEX_INC_PATHS		= $(COMMON_INCLUDES)

REVOEX_CCPATH =	$(CW_GC_30A52)
REVOEX_CFLAGS =	-O4,p -ipa file $(COMMON_CCFLAGS)

-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/cdb.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/ncd.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/net.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/nhttp.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/nwc24.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/so.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/ssl.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/vf.mak
-include $(REVOLUTION_EXT_ROOT)/$(RULES_ROOT)/RevoEXLibs/wd.mak

RevoEX:	$(REVOEX_BLD_PATH)/cdb.a \
		$(REVOEX_BLD_PATH)/ncd.a \
		$(REVOEX_BLD_PATH)/net.a \
		$(REVOEX_BLD_PATH)/nhttp.a \
		$(REVOEX_BLD_PATH)/nwc24.a \
		$(REVOEX_BLD_PATH)/so.a \
		$(REVOEX_BLD_PATH)/ssl.a \
		$(REVOEX_BLD_PATH)/vf.a \
		$(REVOEX_BLD_PATH)/wd.a
		
clean_RevoEX:
	@echo Cleaning RevoEX...
	@rm -rf $(REVOEX_BLD_PATH)


