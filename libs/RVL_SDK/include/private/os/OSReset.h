#ifndef PRIVATE_OS_RESET_H
#define PRIVATE_OS_RESET_H

#include <revolution/esp.h>

enum {
    OS_SHUTDOWN_STANDBY = 2, /* or idle */
    OS_SHUTDOWN_RESTART = 4,
    OS_SHUTDOWN_RETURN_MENU = 5,
    OS_SHUTDOWN_LAUNCH = 6,
};

enum {
    OS_SETTING_NONE = 0,
    OS_SETTING_CALENDAR,
    OS_SETTING_DISPLAY,
    OS_SETTING_SOUND,
    OS_SETTING_PARENTAL_CONTROL,
    OS_SETTING_INTERNET,
    OS_SETTING_WIICONNECT24,
    OS_SETTING_UPDATE,
};

BOOL    __OSCallShutdownFunctions(BOOL final, u32 event);

void    __OSShutdownDevices(u32 id);

void    __OSReturnToMenuForError();
void    __OSHotResetForError();

u8      __OSGetDiscState(u8 prev);

#endif // PRIVATE_OS_RESET_H
