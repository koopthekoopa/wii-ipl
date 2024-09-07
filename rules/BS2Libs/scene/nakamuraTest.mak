NAKAMURA_TEST_OBJS	=	$(BS2_OBJASM_PATH)/scene/nakamuraTest/iplContest.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSIUtility.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSIAvailable.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSIMemory.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSISocketWii.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSISocket.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSISha1.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/GSINatNegotiate.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/iplNakamuraTest.o \
						$(BS2_OBJASM_PATH)/scene/nakamuraTest/iplNetSetup.o

DEPENDENCIES += $(NAKAMURA_TEST_OBJS:.o=.d)

$(BS2_OBJ_PATH)/nakamuraTest/%.o: $(BS2_SRC_PATH)/nakamuraTest/%.c
	$(call BuildCSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJ_PATH)/scene/nakamuraTest/%.o: $(BS2_SRC_PATH)/scene/nakamuraTest/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/nakamuraTest/%.o: $(BS2_ASM_PATH)/scene/nakamuraTest/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/nakamuraTest.a: $(NAKAMURA_TEST_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



