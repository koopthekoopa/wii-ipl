#ifndef REVOLUTION_NWC24_MSG_BOARD_H
#define REVOLUTION_NWC24_MSG_BOARD_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#include <revolution/os/OSTime.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum NWC24MsgType {
    NWC24_MSGTYPE_RVL_MENU_SHARED   = 0,
    NWC24_MSGTYPE_WII_MENU_SHARED   = 0,

    NWC24_MSGTYPE_RVL               = 1,
    NWC24_MSGTYPE_RVL_APPZ          = 1,
    NWC24_MSGTYPE_RVL_APP_ONLY      = 1,
    NWC24_MSGTYPE_WII               = 1,
    NWC24_MSGTYPE_WII_APP           = 1,
    NWC24_MSGTYPE_WII_APP_ONLY      = 1,

    NWC24_MSGTYPE_RVL_MENU          = 2,
    NWC24_MSGTYPE_RVL_MENU_ONLY     = 2,
    NWC24_MSGTYPE_WII_MENU          = 2,
    NWC24_MSGTYPE_WII_MENU_ONLY     = 2,

    NWC24_MSGTYPE_RVL_APP_HIDDEN    = 3,
    NWC24_MSGTYPE_RVL_HIDDEN        = 3,
    NWC24_MSGTYPE_WII_APP_HIDDEN    = 3,
    NWC24_MSGTYPE_WII_HIDDEN        = 3,

    NWC24_MSGTYPE_PUBLIC            = 4
} NWC24MsgType;

typedef enum NWC24MBoxType {
    NWC24_MBOX_TYPE_SEND = 0,
    NWC24_MBOX_TYPE_RECV,
} NWC24MBoxType;

typedef enum NWC24EncodingRegion {
    NWC24_ENCODING_REGION_NON = -1,
    NWC24_ENCODING_REGION_JPN,
    NWC24_ENCODING_REGION_USA,
    NWC24_ENCODING_REGION_EUR,
    NWC24_ENCODING_REGION_KOR,
    NWC24_ENCODING_REGION_CHN
} NWC24EncodingRegion;

/* NWC24 Message Object */

typedef struct NWC24MsgObj {
    u32 data[64]; // 0x00
} NWC24MsgObj;

#define NWC24_FACE_DATA_SIZE    0x4A /* sizeof(RFLCharData) */

#define NWC24_ATTACH_PICTURE_MAX        0x14000
#define NWC24_ATTACH_MSGBOARD_MAX       0x1E000
#define NWC24_ATTACH_MINIDATA_MAX       0x2800

#define NWC24_SUBJECT_PUBLIC_WORK_SIZE  0x600
#define NWC24_TEXT_PUBLIC_WORK_SIZE     0x2EE0

#define NWC24_MSG_SUBJECT_LENGTH        256
#define NWC24_MSG_TEXT_LENGTH           3000

NWC24Err    NWC24InitMsgObj(NWC24MsgObj* msg, NWC24MsgType type);

NWC24Err    NWC24SetMsgToId(NWC24MsgObj* msg, NWC24UserId id);
NWC24Err    NWC24SetMsgToAddr(NWC24MsgObj* msg, const char* addr, u32 length);
NWC24Err    NWC24SetMsgSubject(NWC24MsgObj* msg, const char* subject, u32 length);
NWC24Err    NWC24SetMsgText(NWC24MsgObj* msg, const char* text, u32 textLen, NWC24Charset charset, NWC24Encoding encoding);
NWC24Err    NWC24SetMsgAttached(NWC24MsgObj* msg, const void* attachData, u32 attachSize, NWC24MIMEType type);
NWC24Err    NWC24SetMsgFaceData(NWC24MsgObj* msg, const void* faceData);
NWC24Err    NWC24SetMsgMBNoReply(NWC24MsgObj* msg, BOOL mbNoReplyFlag);
NWC24Err    NWC24SetMsgMBRegDate(NWC24MsgObj* msg, u16 year, u8 month, u8 day);
NWC24Err    NWC24SetMsgAppId(NWC24MsgObj* msg, u32 appId);
NWC24Err    NWC24SetMsgLedPattern(NWC24MsgObj* msg, int ledPattern);

NWC24Err    NWC24GetMsgType(const NWC24MsgObj* msg, NWC24MsgType* type);
NWC24Err    NWC24GetMsgSubjectSize(const NWC24MsgObj* msg, u32* subjectSize);
NWC24Err    NWC24GetMsgTextSize(const NWC24MsgObj* msg, u32* textSize);
NWC24Err    NWC24GetMsgNumAttached(const NWC24MsgObj* msg, u32* numAttach);
NWC24Err    NWC24GetMsgAttachedSize(const NWC24MsgObj* msg, u32 attachIndex, u32* attachSize);
NWC24Err    NWC24GetMsgAttachedType(const NWC24MsgObj* msg, u32 attachIndex, NWC24MIMEType* attachType);
NWC24Err    NWC24GetMsgAppId(const NWC24MsgObj* msg, u32* appId);
NWC24Err    NWC24GetMsgGroupId(const NWC24MsgObj* msg, u16* groupId);
NWC24Err    NWC24GetMsgFromId(const NWC24MsgObj* msg, NWC24UserId* fromId);
NWC24Err    NWC24GetMsgDate(const NWC24MsgObj* msg, OSCalendarTime* msgDate);
NWC24Err    NWC24GetMsgIconNewSign(const NWC24MsgObj* msg, u32* iconNewSign);

NWC24Err    NWC24ReadMsgField(const NWC24MsgObj* msg, char* fieldName, u8* fieldBuf, unsigned long fieldBufLen);
NWC24Err    NWC24ReadMsgFaceData(const NWC24MsgObj* msg, u8* faceData);
NWC24Err    NWC24ReadMsgAltName(const NWC24MsgObj* msg, u16* altName, u32 altNameLen);
NWC24Err    NWC24ReadMsgMBNoReply(const NWC24MsgObj* msg, BOOL* mbNoReplyFlag);
NWC24Err    NWC24ReadMsgMBRegDate(const NWC24MsgObj* msg, u16* year, u8* month, u8* day);
NWC24Err    NWC24ReadMsgMBDelay(const NWC24MsgObj* msg, u8* mbDelay);
NWC24Err    NWC24ReadMsgMBUpdateSW(const NWC24MsgObj* msg, u32* mbUpdateSW);
NWC24Err    NWC24ReadMsgMBOptOutFlag(const NWC24MsgObj* msg, BOOL* mbOptOutFlag, u32* appId);
NWC24Err    NWC24ReadMsgFromAddr(const NWC24MsgObj* msg, char* addr, u32 addrLen);
NWC24Err    NWC24ReadMsgSubject(const NWC24MsgObj* msg, char* subject, u32 subjectLen);
NWC24Err    NWC24ReadMsgText(const NWC24MsgObj* msg, char* text, u32 textLen, NWC24Charset* charset, NWC24Encoding* encoding);
NWC24Err    NWC24ReadMsgTextEx(const NWC24MsgObj* msg, char* text, u32 textLen, const char* name, u32 nameLen, NWC24Charset* charset, NWC24Encoding* encoding);
NWC24Err    NWC24ReadMsgAttached(const NWC24MsgObj* msg, u32 attachIndex, u8* attachData, u32 attachSize);

NWC24Err    NWC24ReadMsgSubjectPublic(const NWC24MsgObj* msg, u16* subject, u32* subjectLen, NWC24EncodingRegion encRegion, u16 unk, u8* work, u32 workSize);
NWC24Err    NWC24ReadMsgTextPublic(const NWC24MsgObj* msg, u16* text, u32* textLen, NWC24EncodingRegion encRegion, u16 unk, u8* work, u32 workSize);
NWC24Err    NWC24SetMsgSubjectPublic(NWC24MsgObj* msg, const u16* subject, u32 subjectLen, NWC24EncodingRegion encRegion, u16 unk, u8* work, u32 workSize);
NWC24Err    NWC24SetMsgSubjectAndTextPublic(NWC24MsgObj* msg, const u16* subject, u32 subjectLen, const u16* text, u32 textLen, NWC24EncodingRegion encRegion, u16 unk, u8* work, u32 workSize);

NWC24Err    NWC24CommitMsg(NWC24MsgObj* msg);

/* NWC24 Message Box */

NWC24Err    NWC24GetNumMsgs(NWC24MBoxType msgBoxType, u32* numMsgs);

NWC24Err    NWC24GetMsgObj(NWC24MsgObj* msg, NWC24MBoxType msgBoxType, u32 index);
NWC24Err    NWC24GetMsgIdList(NWC24MBoxType msgBoxType, u32* msgIds, u32 maxLength);

NWC24Err    NWC24DeleteMsg(NWC24MBoxType msgBoxType, u32 index);

/* NWC24 Channel Jump */

#define NWC24_MAX_CHJP_BLOCKS       8
#define NWC24_MAX_CHJP_BLOCK_SIZE   8
#define NWC24_MAX_CHJP_SIZE         (NWC24_MAX_CHJP_BLOCKS * (NWC24_MAX_CHJP_BLOCKS * NWC24_MAX_CHJP_BLOCK_SIZE))

#define NWC24_CHJP_HEADER_SIZE      0x18
#define NWC24_CHJP_HEADER_MAGIC     'ChJp'

typedef struct NWC24CHJumpObj {
    u32     magic;                      // 0x00
    u32     totalSize;                  // 0x04
    u32     numBlocks;                  // 0x08
    u32     flag;                       // 0x10
    u64     titleId;                    // 0x14
    char    data[NWC24_MAX_CHJP_SIZE];  // 0x18
} NWC24CHJumpObj;

NWC24Err    NWC24CheckCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize);
NWC24Err    NWC24GetCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId);
NWC24Err    NWC24GetCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index);
NWC24Err    NWC24GetCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_MSG_BOARD_H
