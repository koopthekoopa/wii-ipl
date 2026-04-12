#include <private/vf/PrFILE2/standard/pf_attach.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_attach(PF_DRV_TBL** drv_tbl) {
    pf_s32 err;
    if (drv_tbl == PF_NULL || !*drv_tbl) {
        err = 10;
        VFipf_vol_set.last_error = 10;
    } else {
        for (; *drv_tbl != PF_NULL; drv_tbl++) {
            err = VFiPFVOL_attach(*drv_tbl);
            if (err != 0) {
                return VFiPFAPI_convertReturnValue(err);
            }
        }
    }
    return VFiPFAPI_convertReturnValue(err);
}
