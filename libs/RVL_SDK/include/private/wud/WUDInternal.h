#ifndef PRIVATE_WUD_INTERNAL_H
#define PRIVATE_WUD_INTERNAL_H

#include <revolution/types.h>

#include <private/wud/WUDTypes.h>

#include <private/bte/bt_types.h>
#include <private/bte/bta_api.h>

#include <revolution/os.h>

#include <private/sc.h>

#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

void WUD_DEBUGPrint(const char* format, ...);

#define WUD_BDCMP(LHS, RHS) memcmp(LHS, RHS, BD_ADDR_LEN)
#define WUD_BDCPY(DST, SRC) memcpy(DST, SRC, BD_ADDR_LEN)

#define WUD_DEV_NAME_IS(NAME, VALUE) (memcmp(NAME, VALUE, sizeof(VALUE) - 1) == 0)

#define WUD_DEV_NAME_IS_CNT(NAME) WUD_DEV_NAME_IS(NAME, "Nintendo RVL-CNT")
#define WUD_DEV_NAME_IS_CNT_01(NAME) WUD_DEV_NAME_IS(NAME, "Nintendo RVL-CNT-01")

typedef enum {
    WUD_STATE_SYNC_START = 0,
    WUD_STATE_SYNC_PREPARE_SEARCH = 1,
    WUD_STATE_SYNC_START_SEARCH = 2,
    WUD_STATE_SYNC_WAIT_FOR_SEARCH_RESULT = 3,
    WUD_STATE_SYNC_CHECK_SEARCH_RESULT = 4,
    WUD_STATE_SYNC_IS_EXISTED_DEVICE = 5,
    WUD_STATE_SYNC_6 = 6,
    WUD_STATE_SYNC_STORED_LINK_KEY_TO_EEPROM = 7,
    WUD_STATE_SYNC_WAIT_FOR_STORING = 8,
    WUD_STATE_SYNC_WAIT_FOR_READING = 10,
    WUD_STATE_SYNC_11 = 11,
    WUD_STATE_SYNC_12 = 12,
    WUD_STATE_SYNC_13 = 13,
    WUD_STATE_SYNC_DONE = 14,
    WUD_STATE_SYNC_TRY_CONNECT = 15,
    WUD_STATE_SYNC_PREPARE_FOR_EXISTED_DEVICE = 16,
    WUD_STATE_SYNC_PREPARE_FOR_UNKNOWN_DEVICE = 17,
    WUD_STATE_SYNC_REGISTER_DEVICE = 18,
    WUD_STATE_SYNC_VIRGIN_SIMPLE = 19,
    WUD_STATE_SYNC_VIRGIN_STANDARD = 20,
    WUD_STATE_SYNC_CHANGE_SIMPLE_TO_STANDARD = 21,
    WUD_STATE_SYNC_STORED_DEV_INFO_TO_NAND = 22,
    WUD_STATE_SYNC_COMPLETE = 23,
    WUD_STATE_SYNC_WAIT_FOR_INCOMING = 24,
    WUD_STATE_SYNC_SC_FLUSH = 25,
    WUD_STATE_SYNC_CANCEL_SEARCH = 26,
    WUD_STATE_SYNC_WAIT_FOR_START_SEARCH = 29,
    WUD_STATE_SYNC_ERROR = 255,
} WUDSyncState;

typedef enum {
    WUD_STATE_DELETE_START = 0,
    WUD_STATE_DELETE_DISALLOW_INCOMING = 1,
    WUD_STATE_DELETE_DISCONNECT_ALL = 2,
    WUD_STATE_DELETE_CLEANUP_DATABASE = 3,
    WUD_STATE_DELETE_CLEANUP_SETTING = 5,
    WUD_STATE_DELETE_6 = 6,
    WUD_STATE_DELETE_7 = 7,
    WUD_STATE_DELETE_DONE = 8
} WUDDeleteState;

typedef enum {
    WUD_RESULT_DELETE_BUSY = -1,
    WUD_RESULT_DELETE_WAITING,
    WUD_RESULT_DELETE_COMPLETE,
} WUDDeleteResult;

typedef enum {
    WUD_STATE_LINK_KEY_START = 0,
    WUD_STATE_LINK_KEY_READING = 1,
    WUD_STATE_LINK_KEY_WRITING = 2,
    WUD_STATE_LINK_KEY_DELETING = 3,
    WUD_STATE_LINK_KEY_ERROR = 255,
} WUDLinkKeyState;

typedef enum {
    WUD_STATE_STACK_START = 0,
    WUD_STATE_STACK_GET_STORED_LINK_KEY = 1,
    WUD_STATE_STACK_CHECK_DEVICE_INFO = 2,
    WUD_STATE_STACK_DONE = 3,
    WUD_STATE_STACK_INITIALIZED = 4,
    WUD_STATE_STACK_ERROR = 255,
} WUDStackState;

typedef enum {
    WUD_STATE_INIT_START = 0,
    WUD_STATE_INIT_WAIT_FOR_INITIALIZATION = 1,
    WUD_STATE_INIT_GET_DEV_INFO = 2,
    WUD_STATE_INIT_DONE = 3,
    WUD_STATE_INIT_INITIALIZED = 4,
    WUD_STATE_INIT_UNK5 = 5,
    WUD_STATE_INIT_ERROR = 255,
} WUDInitState;

typedef enum {
    WUD_STATE_SHUTDOWN_START = 0,
    WUD_STATE_SHUTDOWN_STORE_SETTINGS = 1,
    WUD_STATE_SHUTDOWN_FLUSH_SETTINGS = 2,
    WUD_STATE_SHUTDOWN_DONE = 3,
    WUD_STATE_SHUTDOWN_ERROR = 255,
} WUDShutdownState;

typedef enum {
    WUD_VSE_INITIATE_PAIRING = 8,
    WUD_VSE_DELETE_ALL_KEYS,
    WUD_VSE_SI_PORT_STATUS,
    WUD_VSE_WATCH_DOG_RESET_HW = 16,
} WUDVendorSpecificEvent;

typedef struct WUDDevInfoList WUDDevInfoList;
struct WUDDevInfoList {
    WUDDevInfo* devInfo;   // 0x00
    WUDDevInfoList* prev;  // 0x04
    WUDDevInfoList* next;  // 0x08
};

typedef struct WUDDiscResp {
    BD_ADDR devAddr;   // 0x00
    char devName[64];  // 0x06
    u8 UNK_0x46[0xBA];
    tBTA_SERVICE_MASK services;  // 0x100
    u8 UNK_0x104[0x4];
} WUDDiscResp;

typedef struct WUDPatchCmd {
    u8 data[13];  // 0x00
} WUDPatchCmd;
typedef struct WUDPatchList {
    u8 num;              // 0x00
    WUDPatchCmd cmds[];  // 0x01
} WUDPatchList;
#define WUD_PATCH_BUFFER_SIZE 0xFF
#define WUD_MAX_PATCHES (WUD_PATCH_BUFFER_SIZE / (s32)sizeof(WUDPatchCmd))

typedef struct WUDCB {
    WUDSyncDeviceCallback syncStdCB;    // 0x00
    WUDSyncDeviceCallback syncSmpCB;    // 0x04
    WUDClearDeviceCallback clearDevCB;  // 0x08

    u8 syncState;      // 0x0C
    u8 deleteState;    // 0x0D
    u8 linkKeyState;   // 0x0E
    u8 stackState;     // 0x0F
    u8 initState;      // 0x10
    u8 shutdownState;  // 0x11

    u8 devNums;     // 0x12
    u8 devSmpNums;  // 0x13

    WUDDevInfoList* smpListHead;                        // 0x14
    WUDDevInfoList* smpListTail;                        // 0x18
    WUDDevInfoList smpList[WUD_MAX_DEV_ENTRY_FOR_SMP];  // 0x1C

    WUDDevInfoList* stdListHead;                        // 0x64
    WUDDevInfoList* stdListTail;                        // 0x68
    WUDDevInfoList stdList[WUD_MAX_DEV_ENTRY_FOR_STD];  // 0x6C

    WUDDevInfo stdDevs[WUD_MAX_DEV_ENTRY_FOR_STD];  // 0xE4
    WUDDevInfo smpDevs[WUD_MAX_DEV_ENTRY_FOR_SMP];  // 0x4A4

    u8 connectedNum;  // 0x6E4
    u8 linkedNum;     // 0x6E5
    u8 syncedNum;     // 0x6E6

    u8 syncSkipChecks;  // 0x6E7
    s8 syncLoopNum;     // 0x6E8
    u8 syncType;        // 0x6E9

    u8 connectable;   // 0x6EA
    u8 discoverable;  // 0x6EB

    WUDHidRecvCallback hidRecvCB;  // 0x6EC
    WUDHidConnCallback hidConnCB;  // 0x6F0

    WUDAllocFunc allocFunc;  // 0x6F4
    WUDFreeFunc freeFunc;    // 0x6F8

    BD_ADDR pairAddr;  // 0x6FC
    BD_ADDR hostAddr;  // 0x702

    s8 libStatus;  // 0x708

    u8 serialPortStatus;  // 0x709
    UINT8 pmID;           // 0x70A
    s8 syncRssi;          // 0x70B
    OSAlarm alarm;        // 0x710
    u32 hhFlags;          // 0x740

    u16 bufferStatus0;          // 0x744
    u16 bufferStatus1;          // 0x746
    s16 waitStartSearchFrames;  // 0x748
    s16 waitIncomingFrames;     // 0x74A
} WUDCB;

extern WUDCB _wcb;
extern WUDDevInfo _work;

extern SCBtDeviceInfoArray _scArray;

extern BD_ADDR_PTR _dev_handle_to_bda[WUD_MAX_DEV_ENTRY];
extern u16 _dev_handle_queue_size[WUD_MAX_DEV_ENTRY];
extern u16 _dev_handle_notack_num[WUD_MAX_DEV_ENTRY];

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_WUD_INTERNAL_H
