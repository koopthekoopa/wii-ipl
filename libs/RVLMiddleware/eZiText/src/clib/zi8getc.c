#include <zi8clib/zi8getc.h>

#include <zi8clib/zi8getc2.h>

ziU8 Zi8GetCandidates(ziGetParam* getParam ZI_NEED_WORK) {
    ZI_WORK->unk_0x1B3A = 0;
    ZI_WORK->unk_0x1B3C = 0;
    ZI_WORK->unk_0x1B3B = 0;
    ZI_WORK->unk_0x1B3D = 0;
    ZI_WORK->unk_0x1B36 = 0;
    ZI_WORK->unk_0x1B32 = 0;
    ZI_WORK->unk_0x1B34 = 0;
    return _Zi8GetCandidates(getParam, ZI_WORK);
}
