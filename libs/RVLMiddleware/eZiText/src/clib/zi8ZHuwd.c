#include <zi8clib/zi8ZHuwd.h>

#include <zi8clib/zierror.h>

ziBool Zi8GetZHuwdPtr(ziU8** arg0, ziU16* arg1 ZI_NEED_WORK) {
    if (ZI_WORK->zhUwdDataIdx == 0) {
        *arg0 = ZI8_NULL;
        *arg1 = 0;
        Zi8LogError(ZI8_ERR_UWD_ZH_BAD_DATA_IDX, ZI_WORK);
        return ZI8_FALSE;
    }

    *arg1 = ZI_WORK->zhUwdDataPtrs[ZI_WORK->zhUwdDataIdx - 1][1] / 3;
    *arg0 = (ziU8*)ZI_WORK->zhUwdDataPtrs[ZI_WORK->zhUwdDataIdx - 1];
    *arg0 += 8;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_TRUE;
}
