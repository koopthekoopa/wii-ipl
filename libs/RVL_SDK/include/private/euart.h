#ifndef PRIVATE_EUART_H
#define PRIVATE_EUART_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 EUARTError;

enum {
    EUART_ERROR_OK,
    EUART_ERROR_FATAL,
    EUART_ERROR_INVALID,
    EUART_ERROR_BUSY,
    EUART_ERROR_4,
    EUART_ERROR_EXI,
};

BOOL        EUARTInit();

EUARTError  InitializeUART(int unused);
EUARTError  WriteUARTN(const char* msg, u32 n);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_EUART_H
