ZI8_SRC_PATH		= 	$(EZI8_DICT_ROOT)/$(SOURCE_ROOT)
ZI8_ASM_PATH		= 	$(EZI8_DICT_ROOT)/$(ASSEMBLY_ROOT)
ZI8_BLD_PATH		= 	$(EZI8_DICT_ROOT)/$(BUILD_ROOT)
ZI8_OBJ_PATH		= 	$(ZI8_BLD_PATH)/$(OBJECT_ROOT)
ZI8_OBJASM_PATH		= 	$(ZI8_OBJ_PATH)/$(ASSEMBLY_ROOT)
ZI8_INC_PATHS		= 	$(COMMON_INCLUDES)

ZI8_CFLAGS      	=	-O4,p -enum int -inline auto -Cpp_exceptions on -proc gekko -fp hardware -RTTI off
ZI8_CCPATH      	=	$(CW_GC_30A52)
ZI8_OBJECTS     	=	$(ZI8_OBJASM_PATH)/zi8etzx.o \
                        $(ZI8_OBJASM_PATH)/zi8address.o \
                        $(ZI8_OBJASM_PATH)/zi8convert.o \
                        $(ZI8_OBJASM_PATH)/zi8letter.o \
                        $(ZI8_OBJASM_PATH)/zi8alpha.o \
                        $(ZI8_OBJASM_PATH)/zi8alt.o \
                        $(ZI8_OBJASM_PATH)/zi8cand.o  \
                        $(ZI8_OBJASM_PATH)/zi8cinfo.o \
                        $(ZI8_OBJASM_PATH)/zi8copy.o \
                        $(ZI8_OBJASM_PATH)/zi8dawg.o \
                        $(ZI8_OBJASM_PATH)/zi8getcand.o \
                        $(ZI8_OBJASM_PATH)/zi8init.o \
                        $(ZI8_OBJASM_PATH)/zi8is.o \
                        $(ZI8_OBJASM_PATH)/zi8match.o \
                        $(ZI8_OBJASM_PATH)/zi8utils.o \
                        $(ZI8_OBJASM_PATH)/zi8pud2.o \
                        $(ZI8_OBJASM_PATH)/zi8punct.o \
                        $(ZI8_OBJASM_PATH)/zi8uwd.o \
                        $(ZI8_OBJASM_PATH)/zi8dawg2.o \
                        $(ZI8_OBJASM_PATH)/zi8candkorea.o \
                        $(ZI8_OBJASM_PATH)/zi8error.o \
                        $(ZI8_OBJASM_PATH)/zi8keymatch.o \
                        $(ZI8_OBJASM_PATH)/zi8oemdata.o \
                        $(ZI8_OBJASM_PATH)/zi8prepare.o

DEPENDENCIES += $(ZI8_OBJECTS:.o=.d)

$(ZI8_OBJ_PATH)/%.o: $(ZI8_SRC_PATH)/%.c
	$(call BuildCSources,$(ZI8_CCPATH),$(ZI8_CFLAGS),$(ZI8_INC_PATHS),$(INCLUDE_ROOT))

$(ZI8_OBJASM_PATH)/%.o: $(ZI8_ASM_PATH)/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(ZI8_BLD_PATH)/zi8clib.a: $(ZI8_OBJECTS)
	$(call LinkLibrary,$(ZI8_CCPATH),$^,$@)

Zi8Lib: $(ZI8_BLD_PATH)/zi8clib.a
clean_Zi8Lib:
	@echo Cleaning Zi8 Dictionary...
	@rm -rf $(ZI8_BLD_PATH)


