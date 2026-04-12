#ifndef VF_PF2_FREAD_H
#define VF_PF2_FREAD_H

#include <private/vf/PrFILE2/fatfs/pf_file.h>
#include <private/vf/PrFILE2/pf_types.h>

pf_u32 VFipf2_fread(void* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file);

#endif  // VF_PF2_FREAD_H
