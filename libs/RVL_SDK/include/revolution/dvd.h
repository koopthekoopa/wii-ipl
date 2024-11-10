#ifndef REVOLUTION_DVD_H
#define REVOLUTION_DVD_H

#include <revolution/types.h>
#include <revolution/os/OSAlarm.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    char    gameName[4];
    char    company[2];
    
    u8      diskNumber;
    u8      gameVersion;
    
    u8      streaming;
    u8      streamingBufSize;
    
    u8      padding[14];
    
    u32     rvlMagic;   // Wii disc magic
    u32     gcMagic;    // GameCube disc magic
} DVDDiskID;

BOOL __DVDTestAlarm(OSAlarm*);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_DVD_H


