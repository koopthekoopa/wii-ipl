SI_OBJECTS	=	$(SDK_OBJ_PATH)/si/SIBios.o \
				$(SDK_OBJ_PATH)/si/SISamplingRate.o

DEPENDENCIES += $(SI_OBJECTS:.o=.d)

$(SDK_OBJ_PATH)/si/%.o: $(SDK_SRC_PATH)/si/%.c
	$(call BuildCSources,$(SDK_CCPATH),$(SDK_CFLAGS),$(SDK_INC_PATHS),$(INCLUDE_ROOT))

$(SDK_BLD_PATH)/si.a: $(SI_OBJECTS)
	$(call LinkLibrary,$(SDK_CCPATH),$^,$@)


