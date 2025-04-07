#ifndef PRIVATE_OS_EXEC_H
#define PRIVATE_OS_EXEC_H

#include <revolution/types.h>

#include <revolution/esp.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSExecParams {
    BOOL    valid;          // 0x00

    u32     restartCode;    // 0x04
    u32     bootDol;        // 0x08

    void*   regionStart;    // 0x0C
    void*   regionEnd;      // 0x10

    BOOL    argsUseDefault; // 0x14
    void*   argsAddr;       // 0x18
} OSExecParams;

#define EXEC_WORK_ARENA_LO  ((void*)0x81280000)
#define EXEC_WORK_ARENA_HI  ((void*)0x812F0000)

#define EXEC_SYSTEM_MENU_ID 0x0000000100000002

void    __OSGetExecParams(OSExecParams *params);
BOOL    __OSCheckCompanyCode(ESTitleId titleId, BOOL diskApp);
BOOL    __OSCheckTmdCountryCode(ESTmdView* tmd);

int     __OSGetValidTicketIndex(ESTicketView *ticketViewList, u32 numTickets);

void    __OSLaunchMenu();
void    __OSLaunchTitle(ESTitleId titleId);

void    __OSLaunchTitlevForSystem(ESTitleId titleId, u32 launchCode, const char** argv);
void    __OSLaunchTitlelForSystem(ESTitleId titleId, u32 launchCode, const char* arg0, ...);

void    __OSReturnToMenul(u32 launchArg, const char *arg0, ...);

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_EXEC_H
