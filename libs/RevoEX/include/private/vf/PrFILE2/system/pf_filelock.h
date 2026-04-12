#ifndef PRFILE2_VFMOD_PF_FILE_LOCK_H
#define PRFILE2_VFMOD_PF_FILE_LOCK_H

#include <private/vf/PrFILE2/fatfs/pf_file.h>
#include <private/vf/PrFILE2/pf_types.h>

void VFiPF_InitLockFile();
long VFiPF_UnLockFile(PF_FILE* p_file);

#endif  // PRFILE2_VFMOD_PF_FILE_LOCK_H
