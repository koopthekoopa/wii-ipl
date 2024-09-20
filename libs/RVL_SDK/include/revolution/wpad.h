#ifndef REVOLUTION_WPAD_H
#define REVOLUTION_WPAD_H

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define WPAD_MAX_CONTROLLERS    4

#define WPAD_BUTTON_LEFT        (1 << 0)
#define WPAD_BUTTON_RIGHT       (1 << 1)
#define WPAD_BUTTON_DOWN        (1 << 2)
#define WPAD_BUTTON_UP          (1 << 3)
#define WPAD_BUTTON_PLUS        (1 << 4)
#define WPAD_BUTTON_2           (1 << 8)
#define WPAD_BUTTON_1           (1 << 9)
#define WPAD_BUTTON_B           (1 << 10)
#define WPAD_BUTTON_A           (1 << 11)
#define WPAD_BUTTON_MINUS       (1 << 12)
#define WPAD_BUTTON_HOME        (1 << 15)

s32     WPADGetStatus();


void __WPADReconnect(BOOL reconnect);
void WPADSetSensorBarPower(BOOL value);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_WPAD_H


