#ifndef VF_PF2_CREATE_H
#define VF_PF2_CREATE_H

#include <private/vf/PrFILE2/fatfs/pf_file.h>
#include <private/vf/PrFILE2/pf_types.h>

PF_FILE* VFipf2_create(const pf_ch8* path, pf_int32 mode);

#endif  // VF_PF2_CREATE_H
