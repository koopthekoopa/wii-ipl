
#ifndef REVOLUTION_KPAD_H
#define REVOLUTION_KPAD_H

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

#include <revolution/mtx/GeoTypes.h>
#include <revolution/wpad.h>

typedef WPADCallback KPADCallback;

typedef union KPADEXStatus {
    struct {
        Vec2 stick;

        Vec acc;
        f32 acc_value;
        f32 acc_speed;
    } fs;

    struct {
        u32 hold;
        u32 trig;
        u32 release;

        Vec2 lstick;
        Vec2 rstick;

        f32 ltrigger;
        f32 rtrigger;
    } cl;
} KPADEXStatus;

typedef struct KPADStatus {
    u32 hold;       // 0x0
    u32 trig;       // 0x4
    u32 release;    // 0x8

    Vec acc;        // 0xC
    f32 acc_value;  // 0x18
    f32 acc_speed;  // 0x1C

    Vec2 pos;       // 0x20
    Vec2 vec;       // 0x28
    f32 speed;      // 0x30

    Vec2 horizon;   // 0x34
    Vec2 hori_vec;  // 0x3C
    f32 hori_speed; // 0x44

    f32 dist;       // 0x48
    f32 dist_vec;   // 0x4C
    f32 dist_speed; // 0x50

    Vec2 acc_vertical;  // 0x54

    u8 dev_type;    // 0x5C
    s8 wpad_err;    // 0x5D
    s8 dpd_valid_fg;// 0x5E
    u8 data_format; // 0x5F

    KPADEXStatus ex_status; //0x60
} KPADStatus;

void KPADInit();
s32 KPADRead(s32 chan, KPADStatus* status, u32 length);

void KPADSetSensorHeight(s32 chan, f32 sensorHeight);
void KPADGetProjectionPos(Vec2* dest, Vec2* src, const Rect* param_3, f32 param_4);

void KPADSetPosParam(s32 chan, f32 x, f32 y);
void KPADSetBtnRepeat(s32 chan, f32, f32);

void KPADEnableDPD(s32 chan);
void KPADDisableDPD(s32 chan);

void KPADSetControlDpdCallback(s32 chan, KPADCallback* cb);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // REVOLUTION_KPAD_H
