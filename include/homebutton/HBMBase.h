#ifndef HOME_BUTTON_FRAME_H
#define HOME_BUTTON_FRAME_H

#include <revolution/types.h>
#include <revolution/mem/allocator.h>
#include <revolution/mtx/GeoTypes.h>

#include <revolution/kpad.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum HBMSelectBtnNum {
    HBM_SELECT_NULL = -1,
    HBM_SELECT_HOMEBTN,
    HBM_SELECT_BTN1,
    HBM_SELECT_BTN2,
    HBM_SELECT_BTN3,
    HBM_SELECT_BTN4,
    HBM_SELECT_MAX,
} HBMSelectBtnNum;

enum {
    HBMSEV_BEFORE_INIT_SOUND = 0,
    HBMSEV_INIT_SOUND,
    HBMSEV_END_MENU,
    HBMSEV_BEGIN_EXIT_ANIM,
    HBMSEV_BEGIN_BLACKOUT,
    HBMSEV_PLAY_SOUND,
};

enum {
    HBMSE_HOME_BUTTON = 0,
    HBMSE_RETURN_APP,
    HBMSE_GOTO_MENU,
    HBMSE_RESET_APP,
    HBMSE_FOCUS,
    HBMSE_SELECT,
    HBMSE_CANCEL,
    HBMSE_OPEN_CONTROLLER,
    HBMSE_CLOSE_CONTROLLER,
    HBMSE_VOLUME_PLUS,
    HBMSE_VOLUME_MINUS,
    HBMSE_VOLUME_PLUS_LIMIT,
    HBMSE_VOLUME_MINUS_LIMIT,
    HBMSE_NOTHING_DONE,
    HBMSE_VIBE_ON,
    HBMSE_VIBE_OFF,
    HBMSE_START_CONNECT_WINDOW,
    HBMSE_CONNECTED,
    HBMSE_CONNECTED2,
    HBMSE_CONNECTED3,
    HBMSE_CONNECTED4,
    HBMSE_END_CONNECT_WINDOW,
};

typedef BOOL (*HBMSoundCallback)(int, int);

typedef struct HBMDataInfo {
    void*               layoutBuf;      // 0x00
    void*               lytLangBuf;     // 0x04
    void*               fontBuf;        // 0x08
    void*               spkSeBuf;       // 0x0C
    void*               msgBuf;         // 0x10
    void*               configBuf;      // 0x14
    void*               mem;            // 0x18

    HBMSoundCallback    sound_callback; // 0x1C

    int                 backFlag;       // 0x20
    int                 region;         // 0x24
    int                 cursor;         // 0x28
    int                 messageFlag;    // 0x2C
    u32                 memSize;        // 0x30
    f32                 frameDelta;     // 0x34
    Vec2                adjust;         // 0x38
    MEMAllocator*       pAllocator;     // 0x40
} HBMDataInfo;

typedef struct HBMKPadData {
    KPADStatus* kpad;           // 0x00
    Vec2        pos;            // 0x04
    u32         use_devtype;    // 0x0C
} HBMKPadData;

typedef struct HBMControllerData {
    HBMKPadData wiiCon[WPAD_MAX_CONTROLLERS];   // 0x00
} HBMControllerData;

#define HBM_WORK_SIZE   0x80000

void            HBMCreate(const HBMDataInfo* pHBInfo);
void            HBMDelete();

void            HBMInit();
HBMSelectBtnNum HBMCalc(const HBMControllerData* pController);
void            HBMDraw();

HBMSelectBtnNum HBMGetSelectBtnNum();

void            HBMSetAdjustFlag(BOOL flag);

#ifdef __cplusplus
}
#endif

#endif // HOME_BUTTON_FRAME_H
