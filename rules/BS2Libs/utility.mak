UTILITY_LIBNAME	=	utility
UTILITY_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
UTILITY_CCPATH	=	$(CW_GC_30A52)
UTILITY_OBJECTS	=	$(ASSEMBLY_ROOT)/iplTree.o \
					$(ASSEMBLY_ROOT)/iplFrameController.o \
					$(ASSEMBLY_ROOT)/iplGraphics.o \
					iplCapture.o \
					$(ASSEMBLY_ROOT)/iplUtility.o \
					$(ASSEMBLY_ROOT)/iplThread.o \
					iplMessageManager.o \
					$(ASSEMBLY_ROOT)/iplJpegDecoder.o \
					$(ASSEMBLY_ROOT)/iplESMisc.o \
					$(ASSEMBLY_ROOT)/iplCSFlags.o

$(BS2_OBJ_PATH)/$(UTILITY_LIBNAME)/%.o: $(BS2_SRC_PATH)/$(UTILITY_LIBNAME)/%.c
	$(call BuildCSources,$(UTILITY_CCPATH),$(UTILITY_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/$(UTILITY_LIBNAME)/%.o: $(BS2_SRC_PATH)/$(UTILITY_LIBNAME)/%.cpp
	$(call BuildCPPSources,$(UTILITY_CCPATH),$(UTILITY_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/$(UTILITY_LIBNAME)/$(ASSEMBLY_ROOT)/%.o: $(BS2_ASM_PATH)/$(UTILITY_LIBNAME)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/$(UTILITY_LIBNAME).a: $(foreach OBJ,$(UTILITY_OBJECTS),$(BS2_OBJ_PATH)/$(UTILITY_LIBNAME)/$(OBJ))
	$(call LinkLibrary,$(UTILITY_CCPATH),$?,$@)



