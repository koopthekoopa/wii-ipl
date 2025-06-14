#ifndef REVOLUTION_AX_CL_H
#define REVOLUTION_AX_CL_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AX_MAX_VOLUME 32768

typedef enum {
    AX_OUTPUT_STEREO,
    AX_OUTPUT_SURROUND,
    AX_OUTPUT_DPL2
} AXOutputMode;

void    AXSetMode(u32 mode);
u32     AXGetMode();

u16     AXGetAuxAReturnVolume();
u16     AXGetAuxBReturnVolume();
u16     AXGetAuxCReturnVolume();

void    AXSetMasterVolume(u16 volume);

void    AXSetAuxAReturnVolume(u16 volume);
void    AXSetAuxBReturnVolume(u16 volume);
void    AXSetAuxCReturnVolume(u16 volume);


#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_CL_H
