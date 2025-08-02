#ifndef RIPL_BOARD_RECORD_H
#define RIPL_BOARD_RECORD_H

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

#define RBR_FILETYPE_LENGTH 8

static inline int RBRCompareFileType(const char* type, const char* type2) {
    return strncmp(type, type2, RBR_FILETYPE_LENGTH);
}

#define RBR_TITLE_LENGTH_LIMIT      8
#define RBR_BODY_LENGTH_LIMIT       8

extern const char*  RBRFileType_Txt;
extern const char*  RBRFileType_Odh;
extern const char*  RBRFileType_Dat;
extern const char*  RBRFileType_Log;

typedef enum RBRRecordType {
    RBRRecordType_Memo = 0,
    RBRRecordType_Letter,
    RBRRecordType_PlayTimeLog,
    RBRRecordType_SWUpdate,

    RBRRecordType_Max
} RBRRecordType;

typedef enum RBRReplyFlag {
    RBRReplyFlag_Available,
    RBRReplyFlag_NotAvailable
} RBRReplyFlag;

typedef enum RBRAttachmentType {
    RBRAttachmentType_None = 0,
    RBRAttachmentType_Picture,
    RBRAttachmentType_MsgBoard,
    RBRAttachmentType_PlayTimeLog,
    RBRAttachmentType_MiniData,

    RBRAttachmentType_Max
} RBRAttachmentType;

typedef struct RBRAttachment {
    RBRAttachmentType   type;   // 0x00
    u32                 offset; // 0x04
    u32                 size;   // 0x08
} RBRAttachment;

typedef union RBRRecordFlags {
    u32 data;
    struct {
        u8  optOut; // 0x00
        u8  unk_0x01[2];
        u8  type;   // 0x03
    };
} RBRRecordFlags;

#define RBR_MAKE_RECORDFLAGS(type, optOut) ((u32)((type & 0xFF) | (optOut & 0xFF) << 24))

typedef struct RBRHeader {
    u32             magic;                              // 0x00 (Always 0x52495F35)
    f32             xPos;                               // 0x04
    f32             yPos;                               // 0x08
    u32             flags;                              // 0x0C
    OSTime          time;                               // 0x10

    NWC24FriendAddr friendAddr;                         // 0x18
    u16             friendType;                         // 0x118
    u16             replyFlag;                          // 0x11A

    u32             titleOffset;                        // 0x11C
    u32             bodyOffset;                         // 0x120
    u32             faceOffset;                         // 0x124

    RBRAttachment   attachments[RBR_ATTACHMENT_MAX];    // 0x128

    u32             crc32;                              // 0x140
    u32             reserved; /* ? */                   // 0x148
} RBRHeader;

u8*     RBRGetPicture(u8* data, u32* pictureSize);
void    RBRGetPosRect(f32* left, f32* right, f32* top, f32* bottom);

#ifdef __cplusplus
}
#endif

#endif // RIPL_BOARD_RECORD_H
