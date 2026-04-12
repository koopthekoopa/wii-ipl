#ifndef VF_PF2_FSEEK_H
#define VF_PF2_FSEEK_H

#include <private/vf/PrFILE2/fatfs/pf_file.h>
#include <private/vf/PrFILE2/pf_types.h>

int VFipf2_fseek(PF_FILE* pFile, pf_s32 lOffset, pf_int32 nOrigin);

#endif  // VF_PF2_FSEEK_H
