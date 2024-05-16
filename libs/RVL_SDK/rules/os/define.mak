OS_LIBNAME =	 os
OS_CFLAGS =		-O4,p -ipa file $(COMMON_CCFLAGS)
OS_INCLUDES =	$(RVL_SDK_COMMON_INC)
OS_CCPATH =		$(CW_GC_30A52)
OS_SOURCES =	OSAlarm.c \
				stubs.c \
				__ppc_eabi_init.cpp