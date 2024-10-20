RFL_SRC_PATH		= 	$(RVLFACELIB_ROOT)/$(SOURCE_ROOT)
RFL_BLD_PATH		= 	$(RVLFACELIB_ROOT)/$(BUILD_ROOT)
RFL_OBJ_PATH		= 	$(RFL_BLD_PATH)/$(OBJECT_ROOT)
RFL_SPLIT_PATH		= 	$(SPLIT_LIBOBJ_ROOT)/RVLFaceLib
RFL_INC_PATHS		= 	$(COMMON_INCLUDES)

RFL_CFLAGS      	=	-O4,p -enum int -inline auto -Cpp_exceptions on -proc gekko -fp hardware -RTTI off
RFL_CCPATH      	=	$(CW_GC_30A52)
RFL_OBJECTS     	=	$(RFL_SPLIT_PATH)/RFL_System.o \
                        $(RFL_SPLIT_PATH)/RFL_NANDLoader.o \
                        $(RFL_SPLIT_PATH)/RFL_NANDAccess.o \
                        $(RFL_SPLIT_PATH)/RFL_Model.o \
                        $(RFL_SPLIT_PATH)/RFL_MakeTex.o \
                        $(RFL_SPLIT_PATH)/RFL_Icon.o \
                        $(RFL_SPLIT_PATH)/RFL_HiddenDatabase.o \
                        $(RFL_SPLIT_PATH)/RFL_Database.o \
                        $(RFL_SPLIT_PATH)/RFL_Controller.o \
                        $(RFL_SPLIT_PATH)/RFL_MiddleDatabase.o \
                        $(RFL_SPLIT_PATH)/RFL_MakeRandomFace.o \
                        $(RFL_SPLIT_PATH)/RFL_DefaultDatabase.o \
                        $(RFL_SPLIT_PATH)/RFL_DataUtility.o \
                        $(RFL_SPLIT_PATH)/RFL_NWC24.o \
                        $(RFL_SPLIT_PATH)/RFL_Format.o

DEPENDENCIES += $(RFL_OBJECTS:.o=.d)

$(RFL_OBJ_PATH)/%.o: $(RFL_SRC_PATH)/%.c
	$(call BuildCSources,$(RFL_CCPATH),$(RFL_CFLAGS),$(RFL_INC_PATHS),$(INCLUDE_ROOT))

$(RFL_BLD_PATH)/RVLFaceLib.a: $(RFL_OBJECTS)
	$(call LinkLibrary,$(RFL_CCPATH),$^,$@)

RFL: $(RFL_BLD_PATH)/RVLFaceLib.a
clean_RFL:
	@echo Cleaning RVLFaceLib Dictionary...
	@rm -rf $(RFL_BLD_PATH)


