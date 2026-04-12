#include <private/vf/PrFILE2/standard/pf_remove.h>

#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <private/vf/PrFILE2/fatfs/pf_file.h>

#include <private/vf/PrFILE2/common/pf_str.h>

pf_int32 VFipf2_remove(const pf_ch8* path) {
    pf_s32 err;
    PF_STR path_str;

    err = VFiPFSTR_InitStr(&path_str, (pf_s8*)path, 1U);
    if (err == 0) {
        err = VFiPFFILE_remove(&path_str);
    } else {
        VFipf_vol_set.last_error = err;
    }
    return VFiPFAPI_convertReturnValue(err);
}
