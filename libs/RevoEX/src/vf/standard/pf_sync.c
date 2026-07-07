#include <private/vf/PrFILE2/standard/pf_sync.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_sync(pf_ch8 drv_char, pf_s32 mode) {
    pf_s32 err = VFiPFVOL_sync(drv_char, mode);
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
