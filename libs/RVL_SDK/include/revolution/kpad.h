
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
    u32 hold;
    u32 trig;
    u32 release;

    Vec acc;
    f32 acc_value;
    f32 acc_speed;

    Vec2 pos;
    Vec2 vec;
    f32 speed;

    Vec2 horizon;
    Vec2 hori_vec;
    f32 hori_speed;

    f32 dist;
    f32 dist_vec;
    f32 dist_speed;

    Vec2 acc_vertical;

    u8 dev_type;
    s8 wpad_err;
    s8 dpd_valid_fg;
    u8 data_format;

    KPADEXStatus ex_status;
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
