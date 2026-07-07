#include <private/vf/PrFILE2/standard/pf_getdev.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_devinf(pf_ch8 drv_char, PF_DEV_INF* dev_inf) {
    pf_s32 err = VFiPFVOL_getdev(drv_char, dev_inf);
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
