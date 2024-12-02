CHANS_OBJS	=	$(BS2_SPLIT_PATH)/channelScript/CHANSVm.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/VmSystemMenu.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSSystem.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSLayout.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSPane.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSMaterial.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSTexture.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSSavedata.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSVector.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSGX.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSUtil.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSMtx.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSTextWriter.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSFont.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSRect.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSColor.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSColorS10.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSSize.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSAnim.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSSound.o \
				$(BS2_SPLIT_PATH)/channelScript/systemmenu/iplCSImage.o

DEPENDENCIES += $(CHANS_OBJS:.o=.d)

$(BS2_OBJ_PATH)/channelScript/%.o: $(BS2_SRC_PATH)/channelScript/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/channelScript/%.o: $(BS2_SRC_PATH)/channelScript/%.c
	$(call BuildCSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/channelScript.a: $(CHANS_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



