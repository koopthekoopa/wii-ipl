#ifndef RFLi_DEBUG_H
#define RFLi_DEBUG_H

#include <RFL_Types.h>
#include <internal/RFLi_LibConfig.h>

#include <revolution/os/OSError.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef RFL_DEBUG

#define RFLi_REPORT(...)                            OSReport(__VA_ARGS__)

#define RFLi_ASSERTLINE(x, line)                    (void)((x) || (OSPanic(__FILE__, line, "Failed assertion "#x), 0))
#define RFLi_ASSERTLINE_MSG(x, line, ...)           (void)((x) || (OSPanic(__FILE__, line, __VA_ARGS__), 0))
#define RFLi_ASSERTLINE_NULL(p, line)               RFLi_ASSERTLINE_MSG((p) != NULL, line, "RFL: NULL pointer. ("#p")")
#define RFLi_ASSERTLINE_ALIGN(p, align, line)       RFLi_ASSERTLINE_MSG(((u32)(p) & ((align) - 1)) == 0, line, "RFL: pointer alignment error. ("#p")") 
#define RFLi_ASSERTLINE_RANGE(i, min, max, line)    RFLi_ASSERTLINE_MSG((min) <= (i) && (i) < (max), line, "Range Over: %d <= " #i "=%d < %d", min, i, max)

#else

#define RFLi_REPORT(...)                            ((void)0)

#define RFLi_ASSERTLINE(x, line)                    ((void)0)
#define RFLi_ASSERTLINE_MSG(x, line, ...)           ((void)0)
#define RFLi_ASSERTLINE_NULL(p, line)               ((void)0)
#define RFLi_ASSERTLINE_ALIGN(p, align, line)       ((void)0)
#define RFLi_ASSERTLINE_RANGE(i, min, max, line)    ((void)0)

#endif

#ifdef __cplusplus
}
#endif

#endif // RFLi_DEBUG_H
