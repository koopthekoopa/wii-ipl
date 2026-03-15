#include <zi8clib/zierror.h>
#include <zi8clib/zitypes.h>

ziU32 Zi8GetZHuwdPtr(ziU32* arg0, ziU16* arg1 ZI_NEED_WORK) {
    if (ZI_WORK->unk_0x12C == 0) {
        *arg0 = 0;
        *arg1 = 0;
        Zi8LogError(0x1A5, ZI_WORK);
        return 0;
    } else {
        *arg1 = ZI_WORK->unk_0x124[ZI_WORK->unk_0x12C - 1][1] / 3;
        *arg0 = ZI_WORK->unk_0x124[ZI_WORK->unk_0x12C - 1][0];
        *arg0 += 8;
        Zi8LogError(0x64, ZI_WORK);
        return 1;
    }
}
