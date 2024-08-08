BS2_CFLAGS =	-O4,s -ipa file $(COMMON_CCFLAGS)
BS2_CCPATH =	$(CW_GC_30A52)
BS2_OBJECTS =	$(BS2_OBJ_PATH)/BS2/BootStart.o \
				$(BS2_OBJ_PATH)/BS2/BS2Entry.o \
				$(BS2_OBJ_PATH)/BS2/BS2.o # stub \
				$(BS2_OBJASM_PATH)/BS2/BS2Init.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Mach.o \
				$(BS2_OBJASM_PATH)/BS2/BS2Update.o \
				$(BS2_OBJASM_PATH)/BS2/BS2ParentalControl.o \
				$(BS2_OBJASM_PATH)/BS2/BringUp.o

DEPENDENCIES += $(BS2_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/BS2/%.o: $(BS2_SRC_PATH)/BS2/%.c
	$(call BuildCSources,$(BS2_CCPATH),$(BS2_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/BS2/%.o: $(BS2_SRC_PATH)/BS2/%.cpp
	$(call BuildCPPSources,$(BS2_CCPATH),$(BS2_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/BS2/%.o: $(BS2_ASM_PATH)/BS2/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/BS2.a: $(BS2_OBJECTS)
	$(call LinkLibrary,$(BS2_CCPATH),$(BS2_OBJECTS),$@)



