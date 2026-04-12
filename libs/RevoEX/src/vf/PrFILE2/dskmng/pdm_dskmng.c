#include <private/vf/PrFILE2/dskmng/pdm_disk.h>
#include <private/vf/PrFILE2/dskmng/pdm_dskmng.h>
#include <private/vf/PrFILE2/dskmng/pdm_partition.h>

#include <private/vf/PrFILE2/common/pf_clib.h>

PDM_DISK_SET VFipdm_disk_set;

pf_s32 VFipdm_init_diskmanager(pf_u32 config, void* param) {
    pf_u32 i;

    (void)config;  // unused
    (void)param;   // unused

    VFipf_memset(&VFipdm_disk_set, 0, sizeof(VFipdm_disk_set));

    for (i = 0; i < PDM_DRIVE_COUNT; i++) {
        VFipdm_disk_set.disk[i].disk_lock_handle = PF_NULL;
    }

    for (i = 0; i < PDM_DRIVE_COUNT; i++) {
        VFipdm_disk_set.partition[i].part_lock_handle = PF_NULL;
    }
    return 0;
}

pf_s32 VFipdm_open_disk(PDM_INIT_DISK* p_init_disk_tbl, PDM_DISK** pp_disk) {
    pf_s32 err;

    if (pp_disk == PF_NULL) {
        return 1;
    }

    *pp_disk = PF_NULL;
    err = VFipdm_disk_open_disk(p_init_disk_tbl, pp_disk);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFipdm_close_disk(PDM_DISK* p_disk) {
    pf_s32 err;

    if (p_disk == PF_NULL) {
        return 1;
    }

    err = VFipdm_disk_close_disk(p_disk);
    if (err != 0) {
        return err;
    }
    return err;
}

pf_s32 VFipdm_open_partition(PDM_DISK* p_disk, pf_s32 part_id, PDM_PARTITION** pp_part) {
    pf_s32 err;

    if (p_disk == PF_NULL) {
        return 1;
    }
    if (pp_part == PF_NULL) {
        return 1;
    }

    *pp_part = PF_NULL;
    err = VFipdm_part_open_partition(p_disk, part_id, pp_part);
    if (err != 0) {
        return err;
    }

    return 0;
}

pf_s32 VFipdm_close_partition(PDM_PARTITION* p_part) {
    pf_s32 err;

    if (p_part == PF_NULL) {
        return 1;
    }

    err = VFipdm_part_close_partition(p_part);
    if (err != 0) {
        return err;
    }
    return 0;
}
