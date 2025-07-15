#ifndef PRIVATE_CDB_CRYPT_H
#define PRIVATE_CDB_CRYPT_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBCryptBuf {
    union {
        u8      buffer[0xFB00*4];
        u32     buffer32[0xFB00];
    };                      // 0x00
    
    u32     unk_0x3EC00;
    u32     unk_0x3EC04;
    BOOL    allocated;      // 0x3EC08
    u8      unk_0x3EC0C[0x34];
} CDBCryptBuf;

void CDBCryptBufSysInit(CDBCryptBuf* cryptBuf);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_CRYPT_H
