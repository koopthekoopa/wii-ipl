SAVEDATA_EDIT_OBJECTS    =	$(BS2_OBJASM_PATH)/scene/saveDataEdit/iplSaveDataBase.o \
							$(BS2_OBJASM_PATH)/scene/saveDataEdit/iplSaveDataBox.o \
							$(BS2_OBJASM_PATH)/scene/saveDataEdit/iplSaveDataEdit.o \
							$(BS2_OBJASM_PATH)/scene/saveDataEdit/iplWiiBannerFileInfo.o

DEPENDENCIES += $(SAVEDATA_EDIT_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/saveDataEdit/%.o: $(BS2_SRC_PATH)/scene/saveDataEdit/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/saveDataEdit/%.o: $(BS2_ASM_PATH)/scene/saveDataEdit/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/saveDataEdit.a: $(SAVEDATA_EDIT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



