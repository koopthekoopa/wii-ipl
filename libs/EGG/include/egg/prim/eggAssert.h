#ifndef EGG_PRIM_ASSERT_H
#define EGG_PRIM_ASSERT_H

#include <revolution/types.h>

#define EGG_PRINT(...) system_print(true, (char*)__FILE__, (char*)__VA_ARGS__)

#define EGG_ASSERTLINE(line, exp)                                                                                                                    \
    if (!(exp))                                                                                                                                      \
    system_halt((char*)__FILE__, line, (char*)#exp)

#define EGG_ASSERTLINE_MSG(line, exp, ...)                                                                                                           \
    if (!(exp))                                                                                                                                      \
    system_halt((char*)__FILE__, line, __VA_ARGS__)

#ifdef __cplusplus
extern "C" {
#endif

void system_print(bool visible, char* pFile, char* pMsg, ...);
void system_halt(char* pFile, int line, char* pMsg, ...);

#ifdef __cplusplus
}
#endif

#endif  // EGG_PRIM_ASSERT_H
