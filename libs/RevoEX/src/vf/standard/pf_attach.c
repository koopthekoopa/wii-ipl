#include <private/vf/PrFILE2/standard/pf_attach.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_attach(PF_DRV_TBL** drv_tbl) {
    pf_s32 err;
    if (drv_tbl == PF_NULL || !*drv_tbl) {
        err = 10;
        VFipf_vol_set.last_error = 10;
    } else {
        err = 0;
        for (; *drv_tbl != PF_NULL; drv_tbl++) {
            if (err == 0) {
                err = VFiPFVOL_attach(*drv_tbl);
            } else {
                (*drv_tbl)->drive = 0;
            }
        }
    }
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
