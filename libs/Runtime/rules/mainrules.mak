# mandatory
RUNTIME_SRC_PATH		= $(RUNTIME_ROOT)/$(SOURCE_ROOT)
RUNTIME_ASM_PATH		= $(RUNTIME_ROOT)/$(VER_ASSEMBLY_ROOT)
RUNTIME_BLD_PATH		= $(RUNTIME_ROOT)/$(BUILD_ROOT)
RUNTIME_OBJ_PATH		= $(RUNTIME_BLD_PATH)/obj
RUNTIME_INC_PATHS		= $(COMMON_INCLUDES)

RUNTIME_CFLAGS      =	-O4,p $(COMMON_CCFLAGS)
RUNTIME_CCPATH      =	$(CW_GC_30A3)
RUNTIME_OBJECTS     =	__mem.o \
                        __va_arg.o \
                        global_destructor_chain.o \
                        runtime.o \
                        __init_cpp_exceptions.o \
                        Gecko_ExceptionPPC.o

$(RUNTIME_OBJ_PATH)/%.o: $(RUNTIME_SRC_PATH)/%.c
	$(call BuildCSources,$(RUNTIME_CCPATH),$(RUNTIME_CFLAGS),$(RUNTIME_INC_PATHS),$(INCLUDE_ROOT))

$(RUNTIME_OBJ_PATH)/%.o: $(RUNTIME_SRC_PATH)/%.cpp
	$(call BuildCPPSources,$(RUNTIME_CCPATH),$(RUNTIME_CFLAGS),$(RUNTIME_INC_PATHS),$(INCLUDE_ROOT))

$(RUNTIME_OBJ_PATH)/$(ASSEMBLY_ROOT)/%.o: $(RUNTIME_ASM_PATH)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(RUNTIME_BLD_PATH)/Runtime.PPCEABI.H.a: $(foreach OBJ,$(RUNTIME_OBJECTS:.s=.o),$(RUNTIME_OBJ_PATH)/$(OBJ))
	$(call LinkLibrary,$(RUNTIME_CCPATH),$?,$@)

Runtime: $(RUNTIME_BLD_PATH)/Runtime.PPCEABI.H.a
clean_Runtime:
	@echo Cleaning Runtime...
	@rm -rf $(RUNTIME_BLD_PATH)


