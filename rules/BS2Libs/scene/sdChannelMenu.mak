SD_MENU_OBJS	=	$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDChannelSelect.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDChannelObj.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDChannelTitle.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDChannelButton.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDUnk813EA88C.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDUnk813EA9BC.o \
					$(BS2_OBJASM_PATH)/scene/sdChannelMenu/iplSDUnk813EB5EC.o

DEPENDENCIES += 	$(SD_MENU_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelMenu/%.o: $(BS2_SRC_PATH)/scene/sdChannelMenu/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/sdChannelMenu/%.o: $(BS2_ASM_PATH)/scene/sdChannelMenu/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelMenu.a: $(SD_MENU_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



