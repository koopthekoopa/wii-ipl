#ifndef PRIVATE_DVD_H
#define PRIVATE_DVD_H

#include <revolution/types.h>

#include <revolution/dvd.h>
#include <revolution/esp.h>

#include <revolution/os/OSAlarm.h>

#include <revolution/esp.h>

#ifdef __cplusplus
extern "C" {
#endif

#define DVD_DEVICE_CODE (1 << 15)

u32     __DVDGetCoverStatus();
void    __DVDResetWithNoSpinup();

BOOL    __DVDTestAlarm(OSAlarm* alarm);
BOOL    __DVDLowTestAlarm(OSAlarm* alarm);

/* DVD PRIVATE */

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_DVD_H
