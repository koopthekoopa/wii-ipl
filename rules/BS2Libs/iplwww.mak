IPL_WWW_CFLAGS	=	-O4,s -ipa file $(COMMON_CCFLAGS)
IPL_WWW_CCPATH	=	$(CW_GC_30A52)
IPL_WWW_OBJECTS	=	$(BS2_OBJASM_PATH)/iplwww/www_browser.o \
					$(BS2_OBJASM_PATH)/iplwww/www_message.o \
					$(BS2_OBJASM_PATH)/iplwww/www_surface.o \
					$(BS2_OBJASM_PATH)/iplwww/www_thread.o \
					$(BS2_OBJ_PATH)/iplwww/www_print.o \
					$(BS2_OBJASM_PATH)/iplwww/www_window.o \
					$(BS2_OBJASM_PATH)/iplwww/www_transition.o \
					$(BS2_OBJASM_PATH)/iplwww/www_wiisetting.o \
					$(BS2_OBJASM_PATH)/iplwww/www_arcreader.o

DEPENDENCIES += $(IPL_WWW_OBJECTS:.o=.d)

$(BS2_OBJ_PATH)/iplwww/%.o: $(BS2_SRC_PATH)/iplwww/%.cpp
	$(call BuildCPPSources,$(IPL_WWW_CCPATH),$(IPL_WWW_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_OBJASM_PATH)/iplwww/%.o: $(BS2_ASM_PATH)/iplwww/%.s
	$(call BuildASMSources,$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/iplwww.a: $(IPL_WWW_OBJECTS)
	$(call LinkLibrary,$(IPL_WWW_CCPATH),$(IPL_WWW_OBJECTS),$@)



