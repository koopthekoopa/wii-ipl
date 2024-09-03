#ifndef REVOLUTION_WPAD_H
#define REVOLUTION_WPAD_H

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#define WPAD_MAX_CONTROLLERS    4

s32     WPADGetStatus();


void __WPADReconnect(BOOL reconnect);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_WPAD_H


