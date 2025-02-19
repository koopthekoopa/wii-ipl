#ifndef TRK_DOLPHIN_OS_H
#define TRK_DOLPHIN_OS_H

#include <revolution/os/OSInterrupt.h>

typedef void            (*DBCommFunc)();
typedef unsigned int    (*DBPollFunc)();
typedef void            (*DBCommInitFunc)(volatile unsigned char**, __OSInterruptHandler);
typedef int             (*DBCommReadFunc)(void*, int);
typedef int             (*DBCommWriteFunc)(const void*, int);

typedef struct DBCommTable {
    DBCommInitFunc  initialize_func;        // 0x00
    DBCommFunc      init_interrupts_func;   // 0x04
    DBCommFunc      shutdown_func;          // 0x08

    DBPollFunc      peek_func;              // 0x0C

    DBCommReadFunc  read_func;              // 0x10
    DBCommWriteFunc write_func;             // 0x14

    DBCommFunc      open_func;              // 0x18
    DBCommFunc      close_func;             // 0x1C

    DBCommFunc      pre_continue_func;      // 0x20
    DBCommFunc      post_stop_func;         // 0x24
} DBCommTable;

void    EnableEXI2Interrupts();

#endif // TRK_DOLPHIN_OS_H
