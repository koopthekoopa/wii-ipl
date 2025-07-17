#ifndef REVOLUTION_IPL_BOARD_RECORD_H
#define REVOLUTION_IPL_BOARD_RECORD_H

#include <revolution/types.h>

#include <revolution/os/OSTime.h>

#include <revolution/nwc24/NWC24Friend.h>

#include <string.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RBR_MAGIC           'RI_5'  // RIPL Board Record Version 5?
#define RBR_HEADER_SIZE     0x0140

#define RBR_ATTACHMENT_MAX  2

extern const char*  RBRFileType_Txt;
extern const char*  RBRFileType_Odh;
extern const char*  RBRFileType_Dat;
extern const char*  RBRFileType_Log;

#define RBR_FILETYPE_LENGTH 8

static inline int RBRCompareFileType(const char* type, const char* type2) {
    return strncmp(type, type2, RBR_FILETYPE_LENGTH);
}

#define RBR_CDB_TYPE_MEMO           0
#define RBR_CDB_TYPE_LETTER         1
#define RBR_CDB_TYPE_PLAYTIMELOG    2

#define RBR_TITLE_LENGTH_LIMIT      8
#define RBR_BODY_LENGTH_LIMIT       8

typedef enum RBRAttachmentType {
    RBR_ATTACHMENT_ARCHIVE = 0,
    RBR_ATTACHMENT_IMAGE,
} RBRAttachmentType;

typedef struct RBRAttachment {
    RBRAttachmentType   type;   // 0x00
    u32                 offset; // 0x04
    u32                 size;   // 0x08
} RBRAttachment;

typedef struct RBRHeader {
    u32             magic;                              // 0x00
    f32             xPos;                               // 0x04
    f32             yPos;                               // 0x08
    u32             cdbType;                            // 0x0C
    OSTime          time;                               // 0x10

    NWC24FriendAddr friendAttr;                         // 0x18

    u16             unk_0x118;
    u16             nwc24Type;                          // 0x11A

    u32             titleOffset;                        // 0x11C
    u32             bodyOffset;                         // 0x120
    u32             faceOffset;                         // 0x124

    RBRAttachment   attachments[RBR_ATTACHMENT_MAX];    // 0x128

    u32             crc32;                              // 0x140
    u32             reserved; /* ? */                   // 0x148
} RBRHeader;

u8*     RBRGetPicture(RBRHeader* rbrHead, u32* dataSize);
void    RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_IPL_BOARD_RECORD_H
