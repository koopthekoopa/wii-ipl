#ifndef IPL_NWC24_MANAGER_H
#define IPL_NWC24_MANAGER_H

#include <revolution.h>

#include <revolution/nwc24.h>

#include <egg/core.h>

namespace ipl {
    namespace nwc24 {
        class Manager {
            public:
                Manager(EGG::Heap* heap);

                BOOL        open();
                BOOL        close();
                
                void        initMsgObj(NWC24MsgObj* msgObj, NWC24MsgType msgType);
                void        setMsgToId(NWC24MsgObj* msgObj, u64 id);
                void        setMsgToAddr(NWC24MsgObj* msgObj, const char* unk0, u32 unk1);
                void        setMsgText(NWC24MsgObj* msgObj, const char* text, u32 textLen, NWC24Charset charset, NWC24Encoding encoding);
                void        setMsgSubjectAndTextPublic(NWC24MsgObj* msgObj, const u16* subject, u32 subjectLen, const u16* text, u32 textLen, u8* work, u32 workSize);
                void        setMsgMBNoReply(NWC24MsgObj* msgObj, BOOL bNoReply);
                void        setMsgMBRegDate(NWC24MsgObj* msgObj, u16, u8, u8);
                void        setMsgAppId(NWC24MsgObj* msgObj, u32 appId);

                void        commitMsg(NWC24MsgObj* msgObj);

                void        getMyUserId(u64* userId);

                BOOL        isFriendInfoThere(u32 friendIndex);

                void        searchFriendInfo(const NWC24FriendAddr* friendAddr, u32* friendIndex);
                void        searchFriendInfo(u64 friendId, u32* friendIndex);

                void        readFriendInfo(NWC24FriendInfo* friendInfo, u32 friendIndex);
                void        writeFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex);
                void        updateFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex);
                void        deleteFriendInfo(u32 friendIndex);
                void        swapFriendInfo(u32 friendIndex1, u32 friendIndex2);

                void        getNumRegFriendInfos(u32* regFriendsNum);
                void        getNumFriendInfos(u32* friendsNum);

                void        checkUserId(u64 userId);

                void        getDlTask(NWC24DlTask* dlTask, u16 id);
                void        getDlAppId(const NWC24DlTask* dlTask, u32* appId);
                void        getDlOptOutFlags(NWC24DlTask* dlTask, u8* optOutFlag);
                void        deleteDlTask(NWC24DlTask* dlTask);

                void        setDlTableFirst();
                void        setDlTable();

                BOOL        isAppDlEnable(u32 appId);

                void        doDailyTasks();
                void        manageDlTaskListForMenu();

                void        setLedPattern(NWC24MsgObj* msgObj);
                void        enableLedNotification(BOOL enableLed);

                void        checkCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize);
                void        getCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId);
                void        getCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index);
                void        getCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index);

                void        saveMailNow();

                void        check(u32 usage);
                void        receive();

                void        addDlTask();

                BOOL        getNewTitleTbl(u32* titleTbl) const;
                BOOL        isNewMessageThere(u32 unk) const;

                NWC24Err    getErrCode();

            private:
                u8      unk_0x00[0xA31];
                bool    unk_0xA31;
                u8      unk_0xA32[0xA34 - 0xA32];
        };
    }
}

#endif // IPL_NWC24_MANAGER_H
