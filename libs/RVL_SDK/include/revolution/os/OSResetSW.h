#ifndef REVOLUTION_OS_RESET_SOFTWARE_H
#define REVOLUTION_OS_RESET_SOFTWARE_H

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*OSResetCallback)();
typedef void (*OSPowerCallback)();

OSResetCallback OSSetResetCallback(OSResetCallback callback);
OSPowerCallback OSSetPowerCallback(OSPowerCallback callback);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_RESET_SOFTWARE_H


