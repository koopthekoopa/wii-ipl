#include <private/vf/PrFILE2/standard/pf_fsfirst.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_fsnext(PF_DTA* p_dta) {
    pf_s32 err;

    err = VFiPFDIR_fsnext(p_dta);
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
