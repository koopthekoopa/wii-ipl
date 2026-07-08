#ifndef REVOLUTION_NUP_H
#define REVOLUTION_NUP_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

#ifdef __cplusplus
extern "C" {
#endif

void* NUP_Init(MEMAllocator* allocator);
int NUP_Start(void* instance, const char* nus, const char* isoCountryCode, void* productAreaString, int);
int NUP_GetStatus(void* instance, u64*);
int NUP_Finish(void* instance);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NUP_H
