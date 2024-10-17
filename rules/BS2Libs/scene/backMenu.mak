BACKMENU_OBJECTS	=	$(BS2_OBJ_PATH)/scene/backMenu/iplBackMenu.o \
						$(DATA_OUT_ROOT)/backToWiiMenu.arc.o

ALL_OBJECTS += $(BACKMENU_OBJECTS)

$(BS2_OBJ_PATH)/scene/backMenu/%.o: $(BS2_SRC_PATH)/scene/backMenu/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/backMenu.a: $(BACKMENU_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



