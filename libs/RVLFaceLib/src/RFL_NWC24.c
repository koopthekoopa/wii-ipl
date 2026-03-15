#define KEEP_OLD_NULL

#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <revolution/nwc24.h>
#include <revolution/os.h>

#include <string.h>

#define GET_ARRAY_LENGTH(x) (sizeof(x) / sizeof(x[0]))

#define SEARCH_COUNT 20
#define FRIEND_RECEIVE_COUNT 8

BOOL RFLiNWC24Msg2CharData(RFLiCharData* rawdata, const NWC24MsgObj* obj) {
    NWC24Err err;
    u8 data[sizeof(RFLiCharData)];

    err = NWC24ReadMsgFaceData(obj, data);
    OSReport("[RFL]NWC24ReadMsgFaceData: errcode=%d\n", err);  // ok I guess we ain't using RFLi_REPORT anymore...

    if (err != NWC24_OK) {
        return FALSE;
    }

    memcpy(rawdata, data, sizeof(RFLiCharData));

    return TRUE;
}

#if RFL_BUILD < 20080306
RFLErrcode RFLiSetOfficial2NWC24Msg(NWC24MsgObj* obj, RFLCharData* charData, u16 index) {
    RFLiCharData data;
    RFLErrcode err1;
    NWC24Err err2;

    // (Original source lines unknown)
    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, -1);
    RFLi_ASSERTLINE_NULL(obj, -1);

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    err1 = RFLiGetCharRawData(&data, index);
    if (err1 != RFLErrcode_Success) {
        return err1;
    }

    if (RFLiGetIsolation()) {
        data.localonly = TRUE;
    }

    data.favorite = 0;

    memcpy(charData, &data, sizeof(RFLCharData));

    err2 = NWC24SetMsgFaceData(obj, charData);
    if (err2 != NWC24_OK) {
        RFLiGetManager()->mLastErrcode = RFLErrcode_NWC24Fail;
        RFLiGetManager()->mLastReason = err2;
        return RFLErrcode_NWC24Fail;
    }

    return RFLErrcode_Success;
}
#endif  // RFL_BUILD

RFLErrcode RFLCommitNWC24Msg(NWC24MsgObj* obj, u16 index) {
    RFLiCharData data;
    RFLErrcode err1;
    NWC24Err err2;

    RFLi_ASSERTLINE_RANGE(index, 0, RFL_MAX_DATABASE, 122);
    RFLi_ASSERTLINE_NULL(obj, 123);

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    err1 = RFLiGetCharRawData(&data, index);
    if (err1 != RFLErrcode_Success) {
        return err1;
    }

    if (RFLiGetIsolation()) {
        data.localonly = TRUE;
    }

    data.favorite = 0;

    err2 = NWC24SetMsgFaceData(obj, (const u8*)&data);
    if (err2 != NWC24_OK) {
        RFLiGetManager()->mLastErrcode = RFLErrcode_NWC24Fail;
        RFLiGetManager()->mLastReason = err2;
        return RFLErrcode_NWC24Fail;
    }

    err2 = NWC24CommitMsg(obj);
    if (err2 != NWC24_OK) {
        RFLiGetManager()->mLastErrcode = RFLErrcode_NWC24Fail;
        RFLiGetManager()->mLastReason = err2;
        return RFLErrcode_NWC24Fail;
    }

    return RFLErrcode_Success;
}

RFLErrcode RFLNWC24Msg2Model(RFLCharModel* charModel, const NWC24MsgObj* data, void* bufferPtr, RFLResolution resolution, u32 expressionFlag) {
    RFLiCharData rawdata;
    RFLiCharInfo info;

    RFLi_ASSERTLINE_NULL(charModel, 183);
    RFLi_ASSERTLINE_NULL(data, 184);
    RFLi_ASSERTLINE_NULL(bufferPtr, 185);

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (!RFLiNWC24Msg2CharData(&rawdata, data)) {
        return RFLErrcode_DBNodata;
    }

    RFLiConvertRaw2Info(&rawdata, &info);

    if (!RFLiIsValidID(&info.createID)) {
        return RFLErrcode_Broken;
    }

    if (!RFLiCheckValidInfo(&info)) {
        return RFLErrcode_Broken;
    }

    RFLiInitCharModel(charModel, &info, bufferPtr, resolution, expressionFlag);

    return RFLErrcode_Success;
}

RFLErrcode RFLNWC24Msg2Icon(void* buf, const NWC24MsgObj* data, RFLExpression expression, const RFLIconSetting* setting) {
    RFLiCharData rawdata;
    RFLiCharInfo info;

    RFLi_ASSERTLINE_NULL(buf, 221);
    RFLi_ASSERTLINE_NULL(data, 222);
    RFLi_ASSERTLINE_NULL(setting, 223);

    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (!RFLiNWC24Msg2CharData(&rawdata, data)) {
        return RFLErrcode_DBNodata;
    }

    RFLiConvertRaw2Info(&rawdata, &info);

    if (!RFLiIsValidID(&info.createID)) {
        return RFLErrcode_Broken;
    }

    if (!RFLiCheckValidInfo(&info)) {
        return RFLErrcode_Broken;
    }

    RFLiMakeIcon(buf, &info, expression, setting);

    return RFLErrcode_Success;
}

RFLErrcode RFLiNWC24Msg2HiddenAsync(const NWC24MsgObj* obj) {
    RFLiCharData rawdata;
    RFLiHiddenCharData hiddendata;
    RFLiCharInfo charInfo;

    RFLi_ASSERTLINE_NULL(obj, 253);

    if (!RFLAvailable()) {
        OSReport("[RFL] Library Not Initizlized.\n");
        return RFLErrcode_NotAvailable;
    }

    if (RFLiGetIsolation()) {
        OSReport("[RFL] Isolation Flag is Valid.\n");
        return RFLErrcode_Isolation;
    }

    if (!RFLiNWC24Msg2CharData(&rawdata, obj)) {
        OSReport("[RFL] pick up from NWC24Msg was failed.\n");
        return RFLErrcode_DBNodata;
    }

    if (!RFLiIsValidID((RFLCreateID*)rawdata.createID)) {
        OSReport("[RFL] Invalid CreateID.\n");
        return RFLErrcode_Broken;
    }

    if (rawdata.localonly == TRUE) {
        OSReport("[RFL] char Isolation Flag is Valid.\n");
        return RFLErrcode_Isolation;
    }

    RFLiConvertRaw2Info(&rawdata, &charInfo);
    if (!RFLiCheckValidInfo(&charInfo)) {
        OSReport("[RFL] Invalid parts data.\n");
        return RFLErrcode_Broken;
    }

    rawdata.favorite = 0;

    RFLiConvertRaw2HRaw(&rawdata, &hiddendata);

    {
        RFLErrcode err = RFLiOneDataToHiddenDB(&hiddendata);
        OSReport("[RFL] Save Start. errcode=%d\n", err);

        return err;
    }
}

RFLErrcode makeNWC24MsgforExchange_(NWC24MsgObj* obj, RFLCharData* sendTarget, BOOL check_date) {
    NWC24Err nwcerr;
    NWC24FriendInfo receiver[FRIEND_RECEIVE_COUNT];
    u32 index;
    u16 sendNum;
    u16 friendsNum;
    u16 receiverNum;
    BOOL isSuccess;
    RFLCharData* sendData[RFL_MAX_DATABASE + SEARCH_COUNT];
    u32 rand;
    OSCalendarTime cal;
    BOOL dataFound;
    RFLErrcode errUpdate;

    sendNum = 0;
    friendsNum = 0;
    receiverNum = 0;

    isSuccess = TRUE;
    rand = OSGetTick();
    dataFound = FALSE;

    RFLi_ASSERTLINE_NULL(obj, 322);

    // Verification
    if (obj == NULL) {
        return RFLErrcode_WrongParam;
    }
    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }
    if (RFLiGetIsolation()) {
        return RFLErrcode_Isolation;
    }

    OSTicksToCalendarTime(OSGetTime(), &cal);

    // Check date
    if (cal.mday == RFLiGetDBManager()->mDatabase->day_nwc24 && cal.mon == RFLiGetDBManager()->mDatabase->month_nwc24) {
        if (check_date) {
            return RFLErrcode_Exist;
        } else {
            OSReport("[RFL] Last Send Date: %d/%d but send.\n", cal.mon, cal.mday);
        }
    }

    // Get character data from middle database
    {
        RFLMiddleDatabase middleDB;
        void* mdbWork = RFLiAlloc32(RFLGetMiddleDBBufferSize(RFL_MAX_DATABASE));

        u16 stored = 0;

        int index;
        for (index = 0; index < (int)GET_ARRAY_LENGTH(sendData); index++) {
            sendData[index] = NULL;
        }

        RFLInitMiddleDB(&middleDB, RFLMiddleDBType_HiddenRandom, mdbWork, RFL_MAX_DATABASE);
        RFLUpdateMiddleDBAsync(&middleDB);

        errUpdate = RFLWaitAsync();

        if (errUpdate == RFLErrcode_Success || errUpdate == RFLErrcode_DBNodata) {
            stored = RFLGetMiddleDBStoredSize(&middleDB);
        }

        if (stored != 0) {
            RFLiMiddleDatabase* idb = (RFLiMiddleDatabase*)&middleDB;

            for (index = 0; index < stored; index++) {
#if RFL_BUILD < 20080306
                if (!idb->data[index].localonly) {
                    sendData[sendNum] = RFLiAlloc32(sizeof(RFLCharData));
                    RFLiConvertHRaw2Raw(&idb->data[index], (RFLiCharData*)sendData[sendNum]);
                    sendNum++;
                }
#else
                sendData[sendNum] = RFLiAlloc32(sizeof(RFLCharData));
                RFLiConvertHRaw2Raw(idb->data, (RFLiCharData*)sendData[sendNum]);
                sendNum++;
#endif  // RFL_BUILD
            }
        }

        RFLiFree(mdbWork);
    }

    {
        u16 count = RFLGetAvailableOfficialDataNum();
        u16* array = RFLiAlloc(count * sizeof(*array));

        if (array == NULL) {
            for (index = 0; index < (int)GET_ARRAY_LENGTH(sendData); index++) {
                if (sendData[index] != NULL) {
                    RFLiFree(sendData[index]);
                }
            }

            return RFLErrcode_Fatal;
        }

        {
            u16 aidx = 0;
            u16 i;
            RFLiCharInfo info;
            u16 search;

            for (i = 0; i < RFL_MAX_DATABASE; i++) {
                if (RFLIsAvailableOfficialData(i)) {
                    if (RFLiGetCharInfo(&info, i) == RFLErrcode_Success) {
                        dataFound = TRUE;

                        if (info.personal.localonly == FALSE) {
                            array[aidx] = i;
                            aidx++;

                            if (aidx >= count) {
                                break;
                            }
                        }
                    }
                }
            }

            RFLi_ASSERTLINE(aidx <= count, 407);

            for (i = 0; i < aidx - 1; i++) {
                u16 tmp;
                u16 target;

                target = (((rand >> 0x10) + rand) & 0xFFFF) % (aidx - 1);
                if (target >= i) {
                    target++;
                }

                tmp = array[target];
                array[target] = array[i];
                array[i] = tmp;

                rand = (rand + 0x02ED47B1) * 0x032ED8B7;
            }

            search = aidx;
            if (search > SEARCH_COUNT) {
                search = SEARCH_COUNT;
            }

            for (i = 0; i < search; i++) {
                RFLiCharInfo info;
                if (!RFLiGetCharInfo(&info, array[i])) {
                    sendData[sendNum] = RFLiAlloc32(sizeof(RFLiCharData));
                    RFLiConvertInfo2Raw(&info, (RFLiCharData*)sendData[sendNum]);
                    sendNum++;
                }
            }
        }

        RFLiFree(array);
    }

    OSReport("[RFL]SendNum: %d Miis\n", sendNum);

    if (sendNum == 0) {
        for (index = 0; index < (int)GET_ARRAY_LENGTH(sendData); index++) {
            if (sendData[index] != NULL) {
                RFLiFree(sendData[index]);
            }
        }

        return dataFound ? RFLErrcode_Isolation : RFLErrcode_DBNodata;
    }

    memcpy(sendTarget, sendData[rand % sendNum], sizeof(RFLiCharData));

    ((RFLiCharData*)sendTarget)->localonly = 0;
    ((RFLiCharData*)sendTarget)->favorite = 0;

    for (index = 0; index < (int)GET_ARRAY_LENGTH(sendData); index++) {
        if (sendData[index] != NULL) {
            RFLiFree(sendData[index]);
        }
    }

    RFLiStartWorking();
    {
        NWC24FriendInfo* lists[NWC24_FRIEND_INFO_MAX];

        for (index = 0; index < NWC24_FRIEND_INFO_MAX; index++) {
            lists[index] = NULL;
        }

        for (index = 0; index < NWC24_FRIEND_INFO_MAX; index++) {
            NWC24FriendInfo info ALIGN32;
            BOOL isEstablished = FALSE;

            NWC24Err errcode = NWC24ReadFriendInfo(&info, index);
            if (errcode == NWC24_OK) {
                if (info.attr.status == NWC24_FRIENDSTATUS_CONFIRMED && info.attr.type == NWC24_FRIENDTYPE_WII) {
                    isEstablished = TRUE;
                }
            } else if (errcode != NWC24_ERR_NULL) {
                nwcerr = errcode;
                isSuccess = FALSE;
                break;
            }
            if (isEstablished) {
                lists[friendsNum] = RFLiAlloc32(sizeof(NWC24FriendInfo));
                memcpy(lists[friendsNum], &info, sizeof(NWC24FriendInfo));

                friendsNum++;
            }
        }

        if (friendsNum <= FRIEND_RECEIVE_COUNT) {
            int i;
            for (i = 0; i < friendsNum; i++) {
                memcpy(&receiver[i], lists[i], sizeof(NWC24FriendInfo));
                OSReport("[RFL]Send To:%d=%lld\n", i, receiver[i].addr.wiiId);
            }
            receiverNum = friendsNum;
        } else {
            int i;
            int k;

            for (k = 0; k < friendsNum; k++) {
                NWC24FriendInfo* tmp;
                u32 l;

                rand = (rand + 0x02ED47B1) * 0x032ED8B7;
                l = rand % friendsNum;
                tmp = lists[k];
                lists[k] = lists[l];
                lists[l] = tmp;
            }

            for (i = 0; i < (int)GET_ARRAY_LENGTH(receiver); i++) {
                memcpy(&receiver[i], lists[i], sizeof(NWC24FriendInfo));
                OSReport("Send To[%d]: %lld\n", i, receiver[i].addr.wiiId);
            }

            receiverNum = FRIEND_RECEIVE_COUNT;
        }

        for (index = 0; index < (int)GET_ARRAY_LENGTH(lists); index++) {
            if (lists[index] != NULL) {
                RFLiFree(lists[index]);
            }
        }

        if (friendsNum == 0) {
            RFLiEndWorking(RFLErrcode_NoFriends);
            return RFLErrcode_NoFriends;
        }

        if (isSuccess) {
            nwcerr = NWC24InitMsgObj(obj, NWC24_MSGTYPE_WII_MENU);
            if (nwcerr != NWC24_OK) {
                isSuccess = FALSE;
            }
        }

        if (isSuccess) {
            int i;
            for (i = 0; i < receiverNum; i++) {
                nwcerr = NWC24SetMsgToId(obj, receiver[i].addr.wiiId);
                if (nwcerr != NWC24_OK) {
                    isSuccess = FALSE;
                    break;
                }
            }
        }

        if (isSuccess) {
            nwcerr = NWC24SetMsgFaceData(obj, (const u8*)sendTarget);
            if (nwcerr != NWC24_OK) {
                isSuccess = FALSE;
            }
        }

        {
            RFLErrcode lastErr = RFLErrcode_Success;

            if (!isSuccess) {
                OSReport("[RFL] nwc24 fail errcode=%d\n", nwcerr);
                RFLiEndWorkingReason(RFLErrcode_NWC24Fail, nwcerr);
                lastErr = RFLErrcode_NWC24Fail;
            } else {
                RFLiGetDBManager()->mDatabase->month_nwc24 = cal.mon;
                RFLiGetDBManager()->mDatabase->day_nwc24 = cal.mday;
                OSReport("[RFL] nwc24 success.\n");

                RFLiSaveDatabaseAsync(NULL);
                lastErr = RFLWaitAsync();
                OSReport("[RFL] Save Date. errcode=%d\n", lastErr);
            }

            return lastErr;
        }
    }
}

RFLErrcode RFLiMakeNWC24MsgforExchange(NWC24MsgObj* obj, RFLCharData* work) {
    return makeNWC24MsgforExchange_(obj, work, TRUE);
}

RFLErrcode RFLiMakeNWC24MsgforExchange_Debug(NWC24MsgObj* obj, RFLCharData* work) {
    return makeNWC24MsgforExchange_(obj, work, FALSE);
}
