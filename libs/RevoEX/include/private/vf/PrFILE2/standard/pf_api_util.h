#ifndef PRFILE2_VFMOD_PF_API_UTILITIES_H
#define PRFILE2_VFMOD_PF_API_UTILITIES_H

#include <private/vf/PrFILE2/pf_types.h>

pf_s32 VFiPFAPI_ParseOpenModeString(const char* mode_str);
pf_s32 VFiPFAPI_convertError(pf_s32 err);
pf_s32 VFiPFAPI_convertReturnValue(pf_s32 err);
void* VFiPFAPI_convertReturnValue2NULL(pf_s32 err, void* p_stream);
pf_s32 VFiPFAPI_convertReturnValue4unmount(pf_s32 err);

#endif  // PRFILE2_VFMOD_PF_API_UTILITIES_H
