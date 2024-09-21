CDB_OBJECTS =	$(REVOEX_OBJASM_PATH)/cdb/cdb.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBConv.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBDatabase.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFileSystemUtils.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFileSystem.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFileSystemVF.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFileSystemSD.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBRecord.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBRecordFile.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBRecordKey.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBIntArray.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBSystem.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBAttr.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFBridge.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFBridgeVF.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBFBridgeSD.o \
				$(REVOEX_OBJASM_PATH)/cdb/CDBCrypt.o

DEPENDENCIES += $(CDB_OBJECTS:.o=.d)

$(REVOEX_OBJ_PATH)/cdb/%.o: $(REVOEX_SRC_PATH)/cdb/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_OBJASM_PATH)/cdb/%.o: $(REVOEX_ASM_PATH)/cdb/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/cdb.a: $(CDB_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


