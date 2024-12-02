ATOK_SRC_PATH		= 	$(JSATOK_ROOT)/$(SOURCE_ROOT)
ATOK_BLD_PATH		= 	$(JSATOK_ROOT)/$(BUILD_ROOT)
ATOK_OBJ_PATH		= 	$(ATOK_BLD_PATH)/$(OBJECT_ROOT)
ATOK_SPLIT_PATH		= 	$(SPLIT_LIBOBJ_ROOT)/RVLMiddleware/ATOKDict
ATOK_INC_PATHS		= 	$(COMMON_INCLUDES)

ATOK_CFLAGS      	=	-O4,p -enum int -inline auto -Cpp_exceptions off -proc gekko -fp hardware -RTTI off
# Used compiler not found, use A5.2 instead and hope...
ATOK_CCPATH      	=	$(CW_GC_30A52)
ATOK_OBJECTS     	=	$(ATOK_SPLIT_PATH)/atok.o \
                        $(ATOK_SPLIT_PATH)/atok_eng.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApLib.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApAICore.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApAIDic.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApCore.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApDic.o \
                        $(ATOK_SPLIT_PATH)/MonPE/ApJACNorm.o

DEPENDENCIES += $(ATOK_OBJECTS:.o=.d)

$(ATOK_OBJ_PATH)/%.o: $(ATOK_SRC_PATH)/%.c
	$(call BuildCSources,$(ATOK_CCPATH),$(ATOK_CFLAGS),$(ATOK_INC_PATHS),$(INCLUDE_ROOT))

$(ATOK_BLD_PATH)/atok.a: $(ATOK_OBJECTS)
	$(call LinkLibrary,$(ATOK_CCPATH),$^,$@)

ATOK: $(ATOK_BLD_PATH)/atok.a
clean_ATOK:
	@echo Cleaning ATOK Dictionary...
	@rm -rf $(ATOK_BLD_PATH)


