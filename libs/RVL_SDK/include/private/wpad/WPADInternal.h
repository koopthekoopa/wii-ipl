#ifndef RVL_SDK_WPAD_INTERNAL_H
#define RVL_SDK_WPAD_INTERNAL_H

#include <revolution.h>

#include <revolution/wpad.h>

#include <private/wpad/WPADHIDParser.h>
#include <private/wpad/WPADMem.h>

#ifdef __cplusplus
extern "C" {
#endif

void DEBUGPrint(const char* format, ...);

#define RX_BUFFER_SIZE OSRoundUp32B(sizeof(WPADStatusEx))

#define WPAD_CONFIG_BLOCK_CHECKSUM_BIAS 0x55
#define WPAD_MAX_CONFIG_BLOCKS 2

#define WPAD_DPD_CONFIG_BLOCK_CHECKSUM 10
#define WPAD_DPD_CONFIG_BLOCK_SIZE 11

#define WPAD_DEV_CONFIG_BLOCK_CHECKSUM 9
#define WPAD_DEV_CONFIG_BLOCK_SIZE 10

#define DPD_CFG_OBJ_BL 0
#define DPD_CFG_OBJ_BR 1
#define DPD_CFG_OBJ_TR 2
#define DPD_CFG_OBJ_TL 3

/*
 * Wiimote memory addresses
 */
#define WM_ADDR_MEM_DEV_CONFIG_0 WM_MEM_ADDR(0x0000)
#define WM_ADDR_MEM_GAME_INFO_0 WM_MEM_ADDR(0x002A)
#define WM_ADDR_MEM_GAME_INFO_1 WM_MEM_ADDR(0x0062)
#define WM_ADDR_MEM_176C WM_MEM_ADDR(0x176C)
#define WM_ADDR_MEM_1770 WM_MEM_ADDR(0x1770)

/*
 * Wiimote extension register addresses
 */
// Speaker register addresses
#define WM_REG_SPEAKER_01 WM_EXT_REG_ADDR(SPEAKER, 0x01)
#define WM_REG_SPEAKER_08 WM_EXT_REG_ADDR(SPEAKER, 0x08)
#define WM_REG_SPEAKER_09 WM_EXT_REG_ADDR(SPEAKER, 0x09)

// Extension register addresses
#define WM_REG_EXTENSION_CONFIG WM_EXT_REG_ADDR(EXTENSION, 0x20)
#define WM_REG_EXTENSION_40 WM_EXT_REG_ADDR(EXTENSION, 0x40)
#define WM_REG_EXTENSION_CERT_PARAM WM_EXT_REG_ADDR(EXTENSION, 0x50)
#define WM_REG_EXTENSION_F0 WM_EXT_REG_ADDR(EXTENSION, 0xF0)
#define WM_REG_EXTENSION_CERT_CHALLENGE WM_EXT_REG_ADDR(EXTENSION, 0xF1)
#define WM_REG_EXTENSION_F2 WM_EXT_REG_ADDR(EXTENSION, 0xF2)
#define WM_REG_EXTENSION_F3 WM_EXT_REG_ADDR(EXTENSION, 0xF3)
#define WM_REG_EXTENSION_EXT_TYPE_2 WM_EXT_REG_ADDR(EXTENSION, 0xF6)
#define WM_REG_EXTENSION_CERT_PROBE WM_EXT_REG_ADDR(EXTENSION, 0xF7)
#define WM_REG_EXTENSION_FA WM_EXT_REG_ADDR(EXTENSION, 0xFA)
#define WM_REG_EXTENSION_FB WM_EXT_REG_ADDR(EXTENSION, 0xFB)
#define WM_REG_EXTENSION_DEV_MODE WM_EXT_REG_ADDR(EXTENSION, 0xFE)
#define WM_REG_EXTENSION_ID_BYTE WM_EXT_REG_ADDR(EXTENSION, 0xFF)

// IR camera register addresses
#define WM_REG_DPD_CONFIG_BLOCK_1 WM_EXT_REG_ADDR(DPD, 0x00)
#define WM_REG_DPD_CONFIG_BLOCK_2 WM_EXT_REG_ADDR(DPD, 0x1A)
#define WM_REG_DPD_30 WM_EXT_REG_ADDR(DPD, 0x30)
#define WM_REG_DPD_DATA_FORMAT WM_EXT_REG_ADDR(DPD, 0x33)

#define WM_EXTENSION_CONFIG_SIZE 0x20  // 0xA40020 - 0xA4003F

typedef enum {
    WPAD_STATE_EXT_UNINITIALIZED,
    WPAD_STATE_EXT_INITIALIZED,
    WPAD_STATE_EXT_ENCRYPTED,
    WPAD_STATE_EXT_ENCRYPTED_3RD,
} WPADExtensionState;

typedef enum {
    WPAD_RADIO_QUALITY_GOOD,  // 80+
    WPAD_RADIO_QUALITY_BAD    // 80-
    // if radioQuality calculation == 80, state stays the same
} WPADRadioQuality;

typedef enum {
    WPAD_ILBUF_NONE = 0,

    WPAD_ILBUF_BUF3E = (1 << 0),
    WPAD_ILBUF_BUF3F = (1 << 1),

    WPAD_ILBUF_ALL = WPAD_ILBUF_BUF3E | WPAD_ILBUF_BUF3F,
} WPADInterleaveBufferFlags;

typedef struct WPADCommand {
    u32 reportID;  // 0x00

    u8 dataBuf[RPT_MAX_SIZE];  // 0x04
    u16 dataLength;            // 0x1A

    void* dstBuf;  // 0x1C

    u16 readLength;   // 0x20
    u32 readAddress;  // 0x24

    WPADInfo* statusReportOut;  // 0x28
    WPADCallback cmdCB;         // 0x2C
} WPADCommand;

typedef struct WPADCommandQueue {
    s8 front;             // 0x00
    s8 back;              // 0x01
    WPADCommand* buffer;  // 0x04
    u32 capacity;         // 0x08
} WPADCommandQueue;

typedef struct WPADDevConfig {
    DPDObject dpd[WPAD_MAX_DPD_OBJECTS];  // 0x00

    s16 accX0g;  // 0x20
    s16 accY0g;  // 0x22
    s16 accZ0g;  // 0x24

    s16 accX1g;  // 0x26
    s16 accY1g;  // 0x28
    s16 accZ1g;  // 0x2A

    u8 motor;   // 0x2C
    u8 volume;  // 0x2D
} WPADDevConfig;

typedef struct WPADExtConfig {
    union {
        struct WPADFSConfig {
            s16 stickXCenter;  // 0x00
            s16 unk_0x02;      // 0x02
            s16 unk_0x04;      // 0x04
            s16 stickYCenter;  // 0x06
            s16 unk_0x08;      // 0x08
            s16 unk_0x0A;      // 0x0A

            s16 accX0g;  // 0x0C
            s16 accY0g;  // 0x0E
            s16 accZ0g;  // 0x10

            s16 accX1g;  // 0x12
            s16 accY1g;  // 0x14
            s16 accZ1g;  // 0x16
        } fs;

        struct WPADCLConfig {
            s16 lStickXCenter;  // 0x00
            s16 unk_0x02;       // 0x02
            s16 unk_0x04;       // 0x04
            s16 lStickYCenter;  // 0x06
            s16 unk_0x08;       // 0x08
            s16 unk_0x0A;       // 0x0A

            s16 rStickXCenter;  // 0x0C
            s16 unk_0x0E;       // 0x0E
            s16 unk_0x10;       // 0x10
            s16 rStickYCenter;  // 0x12
            s16 unk_0x14;       // 0x14
            s16 unk_0x16;       // 0x16

            u8 triggerLZero;  // 0x18
            u8 triggerRZero;  // 0x19
        } cl;
    } u;
} WPADExtConfig;

typedef struct WPADCB {
    WPADGameInfo gameInfo;  // 0x00
    s32 unk_0x38[2];
    u8 rxBufMain[RX_BUFFER_SIZE];       // 0x40
    u8 rxBufs[2][RX_BUFFER_SIZE];       // 0xA0
    WPADCommandQueue stdCmdQueue;       // 0x160
    WPADCommand stdCmdQueueList[24];    // 0x16C
    WPADCommandQueue extCmdQueue;       // 0x5EC
    WPADCommand extCmdQueueList[12];    // 0x5F8
    WPADInfo wpInfo;                    // 0x838
    WPADInfo* wpInfoOut;                // 0x850
    WPADDevConfig devConfig;            // 0x854
    WPADExtConfig extConfig;            // 0x882
    WPADCallback cmdBlkCB;              // 0x89C
    WPADExtensionCallback extensionCB;  // 0x8A0
    WPADConnectCallback connectCB;      // 0x8A4
    WPADSamplingCallback samplingCB;    // 0x8A8
    union {
        WPADStatus* samplingBuf;
        WPADStatusEx* samplingBufEx;
        WPADFSStatus* samplingBufFS;
        WPADCLStatus* samplingBufCL;
    };  // 0x8AC
    u32 samplingBufIndex;  // 0x8B0
    u32 samplingBufSize;   // 0x8B4
    u32 dataFormat;        // 0x8B8
    s32 status;            // 0x8BC
    u8 statusReqBusy;      // 0x8C0
    u8 devType;            // 0x8C1
    u8 devMode;            // 0x8C2
    s8 devHandle;          // 0x8C3
    s32 unk_0x8C4;
    u8 rxBufIndex;  // 0x8C8
    s8 unk_0x8C9;
    u8 defaultDpdSize;             // 0x8CA
    u8 currentDpdCommand;          // 0x8CB
    u8 pendingDpdCommand;          // 0x8CC
    u8 radioQuality;               // 0x8CD
    u8 radioQualityOkMs;           // 0x8CE
    u8 audioFrames;                // 0x8CF
    u32 motorBusy;                 // 0x8D0
    BOOL motorRunning;             // 0x8D4
    BOOL used;                     // 0x8D8
    BOOL handshakeFinished;        // 0x8DC
    s32 configIndex;               // 0x8E0
    OSThreadQueue threadQueue;     // 0x8E4
    s64 lastControllerDataUpdate;  // 0x8F0
    u16 filterDiffDpd;             // 0x8F8
    u16 filterSameDpd;             // 0x8FA
    u16 filterDiffAcc;             // 0x8FC
    u16 filterSameAcc;             // 0x8FE
    u16 filterDiffExt;             // 0x900
    u16 filterSameExt;             // 0x902
    s64 lastReportSendTime;        // 0x908
    u8 unk_0x910;
    u8 calibrated;          // 0x911
    u16 comboHeld;          // 0x912
    u8 encryptionKey[16];   // 0x914
    u8 decryptAddTable[8];  // 0x924
    u8 decryptXorTable[8];  // 0x92C
    u8 wmReadDataBuf[64];   // 0x934
    u8* wmReadDataPtr;      // 0x974
    u32 wmReadAddress;      // 0x978
    int wmReadHadError;     // 0x97C
    u16 wmReadLength;       // 0x980
    s8 unk_0x982;
    u8 radioSensitivity;     // 0x983
    u16 copyOutCount;        // 0x984
    u8 sleeping;             // 0x986
    u8 lastReportID;         // 0x987
    WPADCallback getInfoCB;  // 0x988
    u8 getInfoBusy;          // 0x98C

    u8 unk_0x98D;  // 0x98D
    u8 unk_0x98E;  // 0x98E
    u8 unk_0x98F[0x9A0 - 0x990];
} WPADCB;

extern WPADCB _wpd[WPAD_MAX_CONTROLLERS];
extern WPADCB* _wpdcb[WPAD_MAX_CONTROLLERS];

void WPADiInitSub();

void WPADiExcludeButton(s32 chan);
void WPADiCopyOut(s32 chan);

BOOL WPADiSendSetPort(WPADCommandQueue* pQueue, u8 port, WPADCallback pCallback);
BOOL WPADiSendSetReportType(WPADCommandQueue* pQueue, s32 format, BOOL unk, WPADCallback pCallback);
BOOL WPADiSendEnableDPD(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback);
BOOL WPADiSendEnableSpeaker(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback);
BOOL WPADiSendGetContStat(WPADCommandQueue* pQueue, WPADInfo* pInfo, WPADCallback pCallback);
BOOL WPADiSendWriteDataCmd(WPADCommandQueue* pQueue, u8 cmd, u32 addr, WPADCallback pCallback);
BOOL WPADiSendWriteData(WPADCommandQueue* pQueue, const void* pSrc, u16 len, u32 addr, WPADCallback pCallback);
BOOL WPADiSendReadData(WPADCommandQueue* pQueue, void* pDst, u16 len, u32 addr, WPADCallback pCallback);
BOOL WPADiSendStreamData(WPADCommandQueue* pQueue, const void* pData, u16 len);
BOOL WPADiSendMuteSpeaker(WPADCommandQueue* pQueue, BOOL mute, WPADCallback pCallback);
BOOL WPADiSendDPDCSB(WPADCommandQueue* pQueue, BOOL enable, WPADCallback pCallback);

void WPADiClearQueue(WPADCommandQueue* pQueue);
BOOL WPADiPushCommand(WPADCommandQueue* pQueue, WPADCommand command);
BOOL WPADiGetCommand(const WPADCommandQueue* pQueue, WPADCommand* pCommand);
BOOL WPADiPopCommand(WPADCommandQueue* pQueue);

u16 _WPADGetStackBufferStatus(s32 chan);
u16 _WPADGetModuleBufferStatus(s32 chan);

inline void __WPADShutdown();
void __WPADReconnect(BOOL recFlag);

#ifdef __cplusplus
}
#endif
#endif
