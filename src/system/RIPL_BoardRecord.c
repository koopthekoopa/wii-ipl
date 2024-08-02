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
 * @note Address 0x81332B48 (4.3U/4.3E)
 * @note Size 0x98
 */
u8* RBRGetPicture(u32* pRbrData, s32* dataSize) {
    u8* pRetData = NULL;

    if (pRbrData[0] == RBR_SIGNATURE && pRbrData[(RBR_HEADER_SIZE / sizeof(pRbrData[0]))] == NETCalcCRC32(pRbrData, RBR_HEADER_SIZE)) {
        u32 index = 0;
        u32 count = 2;

        while(count--) {
            RBRSomeData* pData = (RBRSomeData*)&pRbrData[index];

            if (pData->type == RBR_IMAGE_TYPE) {
                pRetData = (u8*)pRbrData + pData->dataOffset;
                *dataSize = pData->dataSize;
                
                break;
            }
            
            index += 3;
        };
    }

    return pRetData;
}

/*
 * @note Address 0x81332BE0 (4.3U/4.3E)
 * @note Size 0x44
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


