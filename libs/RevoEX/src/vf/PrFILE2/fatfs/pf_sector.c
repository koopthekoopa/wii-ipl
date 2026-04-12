#include <private/vf/PrFILE2/fatfs/pf_cache.h>
#include <private/vf/PrFILE2/fatfs/pf_sector.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/driver/pf_driver.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_s32 VFiPFSEC_ReadFAT(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u16 size) {
    PF_CACHE_PAGE* p_page;
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_buf == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x01) == 0 || VFiPFDRV_IsInserted(p_vol) == PF_FALSE) {
        return 9;
    }
    err = VFiPFCACHE_ReadFATPage(p_vol, sector, &p_page);
    if (err != 0) {
        return err;
    }
    VFipf_memcpy(p_buf, &p_page->p_buf[offset], size);
    return 0;
}

pf_s32 VFiPFSEC_ReadData(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u32 size, pf_u32* p_success_size, pf_u32 set_sig) {
    PF_CACHE_PAGE* p_page;
    pf_u32 num_success;
    pf_u32 num_sector;
    pf_u32 adjust_sector;
    pf_u32 rest_sector;
    pf_s32 err;

    *p_success_size = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_buf == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x01) == 0 || VFiPFDRV_IsInserted(p_vol) == PF_FALSE) {
        return 9;
    }
    if (offset != 0 || size < p_vol->bpb.bytes_per_sector) {
        err = VFiPFCACHE_ReadDataPage(p_vol, sector, &p_page, set_sig);
        if (err != 0) {
            return err;
        }
        VFipf_memcpy(p_buf, &p_page->p_buf[offset], size);
        *p_success_size = size;
    } else if (offset == 0 && (size & (p_vol->bpb.bytes_per_sector - 1)) == 0) {
        err = VFiPFCACHE_ReadDataNumSector(p_vol, p_buf, sector, size >> p_vol->bpb.log2_bytes_per_sector, &num_success);
        if (err != 0) {
            return err;
        }
        *p_success_size += num_success << p_vol->bpb.log2_bytes_per_sector;
        if (num_success != (size >> p_vol->bpb.log2_bytes_per_sector)) {
            return 17;
        }
    } else if (offset == 0) {
        p_page = VFiPFCACHE_SearchDataCache(p_vol, sector);
        if (p_page != PF_NULL) {
            num_sector = (p_page->sector + p_page->size) - sector;
            if (num_sector <= (size >> p_vol->bpb.log2_bytes_per_sector)) {
                VFipf_memcpy(p_buf, p_page->p_buf, num_sector << p_vol->bpb.log2_bytes_per_sector);
                *p_success_size += num_sector << p_vol->bpb.log2_bytes_per_sector;
                size -= num_sector << p_vol->bpb.log2_bytes_per_sector;
                sector += num_sector;
            } else if (num_sector > (size >> p_vol->bpb.log2_bytes_per_sector)) {
                VFipf_memcpy(p_buf, p_page->p_buf, size);
                *p_success_size += size;
                size = 0;
            }
        }
        if (size != 0) {
            adjust_sector = 0;
            num_sector = size >> p_vol->bpb.log2_bytes_per_sector;
            rest_sector = (sector + num_sector) % p_vol->cache.data_buff_size;
            if (num_sector > rest_sector) {
                adjust_sector = num_sector - rest_sector;
                err = VFiPFCACHE_ReadDataNumSector(p_vol, &p_buf[*p_success_size], sector, adjust_sector, &num_success);
                if (err != 0) {
                    return err;
                }
                *p_success_size += num_success << p_vol->bpb.log2_bytes_per_sector;
                if (num_success != adjust_sector) {
                    return 17;
                }
                sector += adjust_sector;
                num_sector -= adjust_sector;
            }
            if (num_sector != 0) {
                err = VFiPFCACHE_ReadDataPage(p_vol, sector, &p_page, set_sig);
                if (err != 0) {
                    return err;
                }
                VFipf_memcpy(&p_buf[*p_success_size], p_page->p_buf, num_sector << p_vol->bpb.log2_bytes_per_sector);
                *p_success_size += num_sector << p_vol->bpb.log2_bytes_per_sector;
            }
        }
    } else {
        return 10;
    }
    return 0;
}

pf_s32 VFiPFSEC_WriteFAT(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u16 size) {
    PF_CACHE_PAGE* p_page;
    pf_s32 err;

    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_buf == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x01) == 0 || !VFiPFDRV_IsInserted(p_vol) || VFiPFDRV_IsWProtected(p_vol)) {
        return 9;
    }
    err = VFiPFCACHE_ReadFATPage(p_vol, sector, &p_page);
    if (err != 0) {
        return err;
    }
    VFipf_memcpy(&p_page->p_buf[offset], (pf_u8*)p_buf, size);
    err = VFiPFCACHE_WriteFATPage(p_vol, p_page);
    if (err != 0) {
        return err;
    }
    return 0;
}

pf_s32 VFiPFSEC_WriteData(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector, pf_u16 offset, pf_u32 size, pf_u32* p_success_size, pf_u32 set_sig) {
    pf_s32 err;
    PF_CACHE_PAGE* p_page;
    pf_u32 num_success;
    pf_u32 num_sector;
    pf_u32 adjust_sector;
    pf_u32 rest_sector;

    *p_success_size = 0;
    if (p_vol == PF_NULL) {
        return 10;
    }
    if (p_buf == PF_NULL) {
        return 10;
    }
    if ((p_vol->flags & 0x01) == 0 || !VFiPFDRV_IsInserted(p_vol) || VFiPFDRV_IsWProtected(p_vol)) {
        return 9;
    }
    if (offset != 0 || size < p_vol->bpb.bytes_per_sector) {
        err = VFiPFCACHE_ReadDataPageAndFlushIfNeeded(p_vol, sector, &p_page, set_sig);
        if (err != 0) {
            return err;
        }
        VFipf_memcpy(&p_page->p_buf[offset], (pf_u8*)p_buf, size);
        err = VFiPFCACHE_WriteDataPage(p_vol, p_page, set_sig);
        if (err != 0) {
            return err;
        }
        *p_success_size = size;
    } else if (offset == 0 && (size & (p_vol->bpb.bytes_per_sector - 1)) == 0) {
        err = VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded(p_vol, p_buf, sector, size >> p_vol->bpb.log2_bytes_per_sector, &num_success);
        if (err != 0) {
            return err;
        }
        *p_success_size = num_success << p_vol->bpb.log2_bytes_per_sector;
        if (num_success != (size >> p_vol->bpb.log2_bytes_per_sector)) {
            return 17;
        }
    } else if (offset == 0) {
        adjust_sector = 0;
        num_sector = size >> p_vol->bpb.log2_bytes_per_sector;
        rest_sector = (sector + num_sector) % p_vol->cache.data_buff_size;
        if (num_sector > rest_sector) {
            adjust_sector = num_sector - rest_sector;
            err = VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded(p_vol, p_buf, sector, adjust_sector, &num_success);
            if (err != 0) {
                return err;
            }
            *p_success_size = num_success << p_vol->bpb.log2_bytes_per_sector;
            if (num_success != adjust_sector) {
                return 17;
            }
            sector += adjust_sector;
            num_sector -= adjust_sector;
        }
        if (num_sector != 0) {
            err = VFiPFCACHE_ReadDataPageAndFlushIfNeeded(p_vol, sector, &p_page, set_sig);
            if (err != 0) {
                return err;
            }
            VFipf_memcpy(p_page->p_buf, (pf_u8*)&p_buf[*p_success_size], num_sector << p_vol->bpb.log2_bytes_per_sector);
            err = VFiPFCACHE_WriteDataPage(p_vol, p_page, set_sig);
            if (err != 0) {
                return err;
            }
            *p_success_size += num_sector << p_vol->bpb.log2_bytes_per_sector;
        }
    } else {
        return 10;
    }
    return 0;
}
