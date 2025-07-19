#include "system/RIPL_BoardRecord.h"

#include <revolution/net/NETDigest.h>

const char* RBRFileType_Txt = "txt";
const char* RBRFileType_Odh = "odh";
const char* RBRFileType_Dat = "dat";
const char* RBRFileType_Log = "log";

u8* RBRGetPicture(u8* data, u32* pictureSize) {
    u8* picture = NULL;
    RBRHeader* header = (RBRHeader*)data;

    if (header->magic == RBR_MAGIC && header->crc32 == NETCalcCRC32(data, RBR_HEADER_SIZE)) {
        int i;
        for (i = 0; i < RBR_ATTACHMENT_MAX; i++) {
            if (header->attachments[i].type == RBRAttachmentType_Picture) {
                // Get picture data
                picture = (u8*)header + header->attachments[i].offset;
                // Get data size of picture
                *pictureSize = header->attachments[i].size;
                break;
            }
        }
    }

    return picture;
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
