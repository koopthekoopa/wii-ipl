LAYOUT_OBJECTS	=	$(BS2_SPLIT_PATH)/layout/GUIManager.o \
					$(BS2_SPLIT_PATH)/layout/iplLayout.o \
					$(BS2_SPLIT_PATH)/layout/iplGuiManager.o

ALL_OBJECTS += $(LAYOUT_OBJECTS)

$(BS2_OBJ_PATH)/layout/%.o: $(BS2_SRC_PATH)/layout/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/layout.a: $(LAYOUT_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



