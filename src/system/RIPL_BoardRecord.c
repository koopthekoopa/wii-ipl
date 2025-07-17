#include "system/RIPL_BoardRecord.h"

#include <revolution/net/NETDigest.h>

const char* RBRFileType_Txt = "txt";
const char* RBRFileType_Odh = "odh";
const char* RBRFileType_Dat = "dat";
const char* RBRFileType_Log = "log";

u8* RBRGetPicture(RBRHeader* rbrHead, u32* dataSize) {
    u8* picData = NULL;

    if (rbrHead->magic == RBR_MAGIC && rbrHead->crc32 == NETCalcCRC32(rbrHead, RBR_HEADER_SIZE)) {
        int i;
        for (i = 0; i < RBR_ATTACHMENT_MAX; i++) {
            if (rbrHead->attachments[i].type == RBR_ATTACHMENT_IMAGE) {
                // Get picture data
                picData = (u8*)rbrHead + rbrHead->attachments[i].offset;
                // Get data size of picture
                *dataSize = rbrHead->attachments[i].size;
                break;
            }
        }
    }

    return picData;
}

void RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom) {
    if (left != NULL) {
        *left = -230.0f;
    }
    if (right != NULL) {
        *right = 230.0f;
    }
    if (top != NULL) {
        *top = 180;
    }
    if (bottom != NULL) {
        *bottom = -80.0f;
    }
}
