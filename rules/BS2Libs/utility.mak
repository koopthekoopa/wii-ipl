UTILITY_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
UTILITY_CCPATH	=	$(CW_GC_30A52)
UTILITY_OBJECTS	=	$(BS2_OBJASM_PATH)/utility/iplTree.o \
					$(BS2_OBJASM_PATH)/utility/iplFrameController.o \
					$(BS2_OBJASM_PATH)/utility/iplGraphics.o \
					$(BS2_OBJ_PATH)/utility/iplCapture.o \
					$(BS2_OBJASM_PATH)/utility/iplUtility.o \
					$(BS2_OBJASM_PATH)/utility/iplThread.o \
					$(BS2_OBJ_PATH)/utility/iplMessageBase.o \
					$(BS2_OBJASM_PATH)/utility/iplJpegDecoder.o \
					$(BS2_OBJASM_PATH)/utility/iplESMisc.o \
					$(BS2_OBJASM_PATH)/utility/iplCSFlags.o

DEPENDENCIES += $(UTILITY_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/utility/%.o: $(BS2_SRC_PATH)/utility/%.cpp
	$(call BuildCPPSources,$(UTILITY_CCPATH),$(UTILITY_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/utility/%.o: $(BS2_ASM_PATH)/utility/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/utility.a: $(UTILITY_OBJECTS)
	$(call LinkLibrary,$(UTILITY_CCPATH),$(UTILITY_OBJECTS),$@)



