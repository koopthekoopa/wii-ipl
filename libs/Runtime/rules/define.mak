RUNTIME_COMMON_INC =	$(COMMON_INCLUDES)

RUNTIME_LIBNAME	=	Runtime.PPCEABI.H
RUNTIME_CFLAGS =	-O4,p $(COMMON_MW_CCFLAGS)
RUNTIME_INCLUDES =	$(RUNTIME_COMMON_INC)
RUNTIME_CCPATH =	$(CW_GC_30A52)
RUNTIME_SOURCES =	__mem.c \
					__va_arg.c \
					global_destructor_chain.c \
					runtime.c \
					__init_cpp_exceptions.cpp \
					Gecko_ExceptionPPC.cpp


