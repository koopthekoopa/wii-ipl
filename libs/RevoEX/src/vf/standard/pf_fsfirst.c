#include <private/vf/PrFILE2/standard/pf_fsfirst.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_fsfirst(const pf_ch8* path, pf_u8 attrs, PF_DTA* p_dta) {
    pf_s32 err;
    PF_STR path_str;

    err = VFiPFSTR_InitStr(&path_str, (pf_s8*)path, 1U);
    if (err == 0) {
        err = VFiPFDIR_fsfirst(&path_str, attrs, p_dta);
    } else {
        VFipf_vol_set.last_error = err;
    }
    err = VFiPFAPI_convertReturnValue(err);

    return err;
}
