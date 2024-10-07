
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
        Vec2        stick;                              // 0x00

        Vec         acc;                                // 0x08
        f32         acc_value;                          // 0x14
        f32         acc_speed;                          // 0x18
    } fs;
    struct {
        u32         hold;                               // 0x00
        u32         trig;                               // 0x04

        u32         release;                            // 0x08

        Vec2        lstick;                             // 0x0C
        Vec2        rstick;                             // 0x14

        f32         ltrigger;                           // 0x1C
        f32         rtrigger;                           // 0x20
    } cl;
    struct {
        f64         tgc_weight;                         // 0x00

        f64         weight[WPAD_MAX_CONTROLLERS];       // 0x08
        f64         weight_ave[WPAD_MAX_CONTROLLERS];   // 0x28
        s32         weight_err;                         // 0x48

        s32         tgc_weight_err;                     // 0x4C
    } bl;
} KPADEXStatus;

struct KPADStatus {
    u32             hold;                               // 0x00
    u32             trig;                               // 0x04
    u32             release;                            // 0x08

    Vec             acc;                                // 0x0C
    f32             acc_value;                          // 0x18
    f32             acc_speed;                          // 0x1C

    Vec2            pos;                                // 0x20
    Vec2            vec;                                // 0x28

    f32             speed;                              // 0x30

    Vec2            horizon;                            // 0x34
    Vec2            hori_vec;                           // 0x3C
    f32             hori_speed;                         // 0x44

    f32             dist;                               // 0x48
    f32             dist_vec;                           // 0x4C
    f32             dist_speed;                         // 0x50

    Vec2            acc_vertical;                       // 0x54

    u8              dev_type;                           // 0x5C
    s8              wpad_err;                           // 0x5D
    s8              dpd_valid_fg;                       // 0x5E
    u8              data_format;                        // 0x5F
    KPADEXStatus    ex_status;                          // 0x60
};

typedef struct KPADUnifiedWpadStatus {
    union {
        struct WPADStatus core;
        struct WPADFSStatus fs;
        struct WPADCLStatus cl;
        struct WPADTRStatus tr;
        struct WPADBLStatus bl;
    } u;                    // 0x00

    unsigned char fmt;      // 0x36
    unsigned char padding;  // 0x37
} KPADUnifiedWpadStatus;

s32     WPADGetStatus();

void    __WPADReconnect(BOOL reconnect);
void    WPADSetSensorBarPower(BOOL value);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_KPAD_H


