BACKMENU_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/backMenu/iplBackMenu.o \
						$(DATA_OUT_ROOT)/scene/backToWiiMenu.arc.o

DEPENDENCIES += $(BACKMENU_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/scene/backMenu/%.o: $(BS2_SRC_PATH)/scene/backMenu/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/backMenu/%.o: $(BS2_ASM_PATH)/scene/backMenu/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/backMenu.a: $(BACKMENU_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



