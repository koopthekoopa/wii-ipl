HEALTH_OBJECTS    =	$(BS2_SPLIT_PATH)/scene/health/iplSkHealth.o

DEPENDENCIES += $(HEALTH_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/health/%.o: $(BS2_SRC_PATH)/scene/health/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/health.a: $(HEALTH_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



