#ifndef PRIVATE_SC_H
#define PRIVATE_SC_H

#include <revolution/types.h>

#include <revolution/sc.h>

#include <revolution/os/OSThread.h>
#include <revolution/nand.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SC_CONFIG_FILE_PHYS_ADDRESS 0x3800
#define SC_CONFIG_FILE_LENGTH       0x100

typedef enum SCItemID {
    SC_ITEM_ID_IPL_COUNTER_BIAS,
    SC_ITEM_ID_IPL_ASPECT_RATIO,
    SC_ITEM_ID_IPL_AUTORUN_MODE,
    SC_ITEM_ID_IPL_CONFIG_DONE,
    SC_ITEM_ID_IPL_CONFIG_DONE2,
    SC_ITEM_ID_IPL_DISPLAY_OFFSET_H,
    SC_ITEM_ID_IPL_EURGB60_MODE,
    SC_ITEM_ID_IPL_EULA,
    SC_ITEM_ID_IPL_FREE_CHANNEL_APP_COUNT,
    SC_ITEM_ID_IPL_IDLE_MODE,
    SC_ITEM_ID_IPL_INSTALLED_CHANNEL_APP_COUNT,
    SC_ITEM_ID_IPL_LANGUAGE,
    SC_ITEM_ID_IPL_OWNER_NICKNAME,
    SC_ITEM_ID_IPL_PARENTAL_CONTROL,
    SC_ITEM_ID_IPL_PROGRESSIVE_MODE,
    SC_ITEM_ID_IPL_SCREEN_SAVER_MODE,
    SC_ITEM_ID_IPL_SIMPLE_ADDRESS,
    SC_ITEM_ID_IPL_SOUND_MODE,
    SC_ITEM_ID_IPL_UPDATE_TYPE,
    SC_ITEM_ID_NET_CONFIG,
    SC_ITEM_ID_NET_CONTENT_RESTRICTIONS,
    SC_ITEM_ID_NET_PROFILE,
    SC_ITEM_ID_NET_WC_RESTRICTION,
    SC_ITEM_ID_NET_WC_FLAGS,
    SC_ITEM_ID_DEV_BOOT_MODE,
    SC_ITEM_ID_DEV_VIDEO_MODE,
    SC_ITEM_ID_DEV_COUNTRY_CODE,
    SC_ITEM_ID_DEV_DRIVESAVING_MODE,
    SC_ITEM_ID_BT_DEVICE_INFO,
    SC_ITEM_ID_BT_CMPDEV_INFO,
    SC_ITEM_ID_BT_DPD_SENSIBILITY,
    SC_ITEM_ID_BT_SPEAKER_VOLUME,
    SC_ITEM_ID_BT_MOTOR_MODE,
    SC_ITEM_ID_BT_SENSOR_BAR_POSITION,
    SC_ITEM_ID_DVD_CONFIG,
    SC_ITEM_ID_WWW_RESTRICTION,
    SC_ITEM_ID_MOTION_PLUS_MOVIE,
    SC_ITEM_ID_TEMP_TITLE_ID,
    SC_ITEM_ID_MAX
} SCItemID;

typedef void (*SCAsyncCallback)(s32 result);

#define SC_CONF_MIN_SIZE    (sizeof(SCConfHeader) + sizeof(u32))
#define SC_CONF_MAX_SIZE    0x4000

typedef struct SCConfHeader {
    u32 magic;          // 0x00
    u16 numItems;       // 0x04
    u16 itemOffsets[];  // 0x06
} SCConfHeader;

typedef struct SCConfItem {
    u8      desc;   // 0x00
    char    name[]; // 0x04
} SCConfItem;

typedef enum {
    SC_CONF_FILE_SYSTEM,    // SYSCONF
    SC_CONF_FILE_PRODUCT,   // setting.txt
    SC_CONF_FILE_MAX
} SCConfFile;

typedef struct SCControl {
    OSThreadQueue       threadQueue;                    // 0x00
    NANDFileInfo        fileInfo;                       // 0x08
    NANDCommandBlock    commandBlock;                   // 0x94

    union {
        NANDStatus  fileAttr;
        u8          fileType;
    };                                                  // 0x14C

    u8                  nandCbState;                    // 0x154
    u8                  isFileOpen;                     // 0x155
    u8                  openFileType;                   // 0x156

    SCAsyncCallback     asyncCallback;                  // 0x158
    s32                 asyncResult;                    // 0x15C

    const char*         filePaths[SC_CONF_FILE_MAX];    // 0x160
    u8*                 fileBuffers[SC_CONF_FILE_MAX];  // 0x168
    u32                 bufferSizes[SC_CONF_FILE_MAX];  // 0x170
    u32                 fileSizes[SC_CONF_FILE_MAX];    // 0x178

    SCFlushCallback     flushCallback;                  // 0x180
    SCStatus            flushStatus;                    // 0x184
    u32                 flushSize;                      // 0x188
} SCControl;

typedef struct SCItem {
    char        unk_0x00[0x8];

    u8          primType;   // 0x08
    u8          arrayType;  // 0x09

    u32         nameLen;    // 0x0C
    u32         dataLen;    // 0x10
    const char* name;       // 0x14
    u8*         data;       // 0x18

    u32         itemLen;    // 0x1C
} SCItem;

BOOL SCFindByteArrayItem(void* dst, u32 len, SCItemID id);
BOOL SCReplaceByteArrayItem(const void* src, u32 len, SCItemID id);

BOOL SCFindU8Item(u8* dst, SCItemID id);
BOOL SCFindS8Item(s8* dst, SCItemID id);
BOOL SCFindU32Item(u32* dst, SCItemID id);
BOOL SCFindU64Item(u64* dst, SCItemID id);
BOOL SCFindBoolItem(BOOL* dst, SCItemID id);

BOOL SCReplaceU8Item(u8 dst, SCItemID id);
BOOL SCReplaceS8Item(s8 dst, SCItemID id);
BOOL SCReplaceU32Item(u32 dst, SCItemID id);
BOOL SCReplaceU64Item(u64 dst, SCItemID id);
BOOL SCReplaceBoolItem(BOOL dst, SCItemID id);

BOOL    __SCIsDirty();
void    __SCClearConfBuf();
void    __SCSetDirtyFlag();
void    __SCClearDirtyFlag();
u8*     __SCGetConfBuf();
u32     __SCGetConfBufSize();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_SC_H
