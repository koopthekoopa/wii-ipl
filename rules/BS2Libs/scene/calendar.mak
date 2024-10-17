CALENDAR_OBJECTS	=	$(BS2_OBJASM_PATH)/scene/calendar/iplCalendar.o \
						$(BS2_OBJASM_PATH)/scene/calendar/iplDate.o

ALL_OBJECTS += $(CALENDAR_OBJECTS)

$(BS2_OBJ_PATH)/scene/calendar/%.o: $(BS2_SRC_PATH)/scene/calendar/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/scene/calendar/%.o: $(BS2_ASM_PATH)/scene/calendar/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/scene/calendar.a: $(CALENDAR_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



