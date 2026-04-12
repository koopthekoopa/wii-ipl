#include <private/vf/PrFILE2/standard/pf_fread.h>

#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_u32 VFipf2_fread(void* p_buf, pf_u32 size, pf_u32 count, PF_FILE* p_file) {
    pf_u32 count_read;
    VFiPFFILE_fread(p_buf, size, count, p_file, &count_read);
    return count_read;
}
