MEM_CARD_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/memoryCard/iplMemoryCard.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/iplMemoryCardBase.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/iplMemoryCardManager.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/iplGCSaveData.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/iplGCWindow.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/iplGCTextBalloon.o \
						$(BS2_OBJASM_PATH)/scene/memoryCard/CardSequence.o

ALL_OBJECTS += $(MEM_CARD_OBJECTS)

$(BS2_OBJ_PATH)/scene/memoryCard/%.o: $(BS2_SRC_PATH)/scene/memoryCard/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/memoryCard/%.o: $(BS2_ASM_PATH)/scene/memoryCard/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/memoryCard.a: $(MEM_CARD_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



