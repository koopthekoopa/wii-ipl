CDB_OBJECTS =	$(REVOEX_SPLIT_PATH)/cdb/cdb.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBConv.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBDatabase.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFileSystemUtils.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFileSystem.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFileSystemVF.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFileSystemSD.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBRecord.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBRecordFile.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBRecordKey.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBIntArray.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBSystem.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBAttr.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFBridge.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFBridgeVF.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBFBridgeSD.o \
				$(REVOEX_SPLIT_PATH)/cdb/CDBCrypt.o

ALL_OBJECTS += $(CDB_OBJECTS)

$(REVOEX_OBJ_PATH)/cdb/%.o: $(REVOEX_SRC_PATH)/cdb/%.c
	$(call BuildCSources,$(REVOEX_CCPATH),$(REVOEX_CFLAGS),$(REVOEX_INC_PATHS),$(INCLUDE_ROOT))

$(REVOEX_BLD_PATH)/cdb.a: $(CDB_OBJECTS)
	$(call LinkLibrary,$(REVOEX_CCPATH),$^,$@)


