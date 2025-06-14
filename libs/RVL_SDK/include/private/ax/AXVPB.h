#ifndef PRIVATE_AX_VPB_H
#define PRIVATE_AX_VPB_H

#include <revolution/ax/AXVPB.h>

#ifdef __cplusplus
extern "C" {
#endif

s32     __AXGetNumVoices();
void    __AXServiceVPB(AXVPB* vpb);
void    __AXDumpVPB(AXVPB* vpb);
void    __AXSyncPBs(u32 baseCycles);
AXPB*   __AXGetPBs();
void    __AXSetPBDefault(AXVPB* vpb);
void    __AXVPBInit();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_VPB_H
