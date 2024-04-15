#include "system/RIPL_BoardRecord.h"
#include <revolution/net/NETDigest.h>

#define RBR_SIGNATURE       'RI_5'
#define RBR_HEADER_SIZE     0x0140
#define RBR_UNK_TYPE        1

// this ain't right... wtf
u32 dataLoc1 = 'txt\0';
u32* RBRFileType_Txt = &dataLoc1;
u32 dataLoc2 = 'odh\0';
u32* RBRFileType_Odh = &dataLoc2;
u32 dataLoc3 = 'dat\0';
u32* RBRFileType_Dat = &dataLoc3;
u32 dataLoc4 = 'log\0';
u32* RBRFileType_Log = &dataLoc4;

/*
    @Address 0x81332B48
    @Size 0x98
*/
// it has to be a structure instead of an array,,,
u8* RBRGetPicture(u32* rbrData, s32* unkData) {
    u8* ret = NULL;

    if (rbrData[0] == RBR_SIGNATURE && rbrData[(RBR_HEADER_SIZE / sizeof(rbrData[0]))] == NETCalcCRC32(rbrData, RBR_HEADER_SIZE)) {
        u32 index = 0;
        u32 count = 2;

        while(count != 0) {
            RBRUnkStruct* data = (RBRUnkStruct*)&rbrData[index];

            if (data->type == RBR_UNK_TYPE) {
                ret = (u8*)rbrData + data->imgOffset;
                *unkData = data->unk;
                break;
            }
            index += 3;
            count--;
        };
    }

    return ret;
}


/*
    @Address 0x81332BE0
    @Size 0x44
*/
void RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom) {
    if (left != NULL) {
        *left = -230;
    }
    if (right != NULL) {
        *right = 230;
    }
    if (top != NULL) {
        *top = 180;
    }
    if (bottom != NULL) {
        *bottom = -80;
    }
}


