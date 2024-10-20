# mandatory
NW4R_SRC_PATH			= $(NW4R_ROOT)/$(SOURCE_ROOT)
NW4R_BLD_PATH			= $(NW4R_ROOT)/$(BUILD_ROOT)
NW4R_OBJ_PATH			= $(NW4R_BLD_PATH)/$(OBJECT_ROOT)
NW4R_SPLIT_PATH			= $(SPLIT_LIBOBJ_ROOT)/NW4R
NW4R_INC_PATHS			= $(COMMON_INCLUDES)

NW4R_CCPATH =	$(CW_GC_30A52)
NW4R_CFLAGS =	-O4,p -ipa file $(COMMON_CCFLAGS)

-include $(NW4R_ROOT)/$(RULES_ROOT)/NW4RLibs/snd.mak
-include $(NW4R_ROOT)/$(RULES_ROOT)/NW4RLibs/ut.mak
-include $(NW4R_ROOT)/$(RULES_ROOT)/NW4RLibs/db.mak
-include $(NW4R_ROOT)/$(RULES_ROOT)/NW4RLibs/math.mak
-include $(NW4R_ROOT)/$(RULES_ROOT)/NW4RLibs/lyt.mak

NW4R:	$(NW4R_BLD_PATH)/libnw4r_snd.a \
		$(NW4R_BLD_PATH)/libnw4r_ut.a \
		$(NW4R_BLD_PATH)/libnw4r_math.a \
		$(NW4R_BLD_PATH)/libnw4r_db.a \
		$(NW4R_BLD_PATH)/libnw4r_lyt.a

clean_NW4R:
	@echo Cleaning NW4R...
	@rm -rf $(NW4R_BLD_PATH)


