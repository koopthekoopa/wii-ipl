#ifndef PRIVATE_CDB_ATTR_H
#define PRIVATE_CDB_ATTR_H

#include <revolution/cdb/CDBTypes.h>
#include <revolution/cdb/CDBRecord.h>

#include <revolution/vf.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef struct _CDBAttrSignature {
    u8  sha1Hmac[20];   // 0x00
    u8  unk_0x14[0x1BC - 0x14];
} CDBAttrSignature;

#define CDB_ATTR_BUF_MAGIC_LEN      7

#define CDB_ATTR_BUF_MAX_DESC_LEN   88
#define CDB_ATTR_BUF_KEY_STRING_LEN CDB_RECORD_KEY_STRING_LEN

#define CDB_ATTR_BUF_KEY_IV0_LEN    2
#define CDB_ATTR_BUF_KEY_IV1_LEN    8
#define CDB_ATTR_BUF_KEY_IV_LEN     (CDB_ATTR_BUF_KEY_IV0_LEN * CDB_ATTR_BUF_KEY_IV1_LEN)

typedef struct _CDBAttrBuf {
    char                magic[CDB_ATTR_BUF_MAGIC_LEN];          // 0x00 (Always "CDBFILE")
    s8                  version;                                // 0x07

    u64                 wiiId;                                  // 0x08

    u8                  descLength;                             // 0x10
    u8                  padding_0x11[3];
    char                desc[CDB_ATTR_BUF_MAX_DESC_LEN];        // 0x14
    u32                 padding_0x6C;

    CDBId               cdbID;                                  // 0x70

    u32                 modifiedCount;                          // 0x74
    u32                 fileSize;                               // 0x78
    u32                 lastModifiedDate;                       // 0x7C

    char                keyString[CDB_ATTR_BUF_KEY_STRING_LEN]; // 0x80

    s8                  iv[CDB_ATTR_BUF_KEY_IV_LEN];            // 0xA0

    CDBAttrSignature    signature;                              // 0xB0

    u8                  padding_0x26C[0x400 - 0x26C];
} CDBAttrBuf;

// Do not aling over 4 bytes
#pragma pack(push, 4)

typedef struct _CDBAttr {
    CDBAttrBuf  buf;        // 0x00
    BOOL        unk_0x400;  // 0x400
    BOOL        unk_0x404;  // 0x404
    BOOL        unk_0x408;  // 0x408
} CDBAttr;

#pragma pack(pop)

CDBErr  CDBAttrCheckAttrBuf(CDBAttr* attr);

void    CDBAttrInit(CDBAttr* attr);

CDBErr  CDBAttrCreateOnNAND(CDBAttr* attr, const char* desc, u32 lastModifiedDate);

CDBErr  CDBAttrSetModifiedDate(CDBAttr* attr, u32 modifiedDate);

CDBErr  CDBAttrSetModifiedCount(CDBAttr* attr, u32 modifiedCount);
CDBErr  CDBAttrGetModifiedCount(CDBAttr* attr, u32* modifiedCount);

CDBErr  CDBAttrGetIDNumber(CDBAttr* attr, CDBId* cdbID);
CDBErr  CDBAttrSetWiiId(CDBAttr* attr, u64 wiiId);

void    CDBAttrSetKeyStr(CDBAttr* attr, CDBRecordKey* recordKey);
void    CDBAttrGetKeyStr(CDBAttr* attr, char* keyString);

u32     CDBAttrSetIV(CDBAttr* attr, u32 seed);

void    CDBAttrInitIV(CDBAttr* attr);

u32     CDBAttrSetIV(CDBAttr* attr, u32 seed);
void    CDBAttrGetIV(CDBAttr* attr, u8* iv);

void    CDBAttrGetSignature(CDBAttr* attr, CDBAttrSignature* signature);
void    CDBAttrClearSignature(CDBAttr* attr);

void    CDBAttrSetFileSize(CDBAttr* attr, u32 fileSize);
void    CDBAttrGetFileSize(CDBAttr* attr, u32* fileSize);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // PRIVATE_CDB_ATTR_H
