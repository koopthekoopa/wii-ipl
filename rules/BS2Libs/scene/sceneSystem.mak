SCENE_SYS_OBJS	=	$(BS2_OBJASM_PATH)/scene/sceneSystem/iplSceneBase.o \
					$(BS2_OBJASM_PATH)/scene/sceneSystem/iplSceneCreator.o \
					$(BS2_OBJASM_PATH)/scene/sceneSystem/iplSceneManager.o \
					$(BS2_OBJASM_PATH)/scene/sceneSystem/iplFaderSceneBase.o

DEPENDENCIES += 	$(SCENE_SYS_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sceneSystem/%.o: $(BS2_SRC_PATH)/scene/sceneSystem/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/sceneSystem/%.o: $(BS2_ASM_PATH)/scene/sceneSystem/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sceneSystem.a: $(SCENE_SYS_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



