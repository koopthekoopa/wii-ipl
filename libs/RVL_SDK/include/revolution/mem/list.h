#ifndef REVOLUTION_MEM_LIST_H
#define REVOLUTION_MEM_LIST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct MEMList {
    void*   head;   // 0x00
    void*   tail;   // 0x04

    u16     length; // 0x08
    u16     offset; // 0x0A
} MEMList;

typedef struct MEMLink {
    void*   prev;   // 0x00
    void*   next;   // 0x04
} MEMLink;

void    MEMInitList(MEMList* list, u16 offset);

void    MEMAppendListObject(MEMList* list, void* object);
void    MEMRemoveListObject(MEMList* list, void* object);

void*   MEMGetNextListObject(MEMList* list, void* object);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_MEM_LIST_H
