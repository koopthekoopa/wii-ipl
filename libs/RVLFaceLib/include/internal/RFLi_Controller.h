#ifndef RFLi_CONTROLLER_H
#define RFLi_CONTROLLER_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <RFL_Database.h>
#include <RFL_MiddleDatabase.h>

#include <revolution/mem.h>
#include <revolution/card.h>

#include <revolution/wpad.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_MAX_CTRL_BUFFER     10
#define RFL_MAX_REPLACE_BUFFER  2

typedef enum {
    RFLiCtrlCheckType_Both = 0,
    RFLiCtrlCheckType_OfficialOnly,
    RFLiCtrlCheckType_HiddenOnly,
} RFLiCtrlCheckType;

typedef struct {
    u32             mIdentifier;                // 0x00
    u16             mSecretFlag;                // 0x04

    u16             padding1;                   // 0x06
    RFLiCharData    mData[RFL_MAX_CTRL_BUFFER]; // 0x08
    u16             mDeleted;                   // 0x2EC
    u16             mCheckSum;                  // 0x2EE
} RFLiCtrlBuffer;

typedef struct {
    u8  isDelete[RFL_MAX_DATABASE]; // 0x00
} RFLiCtrlWriteDeleteList;

typedef struct {
    RFLiCtrlBuffer*                 mBuffer[WPAD_MAX_CONTROLLERS];          // 0x00
    BOOL                            mIsLoaded[WPAD_MAX_CONTROLLERS];        // 0x10
    RFLiCtrlBuffer*                 mReplaceBuf[RFL_MAX_REPLACE_BUFFER];    // 0x20

    BOOL                            mIsRead;                                // 0x28
    CARDFileInfo                    mFile;                                  // 0x2C

    void*                           mTmpReadBuffer;                         // 0x40
    void*                           mReadBuffer;                            // 0x44

    void*                           mWriteBuffer;                           // 0x48
    u16                             mWriteSize;                             // 0x4C
    u16                             mWriteOffset;                           // 0x4E

    u16                             mDeleted;                               // 0x50
    s32                             mWriteChannel;                          // 0x54
    const RFLiCtrlWriteDeleteList*  mWriteDeleteList;                       // 0x58

    u16                             mReadSize;                              // 0x5C
    u16                             mCurrentPos;                            // 0x5E
    BOOL                            mReadIsChMode;                          // 0x60
    u8                              mWriteCount;                            // 0x64
    u16                             mRWLen;                                 // 0x66
    u8                              mRetry;                                 // 0x68
    u8*                             mVerifyBuffer;                          // 0x6C
    RFLMiddleDatabase               mHiddenMDB;                             // 0x70
} RFLiCtrlManager;

void        RFLiInitCtrlBuf(MEMiHeapHead* sysHeap);
BOOL        RFLiCheckCtrlBufferCore(const RFLiCtrlBuffer* buffer, u8 index, RFLiCtrlCheckType type);

RFLErrcode  RFLiLoadControllerAsync(s32 chan, BOOL isChannel);
RFLErrcode  RFLiSaveControllerAsync(s32 chan, u16 deleted);

BOOL        RFLiFormatControllerData(s32 chan);

BOOL        RFLiSetControllerDataIdx(u16 srcIndex, s32 chan, u8 ctrlIndex);
BOOL        RFLiSetControllerData(const RFLiCharInfo* src, s32 chan, u8 index);
BOOL        RFLiGetControllerData(RFLiCharInfo* dst, s32 chan, u8 index, BOOL hiddenAvailable);

BOOL        RFLiIsAvailableControllerData(s32 chan, u8 index, RFLiCtrlCheckType type);

void        RFLiClearConrtollerDataIdx(s32 chan, u8 index);

#ifdef __cplusplus
}
#endif

#endif // RFLi_CONTROLLER_H
