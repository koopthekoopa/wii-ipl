#ifndef VF_D_HASH_H
#define VF_D_HASH_H

#include <revolution/types.h>

void dHash_InitHashTable();

int dHash_GetArgW(const u16* name);
int dHash_GetArg(const char* name);

BOOL dHash_SetArgW(const u16* name, u8 arg);
BOOL dHash_SetArg(const char* name, u8 arg);

BOOL dHash_DeleteDataW(const u16* name);
BOOL dHash_DeleteData(const char* name);

#endif  // VF_D_HASH_H
