#ifndef RFLi_SYSTEM_H
#define RFLi_SYSTEM_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <internal/RFLi_Database.h>
#include <internal/RFLi_HiddenDatabase.h>

#include <internal/RFLi_NANDLoader.h>
#include <internal/RFLi_NANDAccess.h>

#include <internal/RFLi_Controller.h>

#include <revolution/mem/heapCommon.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_MAC_ADDR_LENGTH 6

typedef struct {
    void*               mWorkBuffer;                    // 0x00

    MEMiHeapHead*       mRootHeap;                      // 0x04
    MEMiHeapHead*       mSystemHeap;                    // 0x08
    MEMiHeapHead*       mTmpHeap;                       // 0x0C

    RFLiDatabaseManager mDBMan;                         // 0x10
    RFLiNANDLoader      mLoader;                        // 0xC0
    RFLiHiddenDBManager mHDBMan;                        // 0x16C
    RFLiCtrlManager     mCtrlMan;                       // 0x1AAC

    BOOL                mIsWorking;                     // 0x1B34
    BOOL                mUseDeluxTex;                   // 0x1B38

    u8                  mBrokenTypeList;                // 0x1B3C
    RFLErrcode          mLastErrcode;                   // 0x1B40
    RFLErrcode          mBeforeCloseErr;                // 0x1B44
    s32                 mLastReason;                    // 0x1B48
    s32                 mBeforeCloseReason;             // 0x1B4C

    RFLiNANDAccessInfo  mAccInfo[RFLiFileType_Max];     // 0x1B50

    RFLSimpleCB         mSysCB;                         // 0x1F10
#if RFL_BUILD >= 20080306
    RFLSimpleCB         mDrawIconCB;                    // 0x1F14
    RFLSimpleCB         mCreateModelCB;                 // 0x1F18
#endif // RFL_BUILD

    u8                  macaddr[RFL_MAC_ADDR_LENGTH];   // 0x1F1C
} RFLiSysManager;

RFLErrcode              RFLiBootLoad();
RFLErrcode              RFLiBootLoadAsync();

void*                   RFLiAlloc(u32 size);
void*                   RFLiAlloc32(u32 size);
void                    RFLiFree(void* block);

u32                     RFLiGetUsedWorkSize();

RFLiDatabaseManager*    RFLiGetDBManager();
RFLiHiddenDBManager*    RFLiGetHDBManager();
RFLiNANDLoader*         RFLiGetLoader();

BOOL                    RFLiGetWorking();
void                    RFLiSetWorking(BOOL b);

RFLiSysManager*         RFLiGetManager();

RFLiNANDAccessInfo*     RFLiGetAccInfo(RFLiFileType type);
RFLiCtrlManager*        RFLiGetCtrlBufManager();

BOOL                    RFLiGetUseDeluxTex();
s32                     RFLiGetLastReason();

BOOL                    RFLiSetMacAddr(const u8* addr);
u8*                     RFLiGetMacAddr();

void                    RFLiSetFileBroken(RFLiFileBrokenType type);

BOOL                    RFLiNotFoundError();
BOOL                    RFLiNeedRepairError();
BOOL                    RFLiCriticalError();

#ifdef __cplusplus
}
#endif

#endif // RFLi_SYSTEM_H
