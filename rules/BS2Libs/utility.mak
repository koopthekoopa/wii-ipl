UTILITY_OBJECTS	=	$(BS2_OBJ_PATH)/utility/iplTree.o \
					$(BS2_SPLIT_PATH)/utility/iplFrameController.o \
					$(BS2_SPLIT_PATH)/utility/iplGraphics.o \
					$(BS2_OBJ_PATH)/utility/iplCapture.o \
					$(BS2_SPLIT_PATH)/utility/iplUtility.o \
					$(BS2_OBJ_PATH)/utility/iplThread.o \
					$(BS2_OBJ_PATH)/utility/iplMessageBase.o \
					$(BS2_SPLIT_PATH)/utility/iplJpegDecoder.o \
					$(BS2_SPLIT_PATH)/utility/iplESMisc.o \
					$(BS2_SPLIT_PATH)/utility/iplCSFlags.o

DEPENDENCIES += $(UTILITY_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/utility/%.o: $(BS2_SRC_PATH)/utility/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/utility.a: $(UTILITY_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



