#include "system/RIPL_BoardRecord.h"

#include <revolution/net/NETDigest.h>

#define RBR_SIGNATURE       'RI_5'
#define RBR_HEADER_SIZE     0x0140
#define RBR_IMAGE_TYPE      1

const char* RBRFileType_Txt = "txt";
const char* RBRFileType_Odh = "odh";
const char* RBRFileType_Dat = "dat";
const char* RBRFileType_Log = "log";

u8* RBRGetPicture(u32* rbrData, s32* dataSize) {
    u8* picData = NULL;

    if (rbrData[0] == RBR_SIGNATURE && rbrData[(RBR_HEADER_SIZE / sizeof(rbrData[0]))] == NETCalcCRC32(rbrData, RBR_HEADER_SIZE)) {
        u32 index = 0;
        u32 count = 2;

        while (count--) {
            RBRSomeData* data = (RBRSomeData*)&rbrData[index];

            if (data->type == RBR_IMAGE_TYPE) {
                picData = (u8*)rbrData + data->dataOffset;
                *dataSize = data->dataSize;
                
                break;
            }

            index += 3;
        };
    }

    return picData;
}

void RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom) {
    if (left != NULL) {
        *left   = -230.0f;
    }
    if (right != NULL) {
        *right  = 230.0f;
    }
    if (top != NULL) {
        *top    = 180;
    }
    if (bottom != NULL) {
        *bottom = -80.0f;
    }
}
