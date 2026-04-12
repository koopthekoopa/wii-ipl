#include <private/vf/PrFILE2/standard/pf_unmount.h>

#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_int32 VFipf2_unmount(pf_ch8 drive, pf_u32 mode) {
    pf_s32 err = VFiPFVOL_unmount(drive, mode);
    return VFiPFAPI_convertReturnValue4unmount(err);
}
