TMP_OS_OBJ =	$(OS_SOURCES:.cpp=.o)
TMP_OS2_OBJ =	$(TMP_OS_OBJ:.c=.o)
OS_OBJECTS =	$(foreach OBJ,$(TMP_OS2_OBJ:.s=.o),$(RVLSDK_OBJROOT)/$(OS_LIBNAME)/$(OBJ))
OS_BIN_OUT =	$(RVLSDK_OUTROOT)/$(OS_LIBNAME).a

$(RVLSDK_OBJROOT)/$(OS_LIBNAME)/%.o: $(RVLSDK_ASMROOT)/$(OS_LIBNAME)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))
$(RVLSDK_OBJROOT)/$(OS_LIBNAME)/%.o: $(RVLSDK_SRCROOT)/$(OS_LIBNAME)/%.c
	$(call BuildCSources,$(OS_CCPATH),$(OS_CFLAGS),$(OS_INCLUDES),$(RVLSDK_INCROOT))
$(RVLSDK_OBJROOT)/$(OS_LIBNAME)/%.o: $(RVLSDK_SRCROOT)/$(OS_LIBNAME)/%.cpp
	$(call BuildCPPSources,$(OS_CCPATH),$(OS_CFLAGS),$(OS_INCLUDES),$(RVLSDK_INCROOT))
$(OS_BIN_OUT): $(OS_OBJECTS)
	$(call LinkLibrary,$(OS_CCPATH),$(OS_OBJECTS),$@)