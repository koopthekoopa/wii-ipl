CHANS_OBJS	=	$(BS2_SPLIT_PATH)/channelScript/CHANSVm.o \
				$(BS2_SPLIT_PATH)/channelScript/VmSystemMenu.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSSystem.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSLayout.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSPane.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSMaterial.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSTexture.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSSavedata.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSVector.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSGX.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSUtil.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSMtx.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSTextWriter.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSFont.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSRect.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSColor.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSColorS10.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSSize.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSAnim.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSSound.o \
				$(BS2_SPLIT_PATH)/channelScript/iplCSImage.o

ALL_OBJECTS += $(CHANS_OBJS)

$(BS2_OBJ_PATH)/channelScript/%.o: $(BS2_SRC_PATH)/channelScript/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/channelScript/%.o: $(BS2_SRC_PATH)/channelScript/%.c
	$(call BuildCSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/channelScript.a: $(CHANS_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



