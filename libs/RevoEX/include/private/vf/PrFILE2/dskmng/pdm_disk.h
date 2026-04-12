#ifndef PRFILE2_VFMOD_PDM_DISK_H
#define PRFILE2_VFMOD_PDM_DISK_H

#include <private/vf/PrFILE2/dskmng/pdm_dskmng.h>

#define PDM_DISK_GET_NO(p_disk) ((pf_u32)p_disk & 0xFF)
#define PDM_DISK_GET_ID(p_disk) ((pf_u32)p_disk & 0xFF00)
#define PDM_DISK_GET_SIG(p_disk) ((pf_u32)p_disk >> 16)

typedef long (*PDM_MAKE_BS)(PDM_DISK*, pf_u8*, PDM_FAT_TYPE*);
typedef long (*PDM_MAKE_FS)(pf_u8*);

pf_s32 VFipdm_disk_check_disk_handle(PDM_DISK* p_disk);
pf_s32 VFipdm_disk_open_disk(PDM_INIT_DISK* p_init_disk_tbl, PDM_DISK** pp_disk);
pf_s32 VFipdm_disk_close_disk(PDM_DISK* p_disk);
pf_s32 VFipdm_disk_get_part_permission(PDM_DISK* p_disk);
pf_s32 VFipdm_disk_release_part_permission(PDM_DISK* p_disk, pf_u32 mode);
pf_s32 VFipdm_disk_physical_read(PDM_DISK* p_disk, pf_u8* buf, pf_u32 psector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success);
pf_s32 VFipdm_disk_physical_write(PDM_DISK* p_disk, const pf_u8* buf, pf_u32 psector, pf_u32 num_sector, pf_u16 bps, pf_u32* p_num_success);
pf_s32 VFipdm_disk_format(PDM_DISK* p_disk, const pf_u8* param);
pf_s32 VFipdm_disk_get_lba_size(PDM_DISK* p_disk, pf_u16* p_lba_size);
pf_s32 VFipdm_disk_get_media_information(PDM_DISK* p_disk, PDM_DISK_INFO* p_disk_info);
pf_s32 VFipdm_disk_check_media_insert(PDM_DISK* p_disk, pf_bool* is_insert);
pf_s32 VFipdm_disk_set_disk(PDM_DISK* p_disk, PDM_PARTITION* p_part);
void VFipdm_disk_notify_media_insert(PDM_DISK* p_disk);

#endif  // PRFILE2_VFMOD_PDM_DISK_H
