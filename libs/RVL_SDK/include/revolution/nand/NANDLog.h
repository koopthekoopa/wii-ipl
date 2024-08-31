#ifndef REVOLUTION_NAND_LOGGING_H
#define REVOLUTION_NAND_LOGGING_H

#include <revolution/os.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*NANDLoggingCallback)(BOOL);

BOOL NANDLoggingAddMessageAsync(NANDLoggingCallback callback, const char* format, ...);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NAND_LOGGING_H