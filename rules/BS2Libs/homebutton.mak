HBM_OBJECTS	=	$(BS2_OBJASM_PATH)/homebutton/HBMBase.o \
				$(BS2_OBJASM_PATH)/homebutton/HBMAnmController.o \
				$(BS2_OBJASM_PATH)/homebutton/HBMController.o \
				$(BS2_OBJASM_PATH)/homebutton/HBMFrameController.o \
				$(BS2_OBJASM_PATH)/homebutton/HBMGUIManager.o \
				$(BS2_OBJASM_PATH)/homebutton/HBMRemoteSpk.o

ALL_OBJECTS += $(HBM_OBJECTS)

$(BS2_OBJ_PATH)/homebutton/%.o: $(BS2_SRC_PATH)/homebutton/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/homebutton/%.o: $(BS2_ASM_PATH)/homebutton/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/homebutton.a: $(HBM_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)


