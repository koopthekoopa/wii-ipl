SD_MENU_OBJS	=	$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDChannelSelect.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDChannelObj.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDChannelTitle.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDButton.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDArrow.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDMenuButton.o \
					$(BS2_SPLIT_PATH)/scene/sdChannelSelect/iplSDMemory.o

DEPENDENCIES += 	$(SD_MENU_OBJS:.o=.d)

$(BS2_OBJ_PATH)/scene/sdChannelSelect/%.o: $(BS2_SRC_PATH)/scene/sdChannelSelect/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/sdChannelSelect.a: $(SD_MENU_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



