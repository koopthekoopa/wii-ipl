KITAYAMA_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/kitayamaTest/iplKitayamaTest.o \
						$(BS2_OBJASM_PATH)/scene/kitayamaTest/nandsdworker_autotest.o

ALL_OBJECTS += $(KITAYAMA_OBJECTS)

$(BS2_OBJ_PATH)/scene/kitayamaTest/%.o: $(BS2_SRC_PATH)/scene/kitayamaTest/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/kitayamaTest/%.o: $(BS2_ASM_PATH)/scene/kitayamaTest/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/kitayamaTest.a: $(KITAYAMA_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



