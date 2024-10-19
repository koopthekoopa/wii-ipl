FACE_SELECT_OBJECTS    =	$(BS2_SPLIT_PATH)/scene/faceSelect/iplFaceSelect.o

ALL_OBJECTS += $(FACE_SELECT_OBJECTS)

$(BS2_OBJ_PATH)/scene/faceSelect/%.o: $(BS2_SRC_PATH)/scene/faceSelect/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/faceSelect.a: $(FACE_SELECT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



