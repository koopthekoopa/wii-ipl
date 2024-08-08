#ifndef MSL_STDARG_H
#define MSL_STDARG_H

typedef enum {
    arg_ARGPOINTER,
    arg_WORD,
    arg_DOUBLEWORD,
    arg_REAL,
} _va_arg_type;

typedef struct __va_list_struct {
    char    gpr;
    char    fpr;
    char    reserved[2];
    char*   input_arg_area;
    char*   reg_save_area;
} va_list[1];

char* __va_arg(va_list args, _va_arg_type type);

#define va_start(list, arg) ((void)arg, __builtin_va_info(&list))
#define va_end(list)        ((void)list)
#define va_arg(list, type)  (*(type*)__va_arg(list, _var_arg_typeof(type)))

#endif // MSL_STDARG_H


