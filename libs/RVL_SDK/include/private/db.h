#ifndef REVOLUTION_DB_H
#define REVOLUTION_DB_H

#include <revolution/types.h>
#include <revolution/os/OSException.h>

BOOL    __DBIsExceptionMarked(__OSException exception);

void    DBPrintf(const char* format, ...);

#define DB_EXCEPTIONOFFSET_USEDEBUGGER  0x00
#define DB_EXCEPTIONOFFSET_MASK         0x04
#define DB_EXCEPTIONOFFSET_HOOK         0x08
#define DB_EXCEPTIONOFFSET_HOOKLR       0x0C

#endif // REVOLUTION_DB_H
