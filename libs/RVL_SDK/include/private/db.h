#ifndef REVOLUTION_DB_H
#define REVOLUTION_DB_H

#include <revolution/types.h>
#include <revolution/os/OSException.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct DBInterface {
    u32     bPresent;                   // 0x00
    u32     exceptionMask;              // 0x04
    void    (*ExceptionDestination)();  // 0x08
    void*   exceptionReturn;            // 0x0C
} DBInterface;

extern DBInterface* __DBInterface;

void    __DBExceptionDestination();
BOOL    __DBIsExceptionMarked(__OSException exception);

void    DBPrintf(const char* format, ...);

#define DB_EXCEPTIONOFFSET_USEDEBUGGER  0x00
#define DB_EXCEPTIONOFFSET_MASK         0x04
#define DB_EXCEPTIONOFFSET_HOOK         0x08
#define DB_EXCEPTIONOFFSET_HOOKLR       0x0C

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DB_H
