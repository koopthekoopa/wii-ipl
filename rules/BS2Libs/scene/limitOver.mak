LIMIT_OVER_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/limitOver/iplLimitOver.o

ALL_OBJECTS += $(LIMIT_OVER_OBJECTS)

$(BS2_OBJ_PATH)/scene/limitOver/%.o: $(BS2_SRC_PATH)/scene/limitOver/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/limitOver/%.o: $(BS2_ASM_PATH)/scene/limitOver/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/limitOver.a: $(LIMIT_OVER_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



