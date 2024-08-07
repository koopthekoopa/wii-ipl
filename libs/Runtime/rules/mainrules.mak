# mandatory
RUNTIME_SRC_PATH		= $(RUNTIME_ROOT)/$(SOURCE_ROOT)
RUNTIME_ASM_PATH		= $(RUNTIME_ROOT)/$(VER_ASSEMBLY_ROOT)
RUNTIME_BLD_PATH		= $(RUNTIME_ROOT)/$(BUILD_ROOT)
RUNTIME_OBJ_PATH		= $(RUNTIME_BLD_PATH)/$(OBJECT_ROOT)
RUNTIME_OBJASM_PATH		= $(RUNTIME_OBJ_PATH)/$(ASSEMBLY_ROOT)
RUNTIME_INC_PATHS		= $(COMMON_INCLUDES)

RUNTIME_CFLAGS      =	-O4,p $(COMMON_CCFLAGS)
RUNTIME_CCPATH      =	$(CW_GC_30A52)
RUNTIME_OBJECTS     =	$(RUNTIME_OBJ_PATH)/__mem.o \
                        $(RUNTIME_OBJ_PATH)/__va_arg.o \
                        $(RUNTIME_OBJ_PATH)/global_destructor_chain.o \
                        $(RUNTIME_OBJ_PATH)/runtime.o \
                        $(RUNTIME_OBJ_PATH)/__init_cpp_exceptions.o \
                        $(RUNTIME_OBJ_PATH)/Gecko_ExceptionPPC.o

$(RUNTIME_OBJ_PATH)/%.o: $(RUNTIME_SRC_PATH)/%.c
	$(call BuildCSources,$(RUNTIME_CCPATH),$(RUNTIME_CFLAGS),$(RUNTIME_INC_PATHS),$(INCLUDE_ROOT))

$(RUNTIME_OBJ_PATH)/%.o: $(RUNTIME_SRC_PATH)/%.cpp
	$(call BuildCPPSources,$(RUNTIME_CCPATH),$(RUNTIME_CFLAGS),$(RUNTIME_INC_PATHS),$(INCLUDE_ROOT))

$(RUNTIME_OBJASM_PATH)/%.o: $(RUNTIME_ASM_PATH)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(RUNTIME_BLD_PATH)/Runtime.PPCEABI.H.a: $(RUNTIME_OBJECTS)
	$(call LinkLibrary,$(RUNTIME_CCPATH),$?,$@)

Runtime: $(RUNTIME_BLD_PATH)/Runtime.PPCEABI.H.a
clean_Runtime:
	@echo Cleaning Runtime...
	@rm -rf $(RUNTIME_BLD_PATH)


