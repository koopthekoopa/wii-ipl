#include <private/vf/PrFILE2/standard/pf_finfo.h>

#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_int32 VFipf2_finfo(PF_FILE* p_file, PF_INFO* p_info) {
    pf_s32 err = VFiPFFILE_finfo(p_file, p_info);
    return VFiPFAPI_convertReturnValue(err);
}
