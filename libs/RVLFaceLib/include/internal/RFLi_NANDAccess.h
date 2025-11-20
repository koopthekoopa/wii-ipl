#ifndef RFLi_NAND_ACCESS_H
#define RFLi_NAND_ACCESS_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <revolution/mem/heapCommon.h>
#include <revolution/nand.h>
#include <revolution/os/OSAlarm.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_NAND_ACCESS_MAX 2

typedef enum {
    RFLiAsyncTag_WriteFile = 0,
    RFLiAsyncTag_WriteCloseFile,
    RFLiAsyncTag_ReadFile,
    RFLiAsyncTag_ReadCloseFile,
    RFLiAsyncTag_ReadCache,
    RFLiAsyncTag_ReadCacheClose,
    RFLiAsyncTag_WriteHDBFile,
    RFLiAsyncTag_WriteHDBFileClose,
    RFLiAsyncTag_ReadHDBFile,
    RFLiAsyncTag_ReadHDBFileClose,
    RFLiAsyncTag_CreateAsync,
    RFLiAsyncTag_OpenAsync,
    RFLiAsyncTag_SeekAsync,
    RFLiAsyncTag_ReadAsync,
    RFLiAsyncTag_WriteAsync,
    RFLiAsyncTag_CloseAsync,
    RFLiAsyncTag_GetlengthAsync,
    RFLiAsyncTag_DeleteAsync,
    RFLiAsyncTag_CreateDirAsync,

    RFLiAsyncTag_Max
} RFLiAsyncTag;

typedef enum {
    RFLiFileType_Database = 0,
    RFLiFileType_Resource,

    RFLiFileType_Max,
} RFLiFileType;

typedef struct {
    RFLiAsyncTag tag;   // 0x00
    RFLiFileType type;  // 0x04
} RFLiCallbackTag;

typedef struct {
    RFLSimpleCB callback;   // 0x00
    union {
        struct {
            char    filename[NAND_MAX_PATH+1];  // 0x00
            u8      openmode;                   // 0x41
            u8      permission;                 // 0x42
            u8      attribute;                  // 0x43
        } openinfo; // 0x04
        struct {
            void*   dst;    // 0x00
            u32     size;   // 0x04
            s32     offset; // 0x08
        } readinfo; // 0x04
        struct {
            void*   src;    // 0x00
            u32     size;   // 0x04
            s32     offset; // 0x08
        } writeinfo; // 0x04
        struct {
            u8  count;  // 0x00
        } closeinfo; // 0x04
        struct {
            u32*    dst;    // 0x00
        } getlengthinfo; // 0x04
    };
    NANDFileInfo        workingFile;    // 0x48
    NANDCommandBlock    commandBlock;   // 0xD4
    RFLiCallbackTag     callbackTag;    // 0x190

    OSAlarm             alarm;          // 0x198
    RFLiFileType        alarmdata;      // 0x1C8

    RFLSimpleCBArg      retryCallback;  // 0x1CC
    u8                  retryCount;     // 0x1D0

    void*               safeBuffer;     // 0x1D4
    u8                  opened;         // 0x1D8
} RFLiNANDAccessInfo;

void                RFLiInitAccessInfo(MEMiHeapHead* heap);
void                RFLiExitAccessInfo();

BOOL                RFLiIsWorking();
void                RFLiStartWorking();

void                RFLiEndWorkingReason(RFLErrcode errcode, s32 reason);
void                RFLiEndWorking(RFLErrcode errcode);

NANDCommandBlock*   RFLiSetCommandBlock(RFLiFileType type, RFLiAsyncTag tag);

RFLiAsyncTag        RFLiGetTag(NANDCommandBlock* block);
RFLiFileType        RFLiGetType(NANDCommandBlock* block);

NANDFileInfo*       RFLiGetWorkingFile(RFLiFileType type);

RFLErrcode          RFLiOpenAsync(RFLiFileType type, u8 openmode, RFLSimpleCB cb);
RFLErrcode          RFLiReadAsync(RFLiFileType type, void* dst, u32 size, RFLSimpleCB cb, s32 seek_ofs);
RFLErrcode          RFLiWriteAsync(RFLiFileType type, void* src, u32 size, RFLSimpleCB cb, s32 seek_ofs);
RFLErrcode          RFLiCloseAsync(RFLiFileType type, RFLSimpleCB cb);
RFLErrcode          RFLiGetLengthAsync(RFLiFileType type, u32* dst, RFLSimpleCB cb);
RFLErrcode          RFLiDeleteAsync(RFLiFileType type, RFLSimpleCB cb);
RFLErrcode          RFLiCreateSaveDirAsync(RFLSimpleCB cb);

#ifdef __cplusplus
}
#endif

#endif // RFLi_NAND_ACCESS_H
