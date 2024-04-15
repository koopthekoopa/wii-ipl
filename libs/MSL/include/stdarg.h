#ifndef MSL_STDARG_H
#define MSL_STDARG_H

typedef enum {
    arg_ARGPOINTER,
    arg_WORD,
    arg_DOUBLEWORD,
    arg_REAL,
} _va_arg_type;

typedef struct {
	char gpr;
	char fpr;
	char reserved[2];
	char* input_arg_area;
	char* reg_save_area;
} va_list[1];

char* __va_arg(va_list args, _va_arg_type type);

#endif // MSL_STDARG_H


