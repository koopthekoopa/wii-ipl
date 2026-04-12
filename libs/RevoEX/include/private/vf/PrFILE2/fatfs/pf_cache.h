#ifndef PRFILE2_VFMOD_PF_CACHE_H
#define PRFILE2_VFMOD_PF_CACHE_H

#include <private/vf/PrFILE2/pf_types.h>

typedef pf_u8 PF_CACHE_BUFFER[512];

typedef struct PF_CACHE_SETTING {
    struct PF_CACHE_PAGE* pages;  // 0x00
    PF_CACHE_BUFFER* buffers;     // 0x04
    pf_u16 num_fat_pages;         // 0x08
    pf_u16 num_data_pages;        // 0x0A
    pf_u32 num_fat_buf_size;      // 0x0C
    pf_u32 num_data_buf_size;     // 0x10
} PF_CACHE_SETTING;

typedef struct PF_CACHE_PAGE PF_CACHE_PAGE;
struct PF_CACHE_PAGE {
    pf_u16 stat;            // 0x00
    pf_u16 option;          // 0x02
    pf_u8* buffer;          // 0x04
    pf_u8* p_buf;           // 0x08
    pf_u8* p_mod_sbuf;      // 0x0C
    pf_u8* p_mod_ebuf;      // 0x10
    pf_u32 size;            // 0x14
    pf_u32 sector;          // 0x18
    void* signature;        // 0x1C
    PF_CACHE_PAGE* p_next;  // 0x20
    PF_CACHE_PAGE* p_prev;  // 0x24
};

typedef struct PF_SECTOR_CACHE {
    pf_u32 mode;                    // 0x00
    pf_u16 num_fat_pages;           // 0x04
    pf_u16 num_data_pages;          // 0x06
    PF_CACHE_PAGE* pages;           // 0x08
    PF_CACHE_PAGE* p_current_fat;   // 0x0C
    PF_CACHE_PAGE* p_current_data;  // 0x10
    PF_CACHE_BUFFER* buffers;       // 0x14
    pf_u32 fat_buff_size;           // 0x18
    pf_u32 data_buff_size;          // 0x1C
    void* signature;                // 0x20
} PF_SECTOR_CACHE;

void VFiPFCACHE_SetCache(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_cache_page, PF_CACHE_BUFFER* p_cache_buf, pf_u16 num_fat_pages, pf_u16 num_data_pages);
void VFiPFCACHE_SetFATBufferSize(PF_VOLUME* p_vol, pf_u32 size);
void VFiPFCACHE_SetDataBufferSize(PF_VOLUME* p_vol, pf_u32 size);
pf_s32 VFiPFCACHE_InitCaches(PF_VOLUME* p_vol);
pf_s32 VFiPFCACHE_UpdateModifiedSector(PF_CACHE_PAGE* p_page);
pf_s32 VFiPFCACHE_AllocateFATPage(PF_VOLUME* p_vol, pf_u32 sector, PF_CACHE_PAGE** pp_page);
pf_s32 VFiPFCACHE_AllocateDataPage(PF_VOLUME* p_vol, pf_u32 sector, PF_CACHE_PAGE** pp_page);
void VFiPFCACHE_FreeFATPage(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_page);
void VFiPFCACHE_FreeDataPage(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_page);
pf_s32 VFiPFCACHE_ReadFATPage(PF_VOLUME* p_vol, pf_u32 sector, PF_CACHE_PAGE** pp_page);
pf_s32 VFiPFCACHE_ReadDataPage(PF_VOLUME* p_vol, pf_u32 sector, PF_CACHE_PAGE** pp_page, pf_bool set_sig);
pf_s32 VFiPFCACHE_ReadDataPageAndFlushIfNeeded(PF_VOLUME* p_vol, pf_u32 sector, PF_CACHE_PAGE** pp_page, pf_bool set_sig);
pf_s32 VFiPFCACHE_ReadDataNumSector(PF_VOLUME* p_vol, pf_u8* p_buf, pf_u32 sector, pf_u32 num_sector, pf_u32* p_num_success);
pf_s32 VFiPFCACHE_WriteFATPage(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_page);
pf_s32 VFiPFCACHE_WriteDataPage(PF_VOLUME* p_vol, PF_CACHE_PAGE* p_page, pf_bool set_sig);
pf_s32 VFiPFCACHE_WriteFATSectorAndFreeIfNeeded(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector);
pf_s32 VFiPFCACHE_WriteDataNumSectorAndFreeIfNeeded(PF_VOLUME* p_vol, const pf_u8* p_buf, pf_u32 sector, pf_u32 num_sector, pf_u32* p_num_success);
PF_CACHE_PAGE* VFiPFCACHE_SearchDataCache(PF_VOLUME* p_vol, pf_u32 sector);
pf_s32 VFiPFCACHE_FlushFATCache(PF_VOLUME* p_vol);
pf_s32 VFiPFCACHE_FlushDataCacheSpecific(PF_VOLUME* p_vol, void* signature);
pf_s32 VFiPFCACHE_FlushAllCaches(PF_VOLUME* p_vol);
void VFiPFCACHE_FreeAllCaches(PF_VOLUME* p_vol);

#endif  // PRFILE2_VFMOD_PF_CACHE_H
