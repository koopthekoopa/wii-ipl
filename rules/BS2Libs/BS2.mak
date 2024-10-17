BS2_OBJECTS =	$(BS2_OBJ_PATH)/BS2/BootStart.o \
				$(BS2_OBJ_PATH)/BS2/BS2Entry.o \
				$(BS2_OBJ_PATH)/BS2/BS2.o \
				$(BS2_OBJ_PATH)/BS2/BS2Init.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Mach.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Update.o \
				$(BS2_OBJASM_PATH)/BS2/BS2ParentalControl.o \
				$(BS2_OBJASM_PATH)/BS2/BringUp.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Reset.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Fatal.o

ALL_OBJECTS += $(BS2_OBJECTS)

$(BS2_OBJ_PATH)/BS2/%.o: $(BS2_SRC_PATH)/BS2/%.c
	$(call BuildCSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/BS2/%.o: $(BS2_ASM_PATH)/BS2/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/BS2.a: $(BS2_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



