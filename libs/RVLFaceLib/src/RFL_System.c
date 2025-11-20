#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <revolution/os.h>
#include <revolution/mem.h>
#include <revolution/verdefs.h>

#include <string.h>

#if RFL_BUILD == 20080306
SDKDefineVersionDebug(RFL, "Mar  6 2008", "17:40:04", "17:39:52");
#elif RFL_BUILD == 20080218
SDKDefineVersion(RFL, "Feb 18 2008", "09:37:42");
#else
#error "Unsupported version! Check RFLi_LibConfig.h"
#endif // RFL_BUILD

#define RFLi_WORK_SIZE       0x4B000
#define RFLi_DELUX_WORK_SIZE 0x64000

static RFLiSysManager*          sRFLManager = NULL;

static RFLErrcode               sRFLLastErrCode = RFLErrcode_NotAvailable;
static s32                      sRFLLastReason = 0;
static u8                       sRFLBrokenType = 0;

static const RFLiCoordinateData scCoordinate = {1, 2, 0, 0, 0, 0};

u32 RFLGetWorkSize(BOOL useDeluxTex) {
    if (useDeluxTex) {
        return RFLi_DELUX_WORK_SIZE + sizeof(RFLiSysManager);
    }
    else {
        return RFLi_WORK_SIZE + sizeof(RFLiSysManager);
    }
}

static void* allocSys_(u32 size, int alignment) {
    return MEMAllocFromExpHeapEx(RFLiGetManager()->mSystemHeap, size, alignment);
}

// DEBUG NON MATCH
RFLErrcode RFLInitResAsync(void* workBuffer, void* resBuffer, u32 resSize, BOOL useDeluxTex) {
    RFLErrcode errcode;

    // Assertz
    RFLi_ASSERTLINE_NULL(resBuffer, 96);
    RFLi_ASSERTLINE_NULL(workBuffer, 97);

    // Must need the RFL resource data
    if (resBuffer == NULL) {
        return RFLErrcode_Fatal;
    }
    else {
        RFLi_REPORT("---------- RVLFaceLib::RFLInit() --------------\n");

        if (RFLiGetManager() == NULL) {
            // Start to initialize!

            OSRegisterVersion(GetVersion(RFL));

            // Initialize work buffer
            {
                u32 wholesize = useDeluxTex ? RFLi_DELUX_WORK_SIZE : RFLi_WORK_SIZE;

                RFLi_ASSERTLINE_NULL(workBuffer, 111);
                memset(workBuffer, 0, wholesize);

                sRFLManager = (RFLiSysManager*)workBuffer;
                sRFLLastErrCode = RFLErrcode_NotAvailable;
                sRFLLastReason = 0;
                sRFLBrokenType = 0;

                RFLi_REPORT(" manager   : 0x%08x - 0x%08x (%6dByte)\n", (u8*)sRFLManager, ((u8*)sRFLManager + sizeof(RFLiSysManager)), sizeof(RFLiSysManager));
                RFLiGetManager()->mWorkBuffer = ((u8*)workBuffer + sizeof(RFLiSysManager));
            }

            // Initialize root heap
            {
                u32 size;
                if (useDeluxTex) {
                    size = (RFLi_DELUX_WORK_SIZE - sizeof(RFLiSysManager));
                }
                else {
                    size = (RFLi_WORK_SIZE - sizeof(RFLiSysManager));
                }
                RFLiGetManager()->mRootHeap = MEMCreateExpHeapEx(RFLiGetManager()->mWorkBuffer, size, 1);
                RFLi_REPORT(" rootHeap  : 0x%08x - 0x%08x (%6dByte)\n", (u8*)RFLiGetManager()->mWorkBuffer, ((u8*)RFLiGetManager()->mWorkBuffer + size), size);
            }

            // Initialize system heap
            {
                u32 size = 0x24800;
                void* buffer = MEMAllocFromExpHeapEx(RFLiGetManager()->mRootHeap, size, RFL_BUFFER_ALIGN);
                RFLiGetManager()->mSystemHeap = MEMCreateExpHeapEx(buffer, size, MEM_HEAP_OPT_CLEAR_ALLOC);
                RFLi_REPORT(" systemHeap: 0x%08x - 0x%08x (%6dByte)\n", (u8*)buffer, ((u8*)buffer + size), size);
            }

            // Initialize temporary heap
            {
                u32 size = MEMGetAllocatableSizeForExpHeap(RFLiGetManager()->mRootHeap);
                void* buffer = MEMAllocFromExpHeapEx(RFLiGetManager()->mRootHeap, size, RFL_ALIGN);
                RFLiGetManager()->mTmpHeap = MEMCreateExpHeapEx(buffer, size, MEM_HEAP_OPT_CLEAR_ALLOC);
                RFLi_REPORT(" tmpHeap   : 0x%08x - 0x%08x (%6dByte)\n", (u8*)buffer, ((u8*)buffer + size), size);
            }

            // Prepare manager
            RFLiGetManager()->mLastErrcode = RFLErrcode_Success;
            RFLiGetManager()->mBeforeCloseErr = RFLErrcode_Success;
            RFLiGetManager()->mLastReason = 0;
            RFLiGetManager()->mBeforeCloseReason = 0;
            RFLiGetManager()->mUseDeluxTex = useDeluxTex;
            RFLiGetManager()->mBrokenTypeList = FALSE;

            // Prepare for icon and model
#if RFL_BUILD >= 20080306
            RFLSetIconDrawDoneCallback(FALSE);
            RFLSetModelDrawDoneCallback(FALSE);
#endif // RFL_BUILD

            RFLiSetWorking(FALSE);

            // Prepare database
            RFLiInitDatabase(RFLiGetManager()->mSystemHeap);
            RFLiInitLoader();
            RFLiInitCtrlBuf(RFLiGetManager()->mSystemHeap);
            RFLiInitHiddenDatabase();
            RFLiInitAccessInfo(RFLiGetManager()->mSystemHeap);

#if RFL_BUILD >= 20080306
            // Prepare coordinates
            RFLiSetCoordinateData(&scCoordinate);
#endif // RFL_BUILD

            // Completed!!
            RFLi_REPORT(" remain    : sys=%8dByte, tmp=%8dByte\n", MEMGetTotalFreeSizeForExpHeap(RFLiGetManager()->mSystemHeap), MEMGetTotalFreeSizeForExpHeap(RFLiGetManager()->mTmpHeap));
            RFLi_REPORT(" initialize finished.\n");

            // Setup cache.
            if (resBuffer != NULL) {
                RFLiNANDLoader* loader = RFLiGetLoader();
                loader->mCached = TRUE;
                loader->mCacheSize = resSize;
                loader->mCacheBuffer = resBuffer;
            }

            // Load data.
            errcode = RFLiBootLoadAsync();
            if (errcode != RFLErrcode_Busy && errcode != RFLErrcode_Success) {
                RFLExit();
            }
        }
        else {
            // we already done that!!
            RFLi_REPORT(" already initialized.\n");
            errcode = RFLErrcode_Success;
        }
    }

    return errcode;
}

RFLErrcode RFLInitRes(void* workBuffer, void* resBuffer, u32 resSize, BOOL useDeluxTex) {
    RFLInitResAsync(workBuffer, resBuffer, resSize, useDeluxTex);
    return RFLWaitAsync();
}

void RFLExit() {
    if (RFLiGetManager()) {
        RFLWaitAsync();

        sRFLLastErrCode = RFLGetAsyncStatus();
        sRFLLastReason = RFLGetLastReason();
        sRFLBrokenType = RFLiGetManager()->mBrokenTypeList;

        if (RFLIsResourceCached()) {
            RFLFreeCachedResource();
        }

        RFLiExitAccessInfo();

        MEMDestroyExpHeap(RFLiGetManager()->mTmpHeap);
        MEMDestroyExpHeap(RFLiGetManager()->mSystemHeap);
        MEMDestroyExpHeap(RFLiGetManager()->mRootHeap);

        sRFLManager = NULL;

        RFLi_REPORT("---------- NigaoeLibrary::RFLExit() --------------\n");
    }
}

RFLErrcode RFLiBootLoad() {
    RFLiBootLoadAsync();
    return RFLWaitAsync();
}

static void bootloadDB2Res_() {
    RFLiLoadResourceHeaderAsync();

    switch (RFLWaitAsync()) {
        case RFLErrcode_Success:
        case RFLErrcode_Busy:
        case RFLErrcode_Loadfail: {
            break;
        }
        default: {
            RFLExit();
            break;
        }
    }
}

RFLErrcode RFLiBootLoadAsync() {
    return RFLiBootLoadDatabaseAsync(bootloadDB2Res_);
}

BOOL RFLAvailable() {
    return sRFLManager != NULL ? TRUE : FALSE;
}

static void* allocal_(u32 size, int alignment) {
    void* dst = MEMAllocFromExpHeapEx(RFLiGetManager()->mTmpHeap, size, alignment);
    RFLi_ASSERTLINE_NULL(dst, 353);
    return dst;
}

void* RFLiAlloc(u32 size) {
    return allocal_(size, RFL_ALIGN);
}

void* RFLiAlloc32(u32 size) {
    return allocal_(size, RFL_BUFFER_ALIGN);
}

void RFLiFree(void *block)  {
    MEMFreeToExpHeap(RFLiGetManager()->mTmpHeap, block);
}

u32 RFLiGetUsedWorkSize() {
    if (RFLAvailable()) {
        MEMiHeapHead* heap = RFLiGetManager()->mTmpHeap;
        return MEMGetAllocatableSizeForExpHeap(heap) - MEMGetTotalFreeSizeForExpHeap(heap);
    }
    else {
        return 0;
    }
}

RFLiDatabaseManager* RFLiGetDBManager() {
    if (!RFLAvailable()) {
        return NULL;
    }
    return &RFLiGetManager()->mDBMan;
}

RFLiHiddenDBManager* RFLiGetHDBManager() {
    if (!RFLAvailable()) {
        return NULL;
    }
    return &RFLiGetManager()->mHDBMan;
}

RFLiNANDLoader* RFLiGetLoader() {
    if (!RFLAvailable()) {
        return NULL;
    }
    return &RFLiGetManager()->mLoader;
}

BOOL RFLiGetWorking() {
    if (!RFLAvailable()) {
        return FALSE;
    }
    return RFLiGetManager()->mIsWorking;
}

void RFLiSetWorking(BOOL b) {
    RFLiGetManager()->mIsWorking = b;
}

RFLiSysManager* RFLiGetManager() {
    return sRFLManager;
}

RFLErrcode RFLGetAsyncStatus() {
    if (!RFLAvailable()) {
        return sRFLLastErrCode;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_Busy;
    }

    if (RFLiCriticalError()) {
        return RFLErrcode_Fatal;
    }

    return RFLiGetManager()->mLastErrcode;
}

s32 RFLGetLastReason() {
    if (!RFLAvailable()) {
        return sRFLLastReason;
    }
    return RFLiGetLastReason();
}

RFLErrcode RFLWaitAsync() {
    volatile RFLErrcode errcode;
    do {
        errcode = RFLGetAsyncStatus();
    } while (errcode == RFLErrcode_Busy);
    return errcode;
}

RFLiNANDAccessInfo* RFLiGetAccInfo(RFLiFileType type) {
    RFLi_ASSERTLINE_RANGE(type, RFLiFileType_Database, RFLiFileType_Max, 596);
    if (!RFLAvailable()) {
        return NULL;
    }
    return &RFLiGetManager()->mAccInfo[type];
}

RFLiCtrlManager* RFLiGetCtrlBufManager() {
    if (!RFLAvailable()) {
        return NULL;
    }
    return &RFLiGetManager()->mCtrlMan;
}

BOOL RFLiGetUseDeluxTex() {
    if (!RFLAvailable()) {
        return FALSE;
    }
    return RFLiGetManager()->mUseDeluxTex;
}

s32 RFLiGetLastReason() {
    if (!RFLAvailable()) {
        return FALSE;
    }
    return RFLiGetManager()->mLastReason;
}

BOOL RFLiSetMacAddr(const u8* addr) {
    if (!RFLAvailable()) {
        return FALSE;
    }
    memcpy(RFLiGetManager()->macaddr, addr, RFL_MAC_ADDR_LENGTH);
    return TRUE;
}

u8* RFLiGetMacAddr() {
    if (!RFLAvailable()) {
        return FALSE;
    }
    return RFLiGetManager()->macaddr;
}

void RFLiSetFileBroken(RFLiFileBrokenType type) {
    RFLi_ASSERTLINE_RANGE(type, RFLiFileBrokenType_DBNotFound, RFLiFileBrokenType_Max, 701);

    if (!RFLAvailable()) {
        return;
    }

    RFLiGetManager()->mBrokenTypeList |= (u8)(1 << type);
}

BOOL RFLiNotFoundError() {
    u8* list = &sRFLBrokenType;
    if (RFLAvailable()) {
        list = &RFLiGetManager()->mBrokenTypeList;
    }
    return ((*list & (1 << RFLiFileBrokenType_DBNotFound)) != 0) ? TRUE : FALSE;
}

BOOL RFLiNeedRepairError() {
    u8* list = &sRFLBrokenType;

    if (RFLAvailable()) {
        list = &RFLiGetManager()->mBrokenTypeList;
    }

    return ((*list & (1 << RFLiFileBrokenType_DBBroken)) != 0) ? TRUE : FALSE;
}

BOOL RFLiCriticalError() {
    u8* list = &sRFLBrokenType;
    BOOL ret = FALSE; // Unused

    if (RFLAvailable()) {
        list = &RFLiGetManager()->mBrokenTypeList;
    }

    return ((*list & (1 << RFLiFileBrokenType_ResBroken)) != 0) || (*list & (1 << RFLiFileBrokenType_Corrupt)) ? TRUE : FALSE;
}

char* RFLGetArcFilePath() {
    return (char*)"/RFL_Res.dat";
}
