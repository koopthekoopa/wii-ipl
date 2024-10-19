NW_UT_OBJECTS =	$(NW4R_OBJ_PATH)/ut/ut_list.o \
				$(NW4R_OBJ_PATH)/ut/ut_LinkList.o

ALL_OBJECTS += $(NW_UT_OBJECTS)

$(NW4R_OBJ_PATH)/ut/%.o: $(NW4R_SRC_PATH)/ut/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_ut.a: $(NW_UT_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


