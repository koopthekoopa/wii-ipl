LIMIT_OVER_OBJECTS	=	$(BS2_SPLIT_PATH)/scene/limitOver/iplLimitOver.o

DEPENDENCIES += $(LIMIT_OVER_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/limitOver/%.o: $(BS2_SRC_PATH)/scene/limitOver/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/limitOver.a: $(LIMIT_OVER_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



