#ifndef REVOLUTION_OS_LAUNCH_FOR_SYSTEM_H
#define REVOLUTION_OS_LAUNCH_FOR_SYSTEM_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void __OSLaunchTitlevForSystem(u64 titleId, u32 launchCode, char* const argv[]);
void __OSLaunchTitlelForSystem(u64 titleId, u32 launchCode, const char* arg, ...);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_LAUNCH_FOR_SYSTEM_H
