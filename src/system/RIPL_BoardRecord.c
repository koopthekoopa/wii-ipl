#include "system/RIPL_BoardRecord.h"
#include <revolution/net/NETDigest.h>

#define RBR_SIGNATURE       'RI_5'
#define RBR_HEADER_SIZE     0x0140
#define RBR_IMAGE_TYPE      1

const char* RBRFileType_Txt = "txt";
const char* RBRFileType_Odh = "odh";
const char* RBRFileType_Dat = "dat";
const char* RBRFileType_Log = "log";

/*
    @Address 0x81332B48
    @Size 0x98
*/
u8* RBRGetPicture(u32* rbrData, s32* maybeRbrSize) {
    u8* pRetData = NULL;

    if (rbrData[0] == RBR_SIGNATURE && rbrData[(RBR_HEADER_SIZE / sizeof(rbrData[0]))] == NETCalcCRC32(rbrData, RBR_HEADER_SIZE)) {
        u32 index = 0;
        u32 count = 2;

        while(count != 0) {
            RBRAttachment* pData = (RBRAttachment*)&rbrData[index];

            if (pData->type == RBR_IMAGE_TYPE) {
                pRetData = (u8*)rbrData + pData->dataOffset;
                *maybeRbrSize = pData->maybeSize;
                
                break;
            }
            
            index += 3;
            count--;
        };
    }

    return pRetData;
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


