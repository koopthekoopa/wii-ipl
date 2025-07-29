#include <revolution/nwc24.h>
#include <private/nwc24.h>

#define YEAR_MIN 2000
#define YEAR_MAX 2035 // !!!

#define ALT_NAME_MAX 35
#define SMTP_LINE_MAX 1000

typedef enum {
    MSG_OBJ_FOR_RECIPIENT = (1 << 0),
    MSG_OBJ_FOR_PUBLIC = (1 << 1),
    MSG_OBJ_FOR_APP = (1 << 2),
    MSG_OBJ_FOR_MENU = (1 << 3),
    MSG_OBJ_INITIALIZED = (1 << 8),
    MSG_OBJ_DELIVERING = (1 << 9)
} NWC24MsgObjFlags;

NWC24Err NWC24InitMsgObj(NWC24MsgObj* msg, NWC24MsgType type) {
    u32 i;
    NWC24MsgObjPrivate* msgObj = (NWC24MsgObjPrivate*)msg;

    Mail_memset(msgObj, 0, sizeof(NWC24MsgObj));

    msgObj->msgId = 0;
    msgObj->type = MSG_OBJ_INITIALIZED;
    msgObj->appId = NWC24GetAppId();
    msgObj->ledPattern = 0;
    msgObj->tag = 0;
    msgObj->groupId = NWC24GetGroupId();

    switch (type) {
        case NWC24_MSGTYPE_RVL_MENU_SHARED:
            msgObj->type |=
                MSG_OBJ_FOR_RECIPIENT | MSG_OBJ_FOR_APP | MSG_OBJ_FOR_MENU;
            break;
        case NWC24_MSGTYPE_RVL:
            msgObj->type |= MSG_OBJ_FOR_RECIPIENT | MSG_OBJ_FOR_APP;
            break;
        case NWC24_MSGTYPE_RVL_MENU:
            msgObj->type |= MSG_OBJ_FOR_RECIPIENT | MSG_OBJ_FOR_MENU;
            break;
        case NWC24_MSGTYPE_RVL_HIDDEN:
            msgObj->type |= MSG_OBJ_FOR_RECIPIENT;
            break;
        case NWC24_MSGTYPE_PUBLIC:
            msgObj->type |= MSG_OBJ_FOR_PUBLIC;
            break;
        default:
            return NWC24_ERR_INVALID_VALUE;
    }

    msgObj->unk_0x28 = 0;
    msgObj->type |= 0x200000;
    msgObj->unk_0x2C = 0;

    NWC24GetMyUserId(&msgObj->fromId);
    msgObj->numTo = 0;

    for (i = 0; i < NWC24_MSG_RECIPIENT_MAX; i++) {
        if (type == NWC24_MSGTYPE_PUBLIC) {
            NWC24Data_Init(&msgObj->toAddrs[i]);
        }
        else {
            msgObj->toIds[i] = 0;
        }
    }

    NWC24Data_Init(&msgObj->subject);
    NWC24Data_Init(&msgObj->text);
    msgObj->charset = NWC24_US_ASCII;
    msgObj->encoding = NWC24_ENC_7BIT;
    msgObj->numAttached = 0;

    for (i = 0; i < NWC24_MSG_ATTACHMENT_MAX; i++) {
        NWC24Data_Init(&msgObj->attached[i]);
        msgObj->attachedSize[i] = 0;
        msgObj->attachedType[i] = NWC24_TEXT_PLAIN;
    }

    NWC24Data_Init(&msgObj->unk_0x30);
    NWC24Data_Init(&msgObj->unk_0x38);
    NWC24Data_Init(&msgObj->unk_0x50);
    NWC24Data_Init(&msgObj->unk_0x58);
    NWC24Data_Init(&msgObj->unk_0xD0);
    NWC24Data_Init(&msgObj->faceData);
    NWC24Data_Init(&msgObj->altName);

    msgObj->msgBoardFlags.raw = 0;                       
    msgObj->dwcId = 0;
    msgObj->iconNew = (1 << 31);

    return NWC24_OK;
}

NWC24Err NWC24SetMsgToId(NWC24MsgObj* msg, NWC24UserId id) {
    NWC24MsgObjPrivate* msgObj = (NWC24MsgObjPrivate*)msg;
    if (!(msgObj->type & MSG_OBJ_INITIALIZED) ||
        (msgObj->type & MSG_OBJ_DELIVERING)) {
        return NWC24_ERR_PROTECTED;
    }

    if (!(msgObj->type & MSG_OBJ_FOR_RECIPIENT)) {
        return NWC24_ERR_NOT_SUPPORTED;
    }

    if (msgObj->numTo >= NWC24_MSG_RECIPIENT_MAX) {
        return NWC24_ERR_FULL;
    }

    msgObj->toIds[msgObj->numTo] = id;
    msgObj->numTo++;

    return NWC24_OK;
}

NWC24Err NWC24SetMsgText(NWC24MsgObj* msg, const char* text, u32 len, NWC24Charset charset, NWC24Encoding encoding) {
    NWC24MsgObjPrivate* msgObj = (NWC24MsgObjPrivate*)msg;

    if (!(msgObj->type & MSG_OBJ_INITIALIZED) || (msgObj->type & MSG_OBJ_DELIVERING)) {
        return NWC24_ERR_PROTECTED;
    }

    if (NWC24GetCharsetStr(charset) == NULL) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (NWC24GetEncodingStr(encoding) == NULL) {
        return NWC24_ERR_INVALID_VALUE;
    }

    if (text == NULL) {
        NWC24Data_Init(&msgObj->text);
        return NWC24_OK;
    }

    if (encoding == NWC24_ENC_8BIT && (msgObj->type & MSG_OBJ_FOR_PUBLIC)) {
        return NWC24_ERR_NOT_SUPPORTED;
    }

    // Lines are limited to at most 1000 characters
    if (encoding == NWC24_ENC_7BIT) {
        u32 lineLength = 0;
        const char* it;
        for (it = text; it < text + len; it++) {
            if (it[0] == '\r' && it[1] == '\n') {
                lineLength = 0;
                it++;
            }
            // Include "\r\n" in line length
            else if (++lineLength > SMTP_LINE_MAX - 2) {
                return NWC24_ERR_FORMAT;
            }
        }
    }

    NWC24Data_SetDataP(&msgObj->text, text, len);
    msgObj->charset = charset;
    msgObj->encoding = encoding;
    return NWC24_OK;
}
