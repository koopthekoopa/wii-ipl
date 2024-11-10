GX_OBJECTS	=	$(SDK_OBJ_PATH)/gx/GXInit.o \
				$(SDK_OBJ_PATH)/gx/GXFifo.o \
				$(SDK_OBJ_PATH)/gx/GXAttr.o \
				$(SDK_OBJ_PATH)/gx/GXMisc.o \
				$(SDK_OBJ_PATH)/gx/GXGeometry.o \
				$(SDK_OBJ_PATH)/gx/GXFrameBuf.o \
				$(SDK_OBJ_PATH)/gx/GXLight.o \
				$(SDK_OBJ_PATH)/gx/GXTexture.o \
				$(SDK_OBJ_PATH)/gx/GXBump.o \
				$(SDK_OBJ_PATH)/gx/GXTev.o \
				$(SDK_OBJ_PATH)/gx/GXPixel.o \
				$(SDK_OBJ_PATH)/gx/GXDisplayList.o \
				$(SDK_OBJ_PATH)/gx/GXTransform.o \
				$(SDK_OBJ_PATH)/gx/GXPerf.o

DEPENDENCIES += $(GX_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/gx/%.o: $(SDK_SRC_PATH)/gx/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/gx.a: $(GX_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


