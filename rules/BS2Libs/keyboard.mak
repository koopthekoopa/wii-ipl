KEYBOARD_OBJS	=	$(BS2_SPLIT_PATH)/keyboard/pckeyboard.o \
					$(BS2_SPLIT_PATH)/keyboard/cellphone.o \
					$(BS2_SPLIT_PATH)/keyboard/inputform.o \
					$(BS2_SPLIT_PATH)/keyboard/candidatebox.o \
					$(BS2_SPLIT_PATH)/keyboard/toolbar.o \
					$(BS2_SPLIT_PATH)/keyboard/predictlang.o \
					$(BS2_SPLIT_PATH)/keyboard/signwindow.o \
					$(BS2_SPLIT_PATH)/keyboard/zistring.o \
					$(BS2_SPLIT_PATH)/keyboard/textdrawer.o \
					$(BS2_SPLIT_PATH)/keyboard/nw4rmanager.o \
					$(BS2_SPLIT_PATH)/keyboard/manager.o \
					$(BS2_SPLIT_PATH)/keyboard/util.o \
					$(BS2_SPLIT_PATH)/keyboard/cp_data.o \
					$(BS2_SPLIT_PATH)/keyboard/sw_data.o \
					$(BS2_SPLIT_PATH)/keyboard/pk_data.o \
					$(BS2_SPLIT_PATH)/keyboard/langindependent_data.o \
					$(BS2_SPLIT_PATH)/keyboard/textinputbase.o \
					$(BS2_SPLIT_PATH)/keyboard/MyTiManager.o \
					$(BS2_SPLIT_PATH)/keyboard/MyTiInputForm.o \
					$(BS2_SPLIT_PATH)/keyboard/MyTiLetter.o \
					$(BS2_SPLIT_PATH)/keyboard/MyBg.o \
					$(BS2_SPLIT_PATH)/keyboard/debug.o \
					$(BS2_SPLIT_PATH)/keyboard/GUIManager.o \
					$(BS2_SPLIT_PATH)/keyboard/HKBManager.o \
					$(BS2_SPLIT_PATH)/keyboard/HWKeyboard.o \
					$(BS2_SPLIT_PATH)/keyboard/layout.o

ALL_OBJECTS += 	$(KEYBOARD_OBJS)

$(BS2_OBJ_PATH)/keyboard/%.o: $(BS2_SRC_PATH)/keyboard/%.cpp
	$(call BuildCPPSources,$(BS2_CMN_CCPATH),$(BS2_CMN_CFLAGS),$(BS2_INC_PATHS),$(INCLUDE_ROOT))

$(BS2_BLD_PATH)/keyboard.a: $(KEYBOARD_OBJS)
	$(call LinkLibrary,$(BS2_CMN_CCPATH),$^,$@)



