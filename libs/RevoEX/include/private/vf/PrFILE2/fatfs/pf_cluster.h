#ifndef PRFILE2_VFMOD_PF_CLUSTER_H
#define PRFILE2_VFMOD_PF_CLUSTER_H

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/pf_types.h>

void VFiPFCLUSTER_UpdateLastAccessCluster(PF_FILE* p_file, pf_u32 sector);
pf_s32 VFiPFCLUSTER_AppendCluster(PF_FILE* p_file, pf_u32 byte, pf_bool* p_success, pf_u32* sector);
pf_s32 VFiPFCLUSTER_GetAppendSize(PF_FILE* p_file, pf_u32* p_size);

#endif  // PRFILE2_VFMOD_PF_CLUSTER_H
