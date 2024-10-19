NW_MATH_OBJECTS =	$(NW4R_OBJ_PATH)/math/math_arithmetic.o \
					$(NW4R_OBJ_PATH)/math/math_triangular.o \
					$(NW4R_OBJ_PATH)/math/math_types.o \

ALL_OBJECTS += $(NW_MATH_OBJECTS)

$(NW4R_OBJ_PATH)/math/%.o: $(NW4R_SRC_PATH)/math/%.cpp
	$(call BuildCPPSources,$(NW4R_CCPATH),$(NW4R_CFLAGS),$(NW4R_INC_PATHS),$(INCLUDE_ROOT))

$(NW4R_BLD_PATH)/libnw4r_math.a: $(NW_MATH_OBJECTS)
	$(call LinkLibrary,$(NW4R_CCPATH),$^,$@)


