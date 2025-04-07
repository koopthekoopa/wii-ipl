#ifndef PRIVATE_DVD_H
#define PRIVATE_DVD_H

#include <revolution/types.h>
#include <revolution/os/OSAlarm.h>

#ifdef __cplusplus
extern "C" {
#endif

u32     __DVDGetCoverStatus();
void    __DVDResetWithNoSpinup();

BOOL    __DVDTestAlarm(OSAlarm* alarm);

enum {
    DVD_COVER_BUSY = 0,
    DVD_COVER_OPENED,
    DVD_COVER_CLOSED,
};

#define DVD_DEVICE_CODE (1 << 15)

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_DVD_H
