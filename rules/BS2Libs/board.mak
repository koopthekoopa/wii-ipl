BOARD_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
BOARD_CCPATH	=	$(CW_GC_30A52)
BOARD_OBJECTS	=	$(BS2_OBJASM_PATH)/board/iplBoard.o \
					$(BS2_OBJASM_PATH)/board/iplBoardObject.o \
					$(BS2_OBJASM_PATH)/board/iplBoardSD.o

DEPENDENCIES += $(BOARD_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/board/%.o: $(BS2_SRC_PATH)/board/%.cpp
	$(call BuildCPPSources,$(BOARD_CCPATH),$(BOARD_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/board/%.o: $(BS2_ASM_PATH)/board/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/board.a: $(BOARD_OBJECTS)
	$(call LinkLibrary,$(BOARD_CCPATH),$^,$@)



