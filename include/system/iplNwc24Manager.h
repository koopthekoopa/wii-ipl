#ifndef IPL_NWC24_MANAGER_H
#define IPL_NWC24_MANAGER_H

#include <revolution/types.h>

#include <revolution/nwc24.h>
#include <private/nwc24/NWC24Schedule.h>

#include <egg/core.h>

#include "system/RIPL_BoardRecord.h"

namespace ipl {
    namespace postman {
        class Manager;
    }
    namespace nwc24 {
        class Manager {
            public:
                class Arg {
                    public:
                        NWC24ScdStat    mScheduleStat;  // 0x00
                };

                static const int MAX_DOWNLOAD_COUNT = 120;
                static const int MAX_MESSAGES_COUNT = 256;
            
                Manager(EGG::Heap* heap);

                BOOL        open();
                BOOL        close();

                // NWC24MsgSet
                BOOL        initMsgObj(NWC24MsgObj* msg, NWC24MsgType msgType);
                BOOL        setMsgToId(NWC24MsgObj* msg, NWC24UserId id);
                BOOL        setMsgToAddr(NWC24MsgObj* msg, const char* addr, u32 addrLen);
                BOOL        setMsgText(NWC24MsgObj* msg, const char* text, u32 textLen, NWC24Charset charset, NWC24Encoding encoding);
                BOOL        setMsgSubjectAndTextPublic(NWC24MsgObj* msg, const u16* subject, u32 subjectLen, const u16* text, u32 textLen, u8* work, u32 workSize);
                BOOL        setMsgMBNoReply(NWC24MsgObj* msg, BOOL bNoReply);
                BOOL        setMsgMBRegDate(NWC24MsgObj* msg, u16 year, u8 month, u8 day);
                BOOL        setMsgAppId(NWC24MsgObj* msg, u32 appId);

                // NWC24MsgCommit
                BOOL        commitMsg(NWC24MsgObj* msg);

                // NWC24MsgGet
                BOOL        getNumMsgs(NWC24MBoxType msgBoxType, u32* numMsgs);
                BOOL        getMsgIdList(NWC24MBoxType msgBoxType, u32* msgIds, u32 maxLength);
                BOOL        getMsgObj(NWC24MsgObj* msg, NWC24MBoxType msgBoxType, u32 index);
                BOOL        getMsgType(const NWC24MsgObj* msg, NWC24MsgType* type);
                BOOL        getMsgAppId(const NWC24MsgObj* msg, u32* appId);
                BOOL        getMsgGroupId(const NWC24MsgObj* msg, u16* groupId);
                BOOL        getMsgTextSize(const NWC24MsgObj* msg, u32* textLen);
                BOOL        getMsgSubjectSize(const NWC24MsgObj* msg, u32* subjectLen);
                BOOL        getMsgFromId(const NWC24MsgObj* msg, NWC24UserId* fromId);
                BOOL        getMsgNumAttached(const NWC24MsgObj* msg, u32* numAttach);
                BOOL        getMsgAttachedSize(const NWC24MsgObj* msg, u32 attachIndex, u32* attachSize);
                BOOL        getMsgAttachedType(const NWC24MsgObj* msg, u32 attachIndex, NWC24MIMEType* attachType);
                BOOL        getMsgDate(const NWC24MsgObj* msg, OSCalendarTime* msgDate);
                BOOL        getMsgIconNewSign(const NWC24MsgObj* msg, u32* iconNewSign);

                // NWC24MsgRead
                BOOL        readMsgAltName(const NWC24MsgObj* msg, u16* altName, u32 altNameLen);
                BOOL        readMsgText(const NWC24MsgObj* msg, char* text, u32 textLen, NWC24Charset* charset, NWC24Encoding* encoding);
                BOOL        readMsgTextPublic(const NWC24MsgObj* msg, u16* text, u32* textLen, u8* work, u32 workSize);
                BOOL        readMsgSubjectPublic(const NWC24MsgObj* msg, u16* subject, u32* subjectLen, u8* work, u32 workSize);
                BOOL        readMsgAttached(const NWC24MsgObj* msg, u32 attachIndex, u8* attachData, u32 attachSize);
                BOOL        readMsgFromAddr(const NWC24MsgObj* msg, char* addr, u32 addrLen);
                BOOL        readMsgMBNoReply(const NWC24MsgObj* msg, BOOL* bNoReply);
                BOOL        readMsgMBDelay(const NWC24MsgObj* msg, u8* delay);
                BOOL        readMsgMBRegDate(const NWC24MsgObj* msg, u16* year, u8* month, u8* day);
                BOOL        readMsgMBUpdateSW(const NWC24MsgObj* msg, u32* mbUpdateSW);
                BOOL        readMsgMBOptOutFlag(const NWC24MsgObj* msg, BOOL* mbOptOutFlag, u32* appId);

                BOOL        deleteMsg(NWC24MBoxType msgBoxType, u32 index);

                // NWC24Config
                BOOL        getMyUserId(NWC24UserId* userId);

                // NWC24FriendInfo
                BOOL        isFriendInfoThere(u32 friendIndex);
                BOOL        searchFriendInfo(const NWC24FriendAddr* friendAddr, u32* friendIndex);
                BOOL        searchFriendInfo(NWC24UserId friendId, u32* friendIndex);
                BOOL        readFriendInfo(NWC24FriendInfo* friendInfo, u32 friendIndex);
                BOOL        writeFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex);
                BOOL        updateFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex);
                BOOL        deleteFriendInfo(u32 friendIndex);
                BOOL        swapFriendInfo(u32 friendIndex1, u32 friendIndex2);
                BOOL        getNumRegFriendInfos(u32* numRegFriendInfo);
                BOOL        getNumFriendInfos(u32* numFriendInfo);

                // NWC24UserId
                BOOL        checkUserId(NWC24UserId userId);

                // NWC24Dl
                BOOL        getDlTask(NWC24DlTask* dlTask, NWC24DlId id);
                BOOL        getDlAppId(const NWC24DlTask* dlTask, u32* appId);
                BOOL        getDlOptOutFlags(NWC24DlTask* dlTask, u8* optOutFlag);
                BOOL        initDlTask(NWC24DlTask* dlTask, NWC24DLType type);
                BOOL        setDlId(NWC24DlTask* dlTask, NWC24DlId id);
                BOOL        setDlUrl(NWC24DlTask* dlTask, const char* url);
                BOOL        setDlPriority(NWC24DlTask* dlTask, u8 prio);
                BOOL        setDlInterval(NWC24DlTask* dlTask, u16 interval);
                BOOL        setDlFlags(NWC24DlTask* dlTask, u32 flags);
                BOOL        addDlTask(NWC24DlTask* dlTask);
                BOOL        updateDlTask(NWC24DlTask* dlTask);
                BOOL        deleteDlTask(NWC24DlTask* dlTask);
                BOOL        setDlTableFirst();
                void        setDlTable();
                BOOL        isAppDlEnable(u32 appId) const;

                // NWC24System
                BOOL        doDailyTasks();
                BOOL        manageDlTaskListForMenu();
                BOOL        setLedPattern(NWC24MsgObj* msg);
                BOOL        enableLedNotification(BOOL enableLed);

                // NWC24CHJump
                BOOL        checkCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize);
                BOOL        getCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId);
                BOOL        getCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index);
                BOOL        getCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index);

                // NWC24Schedule
                BOOL        saveMailNow();

                // Misc
                NWC24Err    check(u32 usage);
                void        receive();

                void        addDlTask();

                BOOL        getNewTitleTbl(u32* titleTbl) const;
                BOOL        isNewMessageThere(u32 unk) const;

                int         getErrCode();

                volatile bool   isUnk0xA31()    { return unk_0xA31 == false; }

            private:
                void        add_dl_task(NWC24DlId id, const char* url, u16 interval, u8 priority);

                int         encode_odh(EGG::Heap* heap, u32 attachIndex);
                wchar_t*    make_text(EGG::Heap* heap, const NWC24MsgObj* msg, bool bIncludeSubject, u32* failFlag);

                BOOL        is_valid_app_id(u32 appId, u16 groupId) const;

                BOOL        error_handling_ignore_file(NWC24Err code, int line);
                BOOL        error_handling(NWC24Err code, int line);

                u8*         mAttachData[RBR_ATTACHMENT_MAX];    // 0x00
                u32         mAttachSize[RBR_ATTACHMENT_MAX];    // 0x08

                u8*         mJpegData;                          // 0x10
                u32         mJpegSize;                          // 0x14

                u32         mMsgIdsTbl[MAX_MESSAGES_COUNT];     // 0x18
                u32         mTitleTbl[MAX_MESSAGES_COUNT];      // 0x418
                u32         mDlTable[MAX_DOWNLOAD_COUNT];       // 0x818

                NWC24Err    mLastError;                         // 0x9F8
                u8*         mpLibWork;                          // 0x9FC

                OSMutex     mLock;                              // 0xA00
                OSMutex     mAutoLock;                          // 0xA18

                bool        unk_0xA30;
                bool        unk_0xA31;
                bool        mbReceivePaused;                    // 0xA32
                bool        unk_0xA33;

                static Arg  smArg;

                friend class postman::Manager;
        };
    }
}

#endif // IPL_NWC24_MANAGER_H
