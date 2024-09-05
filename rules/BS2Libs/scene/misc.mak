SCENE_MISC_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/misc/iplReboot.o \
						$(BS2_OBJASM_PATH)/scene/misc/iplRootScene.o

DEPENDENCIES += $(SCENE_MISC_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/misc/%.o: $(BS2_SRC_PATH)/scene/misc/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/misc/%.o: $(BS2_ASM_PATH)/scene/misc/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/misc.a: $(SCENE_MISC_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



