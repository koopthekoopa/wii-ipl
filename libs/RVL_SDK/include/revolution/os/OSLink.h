

#ifndef REVOLUTION_OS_LINK_H
#define REVOLUTION_OS_LINK_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u32 OSModuleID;
typedef struct OSModuleInfo OSModuleInfo;

typedef struct OSModuleQueue {
    OSModuleInfo* head;
    OSModuleInfo* tail;
} OSModuleQueue;

typedef struct OSModuleLink {
    OSModuleInfo* next;
    OSModuleInfo* prev;
} OSModuleLink;

struct OSModuleInfo {
    OSModuleID id;         // 0x00
    OSModuleLink link;     // 0x04

    u32 numSections;       // 0x0C
    u32 sectionInfoOffset; // 0x10

    u32 nameOffset;        // 0x14
    u32 nameSize;          // 0x18

    u32 version;           // 0x1C
};

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_LINK_H
