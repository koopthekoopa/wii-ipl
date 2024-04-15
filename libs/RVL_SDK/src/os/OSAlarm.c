#include <revolution.h>

/*
    @Address 0x8152C8E4
    @Size 0x10
*/
void OSCreateAlarm(OSAlarm* alarm) {
    alarm->handler = NULL;
    alarm->tag = 0;
}


