#ifndef REVOLUTION_GX_PERF_H
#define REVOLUTION_GX_PERF_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

void    GXSetGPMetric(GXPerf0 perf0, GXPerf1 perf1);
void    GXClearGPMetric();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_PERF_H
