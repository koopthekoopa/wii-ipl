#include "system/iplNwc24Manager.h"
#include "system/iplSystem.h"

#include "iplMath.h"
#include "utility/iplLock.h"

#include "titledb.h"

#include <revolution/net/NETMisc.h>

#include <private/nwc24.h>

#include <wchar.h>

namespace ipl {
    namespace nwc24 {
        Manager::Arg    Manager::smArg;

        #if defined(VERSION_43U)
            static const NWC24EncodingRegion ENCODING_REGION = NWC24_ENCODING_REGION_USA;
        #elif defined(VERSION_43E)
            static const NWC24EncodingRegion ENCODING_REGION = NWC24_ENCODING_REGION_EUR;
        #elif defined(VERSION_43J)
            static const NWC24EncodingRegion ENCODING_REGION = NWC24_ENCODING_REGION_JPN;
        #elif defined(VERSION_43K)
            static const NWC24EncodingRegion ENCODING_REGION = NWC24_ENCODING_REGION_KOR;
        #else
            static const NWC24EncodingRegion ENCODING_REGION = NWC24_ENCODING_REGION_NON;
        #endif

        #define FILE_ERROR_OK                                                                                                   \
         (((mLastError >  NWC24_ERR_FILE_OPEN   || mLastError < NWC24_ERR_FILE_OTHER)  && mLastError != NWC24_ERR_NAND_CORRUPT) \
        && (mLastError != NWC24_ERR_FILE_EXISTS && mLastError != NWC24_ERR_INTERNAL_VF && mLastError != NWC24_ERR_FILE_BROKEN))

        Manager::Manager(EGG::Heap* heap) :
        unk_0xA30(false),
        unk_0xA31(false),
        mbReceivePaused(false),
        unk_0xA33(false) {
            OSInitMutex(&mLock);
            OSInitMutex(&mAutoLock);

            mpLibWork = new(heap, BUFFER_HEAP) u8[0x4000];

            memset(&smArg, 0, sizeof(smArg));

            enableLedNotification(TRUE);

            memset(mTitleTbl, 0, sizeof(mTitleTbl));
            memset(mDlTable, 0, sizeof(mDlTable));

            setDlTableFirst();
        }

        BOOL Manager::open() {
            BOOL result = FALSE;

            if (OSTryLockMutex(&mLock)) {
                NWC24Err err = NWC24OpenMsgLib(mpLibWork);
                result = error_handling(err, 216);

                if (!result) {
                    OSUnlockMutex(&mLock);
                }
            }

            return result;
        }

        BOOL Manager::close() {
            NWC24Err err = NWC24CloseMsgLib();
            BOOL result = error_handling(err, 233);
            OSUnlockMutex(&mLock);
            return result;
        }

        BOOL Manager::initMsgObj(NWC24MsgObj* msg, NWC24MsgType msgType) {
            NWC24Err err = NWC24InitMsgObj(msg, msgType);
            return error_handling(err, 251);
        }

        BOOL Manager::setMsgToId(NWC24MsgObj* msg, NWC24UserId id) {
            NWC24Err err = NWC24SetMsgToId(msg, id);
            return error_handling(err, 263);
        }

        BOOL Manager::setMsgToAddr(NWC24MsgObj* msg, const char* addr, u32 addrLen) {
            NWC24Err err = NWC24SetMsgToAddr(msg, addr, addrLen);
            return error_handling(err, 275);
        }

        BOOL Manager::setMsgText(NWC24MsgObj* msg, const char* text, u32 textLen, NWC24Charset charset, NWC24Encoding encoding) {
            NWC24Err err = NWC24SetMsgText(msg, text, textLen, charset, encoding);
            return error_handling(err, 295);
        }

        BOOL Manager::setMsgSubjectAndTextPublic(NWC24MsgObj* msg, const u16* subject, u32 subjectLen, const u16* text, u32 textLen, u8* work, u32 workSize) {
            NWC24Err err = NWC24SetMsgSubjectAndTextPublic(msg, subject, subjectLen, text, textLen, ENCODING_REGION, -1, work, workSize);
            return error_handling(err, 418);
        }

        BOOL Manager::setMsgMBNoReply(NWC24MsgObj* msg, BOOL bNoReply) {
            NWC24Err err = NWC24SetMsgMBNoReply(msg, bNoReply);
            return error_handling(err, 432);
        }

        BOOL Manager::setMsgMBRegDate(NWC24MsgObj* msg, u16 year, u8 month, u8 day) {
            NWC24Err err = NWC24SetMsgMBRegDate(msg, year, month, day);
            return error_handling(err, 445);
        }

        BOOL Manager::setMsgAppId(NWC24MsgObj* msg, u32 appId) {
            NWC24Err err = NWC24SetMsgAppId(msg, appId);
            return error_handling(err, 457);
        }

        BOOL Manager::commitMsg(NWC24MsgObj* msg) {
            NWC24Err err = NWC24CommitMsg(msg);
            return error_handling(err, 480);
        }

        BOOL Manager::getNumMsgs(const NWC24MBoxType msgBoxType, u32* numMsgs) {
            NWC24Err err = NWC24GetNumMsgs(msgBoxType, numMsgs);
            return error_handling(err, 492);
        }
        
        BOOL Manager::getMsgIdList(const NWC24MBoxType msgBoxType, u32* msgIds, u32 maxLength) {
            NWC24Err err = NWC24GetMsgIdList(msgBoxType, msgIds, maxLength);
            return error_handling(err, 505);
        }
        
        BOOL Manager::getMsgObj(NWC24MsgObj* msg, NWC24MBoxType msgBoxType, u32 index) {
            NWC24Err err = NWC24GetMsgObj(msg, msgBoxType, index);
            return error_handling(err, 518);
        }
        
        BOOL Manager::getMsgType(const NWC24MsgObj* msg, NWC24MsgType* type) {
            NWC24Err err = NWC24GetMsgType(msg, type);
            return error_handling(err, 530);
        }
        
        BOOL Manager::getMsgAppId(const NWC24MsgObj* msg, u32* appId) {
            NWC24Err err = NWC24GetMsgAppId(msg, appId);
            return error_handling(err, 542);
        }

        BOOL Manager::getMsgGroupId(const NWC24MsgObj* msg, u16* groupId) {
            NWC24Err err = NWC24GetMsgGroupId(msg, groupId);
            return error_handling(err, 554);
        }

        BOOL Manager::getMsgTextSize(const NWC24MsgObj* msg, u32* textLen) {
            NWC24Err err = NWC24GetMsgTextSize(msg, textLen);
            return error_handling(err, 566);
        }
        
        BOOL Manager::getMsgSubjectSize(const NWC24MsgObj* msg, u32* subjectLen) {
            NWC24Err err = NWC24GetMsgSubjectSize(msg, subjectLen);
            return error_handling(err, 578);
        }

        BOOL Manager::getMsgFromId(const NWC24MsgObj* msg, NWC24UserId* fromId) {
            NWC24Err err = NWC24GetMsgFromId(msg, fromId);
            return error_handling(err, 590);
        }

        BOOL Manager::getMsgNumAttached(const NWC24MsgObj* msg, u32* numAttach) {
            NWC24Err err = NWC24GetMsgNumAttached(msg, numAttach);
            return error_handling(err, 602);
        }

        BOOL Manager::getMsgAttachedSize(const NWC24MsgObj* msg, u32 attachIndex, u32* attachSize) {
            NWC24Err err = NWC24GetMsgAttachedSize(msg, attachIndex, attachSize);
            return error_handling(err, 615);
        }

        BOOL Manager::getMsgAttachedType(const NWC24MsgObj* msg, u32 attachIndex, NWC24MIMEType* attachType) {
            NWC24Err err = NWC24GetMsgAttachedType(msg, attachIndex, attachType);
            return error_handling(err, 628);
        }

        BOOL Manager::getMsgDate(const NWC24MsgObj* msg, OSCalendarTime* msgDate) {
            NWC24Err err = NWC24GetMsgDate(msg, msgDate);
            return error_handling(err, 640);
        }

        BOOL Manager::getMsgIconNewSign(const NWC24MsgObj* msg, u32* iconNewSign) {
            NWC24Err err = NWC24GetMsgIconNewSign(msg, iconNewSign);
            return error_handling(err, 652);
        }

        BOOL Manager::readMsgAltName(const NWC24MsgObj* msg, u16* altName, u32 altNameLen) {
            NWC24Err err = NWC24ReadMsgAltName(msg, altName, altNameLen);
            return error_handling_ignore_file(err, 667);
        }

        BOOL Manager::readMsgText(const NWC24MsgObj* msg, char* text, u32 textLen, NWC24Charset* charset, NWC24Encoding* encoding) {
            NWC24Err err = NWC24ReadMsgText(msg, text, textLen, charset, encoding);
            return error_handling_ignore_file(err, 691);
        }

        BOOL Manager::readMsgTextPublic(const NWC24MsgObj* msg, u16* text, u32* textLen, u8* work, u32 workSize) {
            NWC24Err err = NWC24ReadMsgTextPublic(msg, text, textLen, ENCODING_REGION, -1, work, workSize);
            return error_handling_ignore_file(err, 730);
        }

        BOOL Manager::readMsgSubjectPublic(const NWC24MsgObj* msg, u16* subject, u32* subjectLen, u8* work, u32 workSize) {
            NWC24Err err = NWC24ReadMsgSubjectPublic(msg, subject, subjectLen, ENCODING_REGION, -1, work, workSize);
            return error_handling_ignore_file(err, 789);
        }

        BOOL Manager::readMsgAttached(const NWC24MsgObj* msg, u32 attachIndex, u8* attachData, u32 attachSize) {
            NWC24Err err = NWC24ReadMsgAttached(msg, attachIndex, attachData, attachSize);
            return error_handling_ignore_file(err, 806);
        }

        BOOL Manager::readMsgFromAddr(const NWC24MsgObj* msg, char* addr, u32 addrLen) {
            NWC24Err err = NWC24ReadMsgFromAddr(msg, addr, addrLen);
            return error_handling_ignore_file(err, 819);
        }

        BOOL Manager::readMsgMBNoReply(const NWC24MsgObj* msg, BOOL* bNoReply) {
            NWC24Err err = NWC24ReadMsgMBNoReply(msg, bNoReply);
            return error_handling_ignore_file(err, 831);
        }

        BOOL Manager::readMsgMBDelay(const NWC24MsgObj* msg, u8* delay) {
            NWC24Err err = NWC24ReadMsgMBDelay(msg, delay);
            return error_handling_ignore_file(err, 843);
        }

        BOOL Manager::readMsgMBRegDate(const NWC24MsgObj* msg, u16* year, u8* month, u8* day) {
            NWC24Err err = NWC24ReadMsgMBRegDate(msg, year, month, day);
            return error_handling_ignore_file(err, 857);
        }

        BOOL Manager::readMsgMBUpdateSW(const NWC24MsgObj* msg, u32* mbUpdateSW) {
            NWC24Err err = NWC24ReadMsgMBUpdateSW(msg, mbUpdateSW);
            return error_handling_ignore_file(err, 869);
        }
    
        BOOL Manager::readMsgMBOptOutFlag(const NWC24MsgObj* msg, BOOL* mbOptOutFlag, u32* appId) {
            NWC24Err err = NWC24ReadMsgMBOptOutFlag(msg, mbOptOutFlag, appId);
            return error_handling_ignore_file(err, 882);
        }

        BOOL Manager::deleteMsg(NWC24MBoxType msgBoxType, u32 index) {
            NWC24Err err = NWC24DeleteMsg(msgBoxType, index);
            return error_handling(err, 894);
        }

        BOOL Manager::getMyUserId(NWC24UserId* userId) {
            NWC24Err err = NWC24GetMyUserId(userId);
            return error_handling(err, 905);
        }

        BOOL Manager::isFriendInfoThere(u32 friendIndex) {
            NWC24Err err = (NWC24Err)NWC24IsFriendInfoThere(friendIndex);
            BOOL result;
            if (err == FALSE) {
                result = FALSE;
            }
            else if (err == TRUE) {
                result = TRUE;
            }
            else {
                return error_handling(err, 920);
            }
            return result;
        }

        BOOL Manager::searchFriendInfo(const NWC24FriendAddr* friendAddr, u32* friendIndex) {
            NWC24Err err = NWC24SearchFriendInfoByAddr(friendAddr, friendIndex);
            return error_handling(err, 932);
        }

        BOOL Manager::searchFriendInfo(NWC24UserId friendId, u32* friendIndex) {
            NWC24Err err = NWC24SearchFriendInfoById(friendId, friendIndex);
            return error_handling(err, 944);
        }

        BOOL Manager::readFriendInfo(NWC24FriendInfo* friendInfo, u32 friendIndex) {
            NWC24Err err = NWC24ReadFriendInfo(friendInfo, friendIndex);
            return error_handling(err, 957);
        }

        BOOL Manager::writeFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex) {
            NWC24Err err = NWC24WriteFriendInfo(friendInfo, friendIndex);
            return error_handling(err, 976);
        }

        BOOL Manager::updateFriendInfo(const NWC24FriendInfo* friendInfo, u32 friendIndex) {
            NWC24Err err = NWC24UpdateFriendInfo(friendInfo, friendIndex);
            return error_handling(err, 988);
        }

        BOOL Manager::deleteFriendInfo(u32 friendIndex) {
            NWC24Err err = NWC24DeleteFriendInfo(friendIndex);
            return error_handling(err, 999);
        }

        BOOL Manager::swapFriendInfo(u32 friendIndex1, u32 friendIndex2) {
            NWC24Err err = NWC24SwapFriendInfos(friendIndex1, friendIndex2);
            return error_handling(err, 1011);
        }

        BOOL Manager::getNumRegFriendInfos(u32* numRegFriendInfo) {
            NWC24Err err = NWC24GetNumRegFriendInfos(numRegFriendInfo);
            return error_handling(err, 1023);
        }

        BOOL Manager::getNumFriendInfos(u32* numFriendInfo) {
            NWC24Err err = NWC24GetNumFriendInfos(numFriendInfo);
            return error_handling(err, 1035);
        }

        BOOL Manager::checkUserId(NWC24UserId userId) {
            NWC24Err err = NWC24CheckUserId(userId);
            switch (err) {
                case NWC24_OK: {
                    return TRUE;
                }
                case NWC24_ERR_ID_CRC: {
                    return FALSE;
                }
                default: {
                    error_handling(err, 1051);
                    return FALSE;
                }
            }
        }

        BOOL Manager::getDlTask(NWC24DlTask* dlTask, NWC24DlId id) {
            NWC24Err err = NWC24GetDlTask(dlTask, id);
            return error_handling(err, 1064);
        }

        BOOL Manager::getDlAppId(const NWC24DlTask* dlTask, u32* appId) {
            NWC24Err err = NWC24GetDlAppId(dlTask, appId);
            return error_handling(err, 1088);
        }

        BOOL Manager::getDlOptOutFlags(NWC24DlTask* dlTask, u8* optOutFlag) {
            NWC24Err err = NWC24GetDlOptOutFlags(dlTask, optOutFlag);
            return error_handling(err, 1100);
        }

        BOOL Manager::initDlTask(NWC24DlTask* dlTask, NWC24DLType type) {
            NWC24Err err = NWC24InitDlTask(dlTask, type);
            return error_handling(err, 1112);
        }

        BOOL Manager::setDlId(NWC24DlTask* dlTask, NWC24DlId id) {
            NWC24Err err = NWC24SetDlId(dlTask, id);
            return error_handling(err, 1124);
        }

        BOOL Manager::setDlUrl(NWC24DlTask* dlTask, const char* url) {
            NWC24Err err = NWC24SetDlUrl(dlTask, url);
            return error_handling(err, 1136);
        }

        BOOL Manager::setDlPriority(NWC24DlTask* dlTask, u8 prio) {
            NWC24Err err = NWC24SetDlPriority(dlTask, prio);
            return error_handling(err, 1148);
        }

        BOOL Manager::setDlInterval(NWC24DlTask* dlTask, u16 interval) {
            NWC24Err err = NWC24SetDlInterval(dlTask, interval);
            return error_handling(err, 1160);
        }

        BOOL Manager::setDlFlags(NWC24DlTask* dlTask, u32 flags) {
            NWC24Err err = NWC24SetDlFlags(dlTask, flags);
            return error_handling(err, 1191);
        }

        BOOL Manager::addDlTask(NWC24DlTask* dlTask) {
            NWC24Err err = NWC24AddDlTask(dlTask);
            return error_handling(err, 1214);
        }

        BOOL Manager::updateDlTask(NWC24DlTask* dlTask) {
            NWC24Err err = NWC24UpdateDlTask(dlTask);
            return error_handling(err, 1225);
        }

        BOOL Manager::deleteDlTask(NWC24DlTask* dlTask) {
            NWC24Err err = NWC24DeleteDlTask(dlTask);
            return error_handling(err, 1236);
        }

        BOOL Manager::setDlTableFirst() {
            BOOL result = FALSE;
            if (open()) {
                setDlTable();
                close();
                result = TRUE;
            }
            return result;
        }

        BOOL Manager::setDlTable() {
            NWC24DlId dlId = 0;
            int i = 0;

            utility::autoMutexLock lock(mAutoLock);
            memset(mDlTable, 0, sizeof(mDlTable));

            NWC24Err err = NWC24IterateDlTask(&dlId, TRUE);
            while (err >= NWC24_OK) {
                NWC24DlTask dlTask;
                if (getDlTask(&dlTask, dlId)) {
                    u32 dlAppId = 0;
                    getDlAppId(&dlTask, &dlAppId);
                    if (dlAppId != 0 && i < MAX_DOWNLOAD_COUNT) {
                        mDlTable[i++] = dlAppId;
                    }
                }
                err = NWC24IterateDlTask(&dlId, FALSE);
            }
        }

        BOOL Manager::isAppDlEnable(u32 appId) const {
            for (int i = 0; i < MAX_DOWNLOAD_COUNT; i++) {
                if (appId == mDlTable[i]) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        BOOL Manager::doDailyTasks() {
            NWC24Err err = NWC24DoDailyTasks(mpLibWork);
            return error_handling(err, 1315);
        }

        BOOL Manager::manageDlTaskListForMenu() {
            NWC24Err err = NWC24ManageDlTaskListForMenu();
            return error_handling(err, 1325);
        }

        BOOL Manager::setLedPattern(NWC24MsgObj* msg) {
            NWC24Err err = NWC24SetMsgLedPattern(msg, 0x4001);
            return error_handling(err, 1336);
        }

        BOOL Manager::enableLedNotification(BOOL enableLed) {
            NWC24Err err = NWC24EnableLedNotification(enableLed);
            return error_handling(err, 1347);
        }

        BOOL Manager::checkCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize) {
            NWC24Err err = NWC24CheckCHJumpObj(chjp, dataSize);
            return error_handling(err, 1359);
        }

        BOOL Manager::getCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId) {
            NWC24Err err = NWC24GetCHJumpTitleId(chjp, titleId);
            return error_handling(err, 1385);
        }

        BOOL Manager::getCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index) {
            NWC24Err err = NWC24GetCHJumpBlockSize(chjp, size, index);
            return error_handling(err, 1398);
        }

        BOOL Manager::getCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index) {
            NWC24Err err = NWC24GetCHJumpBlockData(chjp, data, size, index);
            return error_handling(err, 1412);
        }

        BOOL Manager::saveMailNow() {
            OSLockMutex(&mLock);
            NWC24Err err = NWC24iSaveMailNow();
            BOOL result = error_handling(err, 1425);
            OSUnlockMutex(&mLock);
            return result;
        }

        NWC24Err Manager::check(u32 usage) {
            NWC24Err err = NWC24Check(usage);
            error_handling(err, 1441);
            return err;
        }

        void Manager::receive() {
            EGG::Heap* heap = System::getMailWorkHeap();

            OSReport("mail work heap rest size %x\n", heap->getAllocatableSize(CLASS_HEAP));

            NWC24iGetSchedulerStat(&smArg.mScheduleStat, sizeof(NWC24ScdStat));

            // Print Scheduler Sstatus
            OSReport("permission %d\n",smArg.mScheduleStat.permission);
            OSReport("last task err %d\n",smArg.mScheduleStat.lastCriticalError);
            OSReport("new msg flag %d\n",smArg.mScheduleStat.newMsgFlag);
            OSReport("cur task err %d\n",smArg.mScheduleStat.taskStage);
            OSReport("err num %d\n",smArg.mScheduleStat.numErrors);
            OSReport("send msg num %d\n",smArg.mScheduleStat.numMsgSent);
            OSReport("recv msg num %d\n",smArg.mScheduleStat.numMsgReceived);
            OSReport("save msg num %d\n",smArg.mScheduleStat.numMsgSaved);
            OSReport("refuse msg num %d\n",smArg.mScheduleStat.numMsgRejected);
            OSReport("filter msg num %d\n",smArg.mScheduleStat.numMsgFiltered);
            OSReport("confirm task num %d\n",smArg.mScheduleStat.countMailChk);
            OSReport("recv task num %d\n",smArg.mScheduleStat.countMailRcv);
            OSReport("save task num %d\n",smArg.mScheduleStat.countMailSav);
            OSReport("send task num %d\n",smArg.mScheduleStat.countMailSnd);
            OSReport("download task num %d\n",smArg.mScheduleStat.countDL);
            OSReport("friend %d\n",smArg.mScheduleStat.countEstablished);

            // Open NWC24 Library
            if (!open()) {
                return;
            }

            unk_0xA31 = true;

            NWC24UserId myUserId;
            getMyUserId(&myUserId);

            // Get msg count
            u32 msgCount = 0;
            getNumMsgs(NWC24_MBOX_TYPE_RECV, &msgCount);

            // Get list of messages IDs.
            getMsgIdList(NWC24_MBOX_TYPE_RECV, mMsgIdsTbl, MAX_MESSAGES_COUNT);

            memset(mTitleTbl, 0, sizeof(mTitleTbl));

            int iconNewCount = 0;
            int iconNewIndex = 0;
            
            u8 recordFlags;

            // Now begin!!!
            for (int i = 0; i < msgCount; i++) {
                wchar_t* msgBodyText = NULL;
                BOOL result;

                mAttachData[1] = NULL;
                mAttachData[0] = NULL;
                mAttachSize[1] = 0;
                mAttachSize[0] = 0;

                wchar_t msgFriendName[12];
                memset(msgFriendName, 0, sizeof(msgFriendName));

                // Get message data
                NWC24MsgObj msgObj ALIGN32;
                NWC24MsgType msgType;
                if (!getMsgObj(&msgObj, NWC24_MBOX_TYPE_RECV, mMsgIdsTbl[i]) || !getMsgType(&msgObj, &msgType)) {
                    continue;
                }

                if (msgType == NWC24_MSGTYPE_WII_MENU || msgType == NWC24_MSGTYPE_WII_MENU_SHARED || msgType == NWC24_MSGTYPE_PUBLIC) {
                    NWC24FriendAddr msgFriendAddr;
                    memset(&msgFriendAddr, 0, sizeof(msgFriendAddr));

                    u16 msgFriendType;

                    // Get friend data
                    if (msgType == NWC24_MSGTYPE_PUBLIC) {
                        u32 index = 0;
                        if (!readMsgFromAddr(&msgObj, msgFriendAddr.mailAddr, sizeof(NWC24UserMailAddr)) && !FILE_ERROR_OK) {
                            goto out;
                        }
                        msgFriendType = NWC24_FRIENDTYPE_EMAIL;
                        if (searchFriendInfo(&msgFriendAddr, &index)) {
                            NWC24FriendInfo friendInfo;
                            readFriendInfo(&friendInfo, index);
                            wcsncpy(msgFriendName, (wchar_t*)friendInfo.attr.name, 12);
                        }
                    }
                    else {
                        u32 index = 0;
                        getMsgFromId(&msgObj, &msgFriendAddr.wiiId);
                        msgFriendType = msgFriendAddr.wiiId == myUserId ? NWC24_FRIENDTYPE_NONE : NWC24_FRIENDTYPE_WII;
                        if (searchFriendInfo(msgFriendAddr.wiiId, &index)) {
                            NWC24FriendInfo friendInfo;
                            readFriendInfo(&friendInfo, index);
                            wcsncpy(msgFriendName, (wchar_t*)friendInfo.attr.name, 12);
                        }
                    }

                    // Get app and group ID
                    u32 msgAppId;
                    u16 msgGroupId;
                    getMsgAppId(&msgObj, &msgAppId);
                    getMsgGroupId(&msgObj, &msgGroupId);
                    OSReport("msg app_id %x group_id %x\n", msgAppId, msgGroupId);
                    if (!is_valid_app_id(msgAppId, msgGroupId)) {
                        goto out;
                    }

                    // Get software update flag (display "Update" button)
                    u32 msgMbUpdateSW = 0;
                    result = readMsgMBUpdateSW(&msgObj, &msgMbUpdateSW);
                    if (!FILE_ERROR_OK) {
                        goto out;
                    }

                    // Get opt out flag (display "Opt Out" button)
                    BOOL msgMbOptOutFlag = FALSE;
                    u32 msgOptOutAppId = 0;
                    bool msgBoardUpdateSW = (result & (bool)msgMbUpdateSW);
                    result = readMsgMBOptOutFlag(&msgObj, &msgMbOptOutFlag, &msgOptOutAppId);
                    if (!FILE_ERROR_OK) {
                        goto out;
                    }
                    bool msgBoardCanOptOut = (result & (bool)msgMbOptOutFlag);

                    // 
                    if (msgAppId == ES_TITLE_ID(TITLE_NIGAOE_ALL)) {
                        RFLiCharData charData;
                        if (RFLiNWC24Msg2CharData(&charData, &msgObj)
                        && System::getMiiManager()->isValid(&charData)) {
                            System::getMiiManager()->addHiddenDB(&msgObj);
                        }

                        deleteMsg(NWC24_MBOX_TYPE_RECV, mMsgIdsTbl[i]);
                        continue;
                    }

                    // Get record type
                    // For System Menu (with the title ID "HAEA" or 00000002)
                    if (msgAppId == ES_TITLE_ID(TITLE_BOARD_ALL) || msgAppId == 0x00000002) {
                        if (msgBoardUpdateSW) {
                            recordFlags = RBRRecordType_SWUpdate;
                        }
                        // It is a memo if the friend ID is our ID.
                        else if (msgFriendAddr.wiiId == myUserId) {
                            recordFlags = RBRRecordType_Memo;
                        }
                        // Otherwise it's a letter
                        else {
                            recordFlags = RBRRecordType_Letter;
                        }
                    }
                    // For other apps
                    else {
                        if (msgBoardUpdateSW) {
                            recordFlags = RBRRecordType_SWUpdate;
                        }
                        else {
                            recordFlags = RBRRecordType_Letter;
                        }
                    }

                    // Get no reply flag (prevents replying to the message)
                    BOOL msgNoReply = FALSE;
                    if (!readMsgMBNoReply(&msgObj, &msgNoReply) && !FILE_ERROR_OK) {
                        goto out;
                    }

                    // Get delay timer (receive the message a later time)
                    u8 msgDelay = 0;
                    readMsgMBDelay(&msgObj, &msgDelay);
                    if (mLastError == NWC24_OK) {
                        OSCalendarTime msgDate;
                        getMsgDate(&msgObj, &msgDate);
                        OSCalendarTime universalTime;
                        NETGetUniversalCalendar(&universalTime);

                        OSTime universalTicks = OSCalendarTimeToTicks(&universalTime);
                        OSTime msgTicks = OSCalendarTimeToTicks(&msgDate);
                        if (universalTicks < (msgTicks + OSSecondsToTicks((OSTime)(msgDelay * 3600)))) {
                            // Skip message if we have not passed the delay timer
                            continue;
                        }
                    }
                    else if (!FILE_ERROR_OK) {
                        goto out;
                    }

                    // Get message date (if it fails to read, the current time will be used instead)
                    bool msgUseMbRegDate = false;
                    OSCalendarTime msgMbRegDate;
                    u16 msgYear = 0;
                    u8 msgMonth = 0;
                    u8 msgDay = 0;
                    readMsgMBRegDate(&msgObj, &msgYear, &msgMonth, &msgDay);
                    if (mLastError == NWC24_OK) {
                        msgUseMbRegDate = true;
                        OSTicksToCalendarTime(OSGetTime(), &msgMbRegDate);
                        msgMbRegDate.year = msgYear;
                        msgMbRegDate.mon = msgMonth - 1;
                        msgMbRegDate.mday = msgDay;
                    }
                    else if (!FILE_ERROR_OK) {
                        goto out;
                    }

                    // Get title
                    wchar_t msgTitleText[0x28];
                    memset(msgTitleText, 0, sizeof(msgTitleText));
                    if (!readMsgAltName(&msgObj, (u16*)msgTitleText, 0x28) && !FILE_ERROR_OK) {
                        goto out;
                    }

                    // If we failed to read it, NULL it out and use the friend's name instead.
                    if (mLastError != NWC24_OK) {
                        msgTitleText[0] = 0;
                    }

                    // Create body text (NWC24 subject then NWC24 text)
                    u32 failedToMakeText = FALSE;
                    msgBodyText = make_text(heap, &msgObj, msgType == NWC24_MSGTYPE_PUBLIC, &failedToMakeText);
                    if (failedToMakeText != FALSE) {
                        goto out;
                    }

                    // Get Mii data
                    bool msgHasMii = false;
                    RFLiCharData msgCharData;
                    if (RFLiNWC24Msg2CharData(&msgCharData, &msgObj)
                    && System::getMiiManager()->isValid(&msgCharData)) {
                        System::getMiiManager()->addHiddenDB(&msgObj);
                        msgHasMii = true;
                    }

                    const char* rbrFileType = RBRFileType_Txt;

                    u32 msgNumAttached = 0;

                    bool isMsgBoardData = false;

                    NWC24MIMEType nwc24AttachTypes[RBR_ATTACHMENT_MAX] = {};
                    RBRAttachmentType msgAttachTypes[RBR_ATTACHMENT_MAX] = {};

                    // Get attachment count
                    getMsgNumAttached(&msgObj, &msgNumAttached);
                    if (mLastError == NWC24_ERR_BROKEN) {
                        goto out;
                    }

                    // Get attachment data
                    for (int attachIndex = 0; attachIndex < msgNumAttached; attachIndex++) {
                        getMsgAttachedSize(&msgObj, attachIndex, &mAttachSize[attachIndex]);
                        mAttachData[attachIndex] = new(heap, BUFFER_HEAP) u8[mAttachSize[attachIndex]];
                        if (mAttachData[attachIndex] == NULL) {
                            mAttachSize[attachIndex] = 0;
                            break;
                        }

                        if (!readMsgAttached(&msgObj, attachIndex, mAttachData[attachIndex], mAttachSize[attachIndex]) && !FILE_ERROR_OK) {
                            goto out;
                        }

                        getMsgAttachedType(&msgObj, attachIndex, &nwc24AttachTypes[attachIndex]);
                        switch (nwc24AttachTypes[attachIndex]) {
                            // For JPEG files
                            case NWC24_IMAGE_JPEG: {
                                if (strcmp(rbrFileType, RBRFileType_Txt) == 0) {
                                    // Attempt to convert to ODH (AJPG)
                                    if (encode_odh(heap, attachIndex)) {
                                        msgAttachTypes[attachIndex] = RBRAttachmentType_Picture;
                                        rbrFileType = RBRFileType_Odh;
                                    }
                                    else {
                                        if (mAttachData[attachIndex] != NULL) {
                                            delete mAttachData[attachIndex];
                                            mAttachData[attachIndex] = NULL;
                                        }
                                        mAttachSize[attachIndex] = 0;

                                        // Failed? Use "invalid image" JPEG instead (my_question.jpg)
                                        nand::File* invalidJpegImage = System::getInvalidJpegImage();

                                        mAttachSize[attachIndex] = System::getInvalidJpegImage()->getLength();

                                        mAttachData[attachIndex] = new(heap, BUFFER_HEAP) u8[mAttachSize[attachIndex]];
                                        memcpy(mAttachData[attachIndex], invalidJpegImage->getBuffer(), mAttachSize[attachIndex]);
                                    
                                        // Attempt to convert to ODH (AJPG)
                                        if (encode_odh(heap, attachIndex)) {
                                            msgAttachTypes[attachIndex] = RBRAttachmentType_Picture;
                                            rbrFileType = RBRFileType_Odh;
                                        }
                                        else {
                                            // Failed to do that too? Don't use it.
                                            if (mAttachData[attachIndex] != NULL) {
                                                delete mAttachData[attachIndex];
                                                mAttachData[attachIndex] = NULL;
                                            }
                                            mAttachSize[attachIndex] = 0;
                                        }
                                    }
                                }
                                else {
                                    delete[] mAttachData[attachIndex];
                                    mAttachData[attachIndex] = NULL;
                                    mAttachSize[attachIndex] = 0;
                                }
                                break;
                            }
                            // For ODH files
                            case NWC24_X_WII_PICTURE: {
                                if (strcmp(rbrFileType, RBRFileType_Txt) == 0 && mAttachSize[attachIndex] < NWC24_ATTACH_PICTURE_MAX+0x1400) {
                                    msgAttachTypes[attachIndex] = RBRAttachmentType_Picture;
                                    rbrFileType = RBRFileType_Odh;
                                }
                                else {
                                    delete[] mAttachData[attachIndex];
                                    mAttachData[attachIndex] = NULL;
                                    mAttachSize[attachIndex] = 0;
                                }
                                break;
                            }
                            // For Message Board exclusive data
                            case NWC24_X_WII_MSGBOARD: {
                                if (isMsgBoardData == false && mAttachSize[attachIndex] < NWC24_ATTACH_MSGBOARD_MAX) {
                                    msgAttachTypes[attachIndex] = RBRAttachmentType_MsgBoard;
                                    isMsgBoardData = true;
                                }
                                else {
                                    delete[] mAttachData[attachIndex];
                                    mAttachData[attachIndex] = NULL;
                                    mAttachSize[attachIndex] = 0;
                                }
                                break;
                            }
                            // For "Mini data" (custom user data??)
                            case NWC24_X_WII_MINIDATA: {
                                if (strcmp(rbrFileType, RBRFileType_Txt) == 0 && mAttachSize[attachIndex] < NWC24_ATTACH_MINIDATA_MAX) {
                                    msgAttachTypes[attachIndex] = RBRAttachmentType_MiniData;
                                    rbrFileType = RBRFileType_Dat;
                                }
                                else {
                                    delete[] mAttachData[attachIndex];
                                    mAttachData[attachIndex] = NULL;
                                    mAttachSize[attachIndex] = 0;
                                }
                                break;
                            }
                            // Otherwise, invalid attachment data found and we don't use it
                            default: {
                                if (mAttachData[attachIndex] != NULL) {
                                    delete mAttachData[attachIndex];
                                    mAttachData[attachIndex] = NULL;
                                }
                                mAttachSize[attachIndex] = 0;
                                break;
                            }
                        }
                    }

                    // Decide position
                    f32 left, right, top, bottom;
                    RBRGetPosRect(&left, &right, &top, &bottom);
                    math::VEC2 msgBoardPos(left + (right  - left) * System::getRndm()->get_f01(),
                                           top  + (bottom - top ) * System::getRndm()->get_f01());

                    // Get current time (For backup incase we have not got the message date)
                    BOOL enabled = OSDisableInterrupts();
                    OSCalendarTime currTime = System::getCurrentTime();
                    OSRestoreInterrupts(enabled);

                    // Decide record flags
                    RBRRecordFlags msgRecordFlags = { 0 };
                    msgRecordFlags.type = recordFlags;
                    if (msgBoardCanOptOut) {
                        msgRecordFlags.optOut |= TRUE;
                    }

                    // And now lets create a record of the message!
                    System::getCdbManager()->createNewRecord("ripl_board_record",
                                                            rbrFileType,
                                                            msgUseMbRegDate ? &msgMbRegDate : &currTime,
                                                            msgGroupId == 1 || msgGroupId == 0 ? NULL : &msgAppId,
                                                            msgGroupId == 1 || msgGroupId == 0 ? NULL : &msgGroupId,
                                                            msgBoardPos,
                                                            msgRecordFlags.data,
                                                            msgFriendAddr,
                                                            msgFriendType,
                                                            msgNoReply,
                                                            msgTitleText[0] != 0 ? msgTitleText : msgFriendName,
                                                            msgBodyText,
                                                            msgHasMii ? &msgCharData : NULL,
                                                            (const void**)mAttachData, mAttachSize, msgAttachTypes);

                    unk_0xA30 = true;

out:
                    if (msgBodyText != NULL) {
                        delete[] msgBodyText;
                    }

                    if (mAttachData[0] != NULL) {
                        delete[] mAttachData[0];
                        mAttachData[0] = NULL;
                    }

                    if (mAttachData[1] != NULL) {
                        delete[] mAttachData[1];
                        mAttachData[1] = NULL;
                    }

                    // We created the record, so we don't need to message anymore. Goodbye!
                    deleteMsg(NWC24_MBOX_TYPE_RECV, mMsgIdsTbl[i]);

                    if (System::getCdbManager()->isOverFlow() || mbReceivePaused) {
                        break;
                    }
                }
                else if (msgType == NWC24_MSGTYPE_WII_APP || msgType == NWC24_MSGTYPE_WII_APP_HIDDEN) {
                    u32 iconNewSign;
                    if (getMsgIconNewSign(&msgObj, &iconNewSign) && iconNewCount < MAX_MESSAGES_COUNT) {
                        iconNewCount++;
                        mTitleTbl[iconNewIndex++] = iconNewSign;
                    }
                }
            }
            setDlTable();

            close();

            unk_0xA33 = true;
            unk_0xA31 = false;
        }

        void Manager::addDlTask() {
            SCSimpleAddress address;

            if (SCGetSimpleAddressData(&address)) {
                int i = 0;

                // Interesting way to do a for loop
                goto start;
                while (TRUE) {
                    OSSleepMilliseconds(10);
                    if (++i > 1000) {
                        break;
                    }
start:
                    if (open()) {
                        char fullDlUrl[64];
                        memset(fullDlUrl, 0, sizeof(fullDlUrl));

                        NWC24DlId   dlIds[4]        = { 0, 1, 5, 6 };
                        u16         dlIntervals[4]  = { 240, 240, 240, 240 };
                        u8          dlPrios[4]      = { 128, 160, 200, 240 };

                        for (int j = 0; j < 4; j++) {
                            // Add DL task for announcements
                            snprintf(fullDlUrl, sizeof(fullDlUrl)/sizeof(char),
                                    "http://cfh.wapp.wii.com/announce/%03d/%d/%d.bin", address.id >> SC_SIMPLE_ADDRESS_ID_COUNTRY, System::getLanguage(), j+1);

                            add_dl_task(dlIds[j], fullDlUrl, dlIntervals[j], dlPrios[j]);
                        }

                        close();
                        return;
                    }
                }
            }
        }

        void Manager::add_dl_task(NWC24DlId id, const char* url, u16 interval, u8 priority) {
            BOOL newTask = FALSE;
            NWC24DlTask dlTask;

            if (!getDlTask(&dlTask, id)) {
                if (mLastError == NWC24_ERR_NOT_FOUND) {
                    newTask = TRUE;

                    initDlTask(&dlTask, NWC24_DLTYPE_MULTIPART_V2);
                    setDlId(&dlTask, id);
                    setDlFlags(&dlTask, 0);
                }
                else {
                    return;
                }
            }

            setDlPriority(&dlTask, priority);
            setDlInterval(&dlTask, interval);
            setDlUrl(&dlTask, url);

            if (newTask) {
                addDlTask(&dlTask);
            }
            else {
                updateDlTask(&dlTask);
            }

            NWC24DumpDlTask(&dlTask);
        }

        BOOL Manager::getNewTitleTbl(u32* titleTbl) const {
            if (!unk_0xA33) {
                return FALSE;
            }

            if (titleTbl != NULL) {
                BOOL enabled = OSDisableInterrupts();
                memcpy(titleTbl, mTitleTbl, sizeof(mTitleTbl));
                OSRestoreInterrupts(enabled);
            }

            return TRUE;
        }

        BOOL Manager::isNewMessageThere(u32 unk) const {
            u32 titleTbl[MAX_MESSAGES_COUNT];
            if (!getNewTitleTbl(titleTbl)) {
                return FALSE;
            }

            for (int i = 0; i < MAX_MESSAGES_COUNT && titleTbl[i] != 0; i++) {
                if (unk == titleTbl[i]) {
                    return TRUE;
                }
            }
            return FALSE;
        }

        BOOL Manager::encode_odh(EGG::Heap* heap, u32 attachIndex) {
            utility::JpegDecoder* jpegDecoder = System::getJpegDecoder();
            BOOL result = FALSE;

            mJpegData = NULL;
            mJpegSize = 0;

            // Decode JPEG
            if (jpegDecoder->decodeJpg(heap, mAttachData[attachIndex], mAttachSize[attachIndex])) {
                if (jpegDecoder->waitCaptured()) {
                    delete[] mAttachData[attachIndex];
                    mAttachData[attachIndex] = NULL;

                    mJpegSize = NWC24_ATTACH_PICTURE_MAX;
                    mJpegData = new(heap, BUFFER_HEAP) u8[NWC24_ATTACH_PICTURE_MAX];

                    if (mJpegData != NULL) {
                        // Then encode ODH with the decoded JPEG
                        mJpegSize = jpegDecoder->encodeOdh(heap, mJpegData, mJpegSize);
                        if (mJpegSize != 0) {
                            DCStoreRange(mJpegData, mJpegSize);
                            result = TRUE;
                            mAttachData[attachIndex] = mJpegData;
                            mAttachSize[attachIndex] = mJpegSize;
                        }
                        else {
                            delete[] mJpegData;
                            mJpegData = NULL;
                        }
                    }

                    jpegDecoder->clear();
                }
                else {
                    delete[] mAttachData[attachIndex];
                    mAttachData[attachIndex] = NULL;
                }
            }
            else {
                delete[] mAttachData[attachIndex];
                mAttachData[attachIndex] = NULL;
            }

            return result;
        }

        wchar_t* Manager::make_text(EGG::Heap* heap, const NWC24MsgObj* msg, bool bIncludeSubject, u32* failFlag) {
            wchar_t*    fullText = NULL;

            u32         subjectGotSize = 0;
            wchar_t*    subject = NULL;
            u32         subjectLen = 0;
            u8*         subjectWork = NULL;

            u32         textGotSize = 0;
            wchar_t*    text = NULL;
            u32         textLen = 0;
            u8*         textWork = NULL;

            *failFlag = FALSE;

            // Read subject text
            if (bIncludeSubject) {
                getMsgSubjectSize(msg, &subjectGotSize);
                if (subjectGotSize > 1) {
                    subjectLen = NWC24_MSG_SUBJECT_LENGTH;
                    subject = new(heap, -CLASS_HEAP) wchar_t[NWC24_MSG_SUBJECT_LENGTH+1];
                    subjectWork = new(heap, -CLASS_HEAP) u8[NWC24_SUBJECT_PUBLIC_WORK_SIZE+4];
                    if (subject != NULL && subjectWork != NULL) {
                        memset(subject, 0, (NWC24_MSG_SUBJECT_LENGTH+1) * sizeof(wchar_t));
                        memset(subjectWork, 0, NWC24_SUBJECT_PUBLIC_WORK_SIZE+4);
                        readMsgSubjectPublic(msg, (u16*)subject, &subjectLen, subjectWork, NWC24_SUBJECT_PUBLIC_WORK_SIZE);
                        if (!FILE_ERROR_OK) {
                            *failFlag = TRUE;
                            goto out;
                        }
                    }
                }
            }

            // Read body text
            getMsgTextSize(msg, &textGotSize);
            if (textGotSize != 0) {
                textLen = NWC24_MSG_TEXT_LENGTH;
                text = new(heap, -CLASS_HEAP) wchar_t[NWC24_MSG_TEXT_LENGTH+1];
                textWork = new(heap, -CLASS_HEAP) u8[NWC24_TEXT_PUBLIC_WORK_SIZE+4];
                if (text != NULL && textWork != NULL) {
                    memset(text, 0, (NWC24_MSG_TEXT_LENGTH+1) * sizeof(wchar_t));
                    memset(textWork, 0, NWC24_TEXT_PUBLIC_WORK_SIZE+4);
                    if (bIncludeSubject) {
                        readMsgTextPublic(msg, (u16*)text, &textLen, textWork, NWC24_TEXT_PUBLIC_WORK_SIZE);
                        if (!FILE_ERROR_OK) {
                            *failFlag = TRUE;
                            goto out;
                        }
                    }
                    else {
                        NWC24Charset charset;
                        NWC24Encoding encoding;
                        readMsgText(msg, (char*)text, textLen * sizeof(wchar_t), &charset, &encoding);
                        if (!FILE_ERROR_OK) {
                            *failFlag = TRUE;
                            goto out;
                        }
                    }
                }
            }

            // Combine subject and text
            if (subjectLen != 0 || textLen != 0) {
                int fullTextLen = subjectLen + textLen + 4;
                fullText = new(heap, CLASS_HEAP) wchar_t[fullTextLen];
                if (fullText != NULL) {
                    memset(fullText, 0, fullTextLen * (int)sizeof(wchar_t));
                    if (bIncludeSubject && subjectLen != 0 && subjectGotSize > 1) {
                        wcsncat(fullText, subject, fullTextLen - wcslen(fullText));
                        wcsncat(fullText, L"\n\n", fullTextLen - wcslen(fullText));
                    }
                    if (textLen != 0 && textGotSize != 0) {
                        wcsncat(fullText, text, fullTextLen - wcslen(fullText));
                    }
                }
            }

out:
            if (subject != NULL) {
                delete[] subject;
            }
            if (subjectWork != NULL) {
                delete[] subjectWork;
            }
            if (text != NULL) {
                delete[] text;
            }
            if (textWork != NULL) {
                delete[] textWork;
            }
            return fullText;
        }

        BOOL Manager::is_valid_app_id(u32 appId, u16 groupId) const {
            if (groupId <= 1) {
                return TRUE;
            }

            char appIdStr[sizeof(appId)+sizeof(groupId)];

            memset(appIdStr, 0, sizeof(appIdStr));
            strncpy(appIdStr, (char*)&appId, sizeof(appId));
            strncat(appIdStr, (char*)&groupId, sizeof(groupId));

            for (int i = 0; i < 6; i++) {
                if ((appIdStr[i] < 'A' || appIdStr[i] > 'Z') && (appIdStr[i] < '0' || appIdStr[i] > '9')) {
                    return FALSE;
                }
            }
            return TRUE;
        }

        int Manager::getErrCode() {
            return -NWC24GetErrorCode();
        }

        BOOL Manager::error_handling(NWC24Err code, int line) {
            mLastError = code;

            BOOL result = FALSE;

            switch (code) {
                case NWC24_OK: {
                    result = TRUE;
                    break;
                }
                case NWC24_ERR_FILE_OTHER:
                case NWC24_ERR_FILE_NOEXISTS:
                case NWC24_ERR_FILE_WRITE:
                case NWC24_ERR_FILE_READ:
                case NWC24_ERR_FILE_CLOSE:
                case NWC24_ERR_FILE_OPEN:
                case NWC24_ERR_BROKEN:
                case NWC24_ERR_FATAL: {
                    NWC24CloseLib();
                    NWC24InitFilesIndividually(mpLibWork, FALSE, TRUE, FALSE, FALSE);
                    IPLErrorLogAndDisplay(MESG_ERR_FILE, "NWC24", code, line);
                    break;
                }
                case NWC24_ERR_NAND_CORRUPT: {
                    IPLErrorDisplay(MESG_ERR_NAND);
                    break;
                }
                // to generate jumptable
                case NWC24_ERR_PROTECTED:
                case NWC24_ERR_LIB_NOT_OPENED:
                default: {
                    break;
                }
            }

            return result;
        }

        BOOL Manager::error_handling_ignore_file(NWC24Err code, int line) {
            mLastError = code;

            if (!FILE_ERROR_OK) {
                return FALSE;
            }
            return error_handling(code, line);
        }
    }
}
