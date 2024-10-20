NW_LYT_OBJECTS =	$(NW4R_SPLIT_PATH)/lyt/lyt_pane.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_group.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_layout.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_layout.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_picture.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_textbox.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_window.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_bounding.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_material.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_drawinfo.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_animation.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_resourceAccessor.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_arcResourceAccessor.o \
                    $(NW4R_SPLIT_PATH)/lyt/lyt_common.o

DEPENDENCIES += $(NW_LYT_OBJECTS:.o=.d)

$(NW4R_OBJ_PATH)/lyt/%.o: $(NW4R_SRC_PATH)/lyt/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_lyt.a: $(NW_LYT_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


