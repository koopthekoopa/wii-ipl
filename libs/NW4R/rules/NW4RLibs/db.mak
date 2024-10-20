NW_DB_OBJECTS =	$(NW4R_SPLIT_PATH)/db/db_directPrint.o \
				$(NW4R_SPLIT_PATH)/db/db_console.o \
				$(NW4R_SPLIT_PATH)/db/db_exception.o

DEPENDENCIES += $(NW_DB_OBJECTS:.o=.d)

$(NW4R_OBJ_PATH)/db/%.o: $(NW4R_SRC_PATH)/db/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_db.a: $(NW_DB_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


