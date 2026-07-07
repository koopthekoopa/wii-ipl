#include <private/vf/PrFILE2/standard/pf_format.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_format(pf_ch8 drive, const pf_ch8* param) {
    pf_s32 err = VFiPFVOL_format(drive, (pf_u8*)param);
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
