#include <private/vf/PrFILE2/standard/pf_fseek.h>

#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

pf_int32 VFipf2_fseek(PF_FILE* pFile, pf_s32 lOffset, pf_int32 nOrigin) {
    pf_s32 err = VFiPFFILE_fseek(pFile, lOffset, nOrigin);
    return VFiPFAPI_convertReturnValue(err);
}
