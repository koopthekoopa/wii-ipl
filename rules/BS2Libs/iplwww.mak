IPL_WWW_OBJECTS	=	$(BS2_SPLIT_PATH)/iplwww/www_browser.o \
					$(BS2_OBJ_PATH)/iplwww/www_message.o \
					$(BS2_SPLIT_PATH)/iplwww/www_surface.o \
					$(BS2_OBJ_PATH)/iplwww/www_thread.o \
					$(BS2_OBJ_PATH)/iplwww/www_print.o \
					$(BS2_SPLIT_PATH)/iplwww/www_window.o \
					$(BS2_SPLIT_PATH)/iplwww/www_transition.o \
					$(BS2_SPLIT_PATH)/iplwww/www_wiisetting.o \
					$(BS2_SPLIT_PATH)/iplwww/www_arcreader.o

ALL_OBJECTS += $(IPL_WWW_OBJECTS)

$(BS2_OBJ_PATH)/iplwww/%.o: $(BS2_SRC_PATH)/iplwww/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/iplwww.a: $(IPL_WWW_OBJECTS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



