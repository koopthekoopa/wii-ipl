
#ifndef REVOLUTION_KPAD_H
#define REVOLUTION_KPAD_H

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#include <revolution/wpad.h>

#define KPAD_BUTTON_LEFT        WPAD_BUTTON_LEFT
#define KPAD_BUTTON_RIGHT       WPAD_BUTTON_RIGHT
#define KPAD_BUTTON_DOWN        WPAD_BUTTON_DOWN
#define KPAD_BUTTON_UP          WPAD_BUTTON_UP
#define KPAD_BUTTON_PLUS        WPAD_BUTTON_PLUS
#define KPAD_BUTTON_2           WPAD_BUTTON_2
#define KPAD_BUTTON_1           WPAD_BUTTON_1
#define KPAD_BUTTON_B           WPAD_BUTTON_B
#define KPAD_BUTTON_A           WPAD_BUTTON_A
#define KPAD_BUTTON_MINUS       WPAD_BUTTON_MINUS
#define KPAD_BUTTON_HOME        WPAD_BUTTON_HOME

typedef struct Vec {
    f32 x; // 0x00
    f32 y; // 0x04
    f32 z; // 0x08
} Vec;

typedef struct Vec2 {
    f32 x; // 0x00
    f32 y; // 0x04
} Vec2;

typedef union KPADEXStatus {
    struct {
        Vec2    stick;

        Vec     acc;
        f32     acc_value;
        f32     acc_speed;
    } fs;

    struct {
        u32     hold;
        u32     trig;
        u32     release;

        Vec2    lstick;
        Vec2    rstick;

        f32     ltrigger;
        f32     rtrigger;
    } cl;
} KPADEXStatus;

typedef struct KPADStatus {
    u32             hold;
    u32             trig;
    u32             release;

    Vec             acc;
    f32             acc_value;
    f32             acc_speed;

    Vec2            pos;
    Vec2            vec;
    f32             speed;
    
    Vec2            horizon;
    Vec2            hori_vec;
    f32             hori_speed;

    f32             dist;
    f32             dist_vec;
    f32             dist_speed;

    Vec2            acc_vertical;

    u8              dev_type;
    s8              wpad_err;
    s8              dpd_valid_fg;
    u8              data_format;

    KPADEXStatus    ex_status;
} KPADStatus;

s32 KPADRead(s32 chan, KPADStatus* status, u32 length);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_KPAD_H


