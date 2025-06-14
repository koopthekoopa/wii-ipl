#ifndef PRIVATE_AX_AUX_H
#define PRIVATE_AX_AUX_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void    __AXAuxInit();

void    __AXGetAuxAInput(void** out);
void    __AXGetAuxAOutput(void** out);
void    __AXGetAuxAInputDpl2(void** out);
void    __AXGetAuxAOutputDpl2R(void** out);
void    __AXGetAuxAOutputDpl2Ls(void** out);
void    __AXGetAuxAOutputDpl2Rs(void** out);

void    __AXGetAuxBInput(void** out);
void    __AXGetAuxBOutput(void** out);
void    __AXGetAuxBInputDpl2(void** out);
void    __AXGetAuxBOutputDpl2R(void** out);
void    __AXGetAuxBOutputDpl2Ls(void** out);
void    __AXGetAuxBOutputDpl2Rs(void** out);

void    __AXGetAuxCInput(void** out);
void    __AXGetAuxCOutput(void** out);

void    __AXProcessAux();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_AX_AUX_H
