NW_UT_OBJECTS =	$(NW4R_OBJ_PATH)/ut/ut_list.o \
				$(NW4R_OBJ_PATH)/ut/ut_LinkList.o \
				$(NW4R_SPLIT_PATH)/ut/ut_binaryFileFormat.o \
				$(NW4R_SPLIT_PATH)/ut/ut_CharStrmReader.o \
				$(NW4R_SPLIT_PATH)/ut/ut_TagProcessorBase.o \
				$(NW4R_SPLIT_PATH)/ut/ut_IOStream.o \
				$(NW4R_SPLIT_PATH)/ut/ut_FileStream.o \
				$(NW4R_SPLIT_PATH)/ut/ut_DvdFileStream.o \
				$(NW4R_SPLIT_PATH)/ut/ut_DvdLockedFileStream.o \
				$(NW4R_SPLIT_PATH)/ut/ut_NandFileStream.o \
				$(NW4R_SPLIT_PATH)/ut/ut_Font.o \
				$(NW4R_SPLIT_PATH)/ut/ut_ResFontBase.o \
				$(NW4R_SPLIT_PATH)/ut/ut_ResFont.o \
				$(NW4R_SPLIT_PATH)/ut/ut_ArchiveFontBase.o \
				$(NW4R_SPLIT_PATH)/ut/ut_ArchiveFont.o \
				$(NW4R_SPLIT_PATH)/ut/ut_CharWriter.o \
				$(NW4R_SPLIT_PATH)/ut/ut_TextWriterBase.o

DEPENDENCIES += $(NW_UT_OBJECTS:.o=.d)

$(NW4R_OBJ_PATH)/ut/%.o: $(NW4R_SRC_PATH)/ut/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_ut.a: $(NW_UT_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


