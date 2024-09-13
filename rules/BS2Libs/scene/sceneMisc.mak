SCENE_MISC_OBJECTS	=	$(BS2_OBJ_PATH)/scene/sceneMisc/iplReboot.o \
						$(BS2_OBJASM_PATH)/scene/sceneMisc/iplRootScene.o

DEPENDENCIES += $(SCENE_MISC_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/sceneMisc/%.o: $(BS2_SRC_PATH)/scene/sceneMisc/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/sceneMisc/%.o: $(BS2_ASM_PATH)/scene/sceneMisc/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sceneMisc.a: $(SCENE_MISC_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



