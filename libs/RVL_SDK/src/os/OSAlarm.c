#include <revolution.h>

/*
 * @note Address 0x8152C8E4 (4.3U)
 * @note Size 0x10
 */
void OSCreateAlarm(OSAlarm* pAlarm) {
    pAlarm->handler = NULL;
    pAlarm->tag = 0;
}


