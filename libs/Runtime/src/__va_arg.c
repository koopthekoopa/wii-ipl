#include <decomp.h>
#include <stdarg.h>

char* __va_arg(va_list args, _va_arg_type type) {
    char* addr;
    char* pReg = &(args->gpr);
    int reg = args->gpr;
    int maxReg = 8;
    int size = 4;
    int inc = 1;
    int even = 0;
    int fprOff = 0;
    int regSize = 4;

    if (type == arg_REAL) {
        pReg = &args->fpr;
        reg = args->fpr;
        size = 8;
        fprOff = 8 * 4;
        regSize = 8;
    }

    if (type == arg_DOUBLEWORD) {
        size = 8;
        maxReg = maxReg - 1;
        if (reg & 1)
            even = 1; 
        inc = 2;
    }

    if (reg < maxReg) {
        reg += even;
        addr = args->reg_save_area + fprOff + (reg * regSize);
        *pReg = reg + inc;
    }
    else {
        *pReg = 8;
        addr = args->input_arg_area;
        addr = (char*)PTR_ROUNDUP(addr, size);
        args->input_arg_area = addr + size;
    }

    if (type == arg_ARGPOINTER) {
        addr = *((char**)addr);
    }

    return addr;
}
