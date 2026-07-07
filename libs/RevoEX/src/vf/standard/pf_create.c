#include <private/vf/PrFILE2/standard/pf_create.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

PF_FILE* VFipf2_create(const pf_ch8* path, pf_int32 mode) {
    pf_u32 open_mode_create;
    PF_FILE* p_file;
    PF_STR path_str;
    pf_s32 err;

    (void)mode;

    open_mode_create = 0x19;

    err = VFiPFSTR_InitStr(&path_str, (pf_s8*)path, 1U);
    if (err == 0) {
        err = VFiPFFILE_fopen(&path_str, open_mode_create, &p_file);
    } else {
        VFipf_vol_set.last_error = err;
        p_file = PF_NULL;
    }
    p_file = VFiPFAPI_convertReturnValue2NULL(err, p_file);

    return p_file;
}
