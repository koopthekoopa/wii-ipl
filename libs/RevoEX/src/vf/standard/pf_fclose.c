#include <private/vf/PrFILE2/standard/pf_fclose.h>

#include <private/vf/PrFILE2/fatfs/pf_volume.h>
#include <private/vf/PrFILE2/standard/pf_api_util.h>

pf_int32 VFipf2_fclose(PF_FILE* p_file) {
    pf_s32 err = VFiPFFILE_fclose(p_file);
    err = VFiPFAPI_convertReturnValue(err);
    return err;
}
