#ifndef PRFILE2_VFMOD_PF_SECTOR_H
#define PRFILE2_VFMOD_PF_SECTOR_H

#include <private/vf/PrFILE2/common/pf_str.h>
#include <private/vf/PrFILE2/pf_types.h>

pf_s32 VFiPFSEC_ReadFAT(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u16 size);
pf_s32 VFiPFSEC_ReadData(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u32 size, pf_u32* p_success_size, pf_bool set_sig);
pf_s32 VFiPFSEC_WriteFAT(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u16 sizes);
pf_s32 VFiPFSEC_WriteData(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u32 size, pf_u32* p_success_size, pf_bool set_sig);

#endif  // PRFILE2_VFMOD_PF_SECTOR_H
