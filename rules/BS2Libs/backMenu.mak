BACKMENU_CFLAGS		=	-O4,s -ipa file $(COMMON_CCFLAGS)
BACKMENU_CCPATH		=	$(CW_GC_30A52)
BACKMENU_OBJECTS	=	$(BS2_OBJASM_PATH)/backMenu/iplBackMenu.o \
						$(DATA_OUT_ROOT)/backToWiiMenu.arc.o

DEPENDENCIES += $(BACKMENU_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/backMenu/%.o: $(BS2_SRC_PATH)/backMenu/%.cpp
	$(call BuildCPPSources,$(BACKMENU_CCPATH),$(BACKMENU_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/backMenu/%.o: $(BS2_ASM_PATH)/backMenu/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/backMenu.a: $(BACKMENU_OBJECTS)
	$(call LinkLibrary,$(BACKMENU_CCPATH),$^,$@)



