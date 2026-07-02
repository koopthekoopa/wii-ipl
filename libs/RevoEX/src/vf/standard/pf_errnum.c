#include <private/vf/PrFILE2/standard/pf_errnum.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_errnum() {
    pf_s32 err = VFiPFVOL_errnum();
    err = VFiPFAPI_convertError(err);
    return err;
}
