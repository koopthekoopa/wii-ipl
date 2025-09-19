#include "system/iplPlayTimeLog.h"
#include "system/iplCdbManager.h"

#include "iplSystem.h"

#include <private/os.h>

namespace ipl {
    static const wchar_t scNumber[] = L"0123456789";

    PlayTimeLog PlayTimeLog::smArg;

    BOOL search_cb_(void* playTime, CDBRecord* record) {
        PlayTimeLog* playTimeLog = reinterpret_cast<PlayTimeLog*>(playTime);
        return playTimeLog->check(record);
    }

    PlayTimeLog::PlayTimeLog() {
        mbCheckSucceed = false;
        memset(&mPlayRecord, 0, sizeof(mPlayRecord));
    }

    void PlayTimeLog::log() {
        if (!__OSReadPlayRecord(&smArg.mPlayRecord)) {
            return;
        }

        cdb::Manager* cdbManager = System::getCdbManager();

        smArg.mCheckStatus = CHECK_STATUS_LOG;

        OSTicksToCalendarTime(smArg.mPlayRecord.playTime, &smArg.mDateTime);

        if (smArg.mDateTime.year > MAX_YEAR) {
            smArg.mDateTime.year = MAX_YEAR;
            smArg.mDateTime.mon = MAX_MONTH-1;
            smArg.mDateTime.mday = MAX_DAY;
            OSTime time = OSCalendarTimeToTicks(&smArg.mDateTime);
            OSTicksToCalendarTime(time ,&smArg.mDateTime);
        }
        else if (smArg.mDateTime.year < MIN_YEAR) {
            smArg.mDateTime.year = MIN_YEAR;
            smArg.mDateTime.mon = MIN_MONTH-1;
            smArg.mDateTime.mday = MIN_DAY;
            OSTime time = OSCalendarTimeToTicks(&smArg.mDateTime);
            OSTicksToCalendarTime(time ,&smArg.mDateTime);
        }

        smArg.mbCheckSucceed = false;

        CDBDate begin = CDBMakeCDBDate(smArg.mDateTime.year, smArg.mDateTime.mon, smArg.mDateTime.mday, 0, 0, 0);
        CDBDate end = CDBMakeCDBDate(smArg.mDateTime.year, smArg.mDateTime.mon, smArg.mDateTime.mday, 23, 59, 59);
    
        cdbManager->search(begin, end, CDB_SEARCH_DIRECTION_RIGHT, CDB_RECORD_LOCATION_VF, 0, search_cb_, &smArg);

        if (!smArg.mbCheckSucceed) {
            smArg.create_new_playlog(&smArg.mPlayRecord);
        }

        s32 result = nand::wrapper::Delete("play_rec.dat");
        switch (result) {
            case NAND_RESULT_UNKNOWN:
            case NAND_RESULT_FATAL_ERROR: {
                IPLErrorLogAndDisplay(MESG_ERR_FILE, "NAND", result, 108);
                break;
            }
            case NAND_RESULT_CORRUPT: {
                IPLErrorDisplay(MESG_ERR_NAND);
                break;
            }
            default: {
                break;
            }
        }
    }

    void PlayTimeLog::sendMsgLog(const wchar_t* stringBuf) {
        smArg.mCheckStatus = CHECK_STATUS_SENDMSG;

        smArg.mDateTime = System::getCurrentTime();

        memset(smArg.mFriendNameBuf, 0, sizeof(smArg.mFriendNameBuf));
        wcsncpy(smArg.mFriendNameBuf, stringBuf, NWC24_FRIEND_NAME_LENGTH-2);

        cdb::Manager* cdbManager = System::getCdbManager();

        smArg.mbCheckSucceed = false;

        CDBDate begin = CDBMakeCDBDate(smArg.mDateTime.year, smArg.mDateTime.mon, smArg.mDateTime.mday, 0, 0, 0);
        CDBDate end = CDBMakeCDBDate(smArg.mDateTime.year, smArg.mDateTime.mon, smArg.mDateTime.mday, 23, 59, 59);
    
        cdbManager->search(begin, end, CDB_SEARCH_DIRECTION_RIGHT, CDB_RECORD_LOCATION_VF, 0, search_cb_, &smArg);

        if (!smArg.mbCheckSucceed) {
            smArg.create_new_sendmsglog(smArg.mFriendNameBuf);
        }
    }

    BOOL PlayTimeLog::check(CDBRecord* record) {
        BOOL result = TRUE;

        cdb::Manager* cdbManager = System::getCdbManager(); // unused

        char type[RBR_FILETYPE_LENGTH] = "";

        CDBRecordGetTypeForce(record, type);
        if (RBRCompareFileType(type, RBRFileType_Log) == 0) {
            switch (mCheckStatus) {
                case CHECK_STATUS_LOG: {
                    add_playlog(&mPlayRecord, record);
                    break;
                }
                case CHECK_STATUS_SENDMSG: {
                    add_sendmsglog(mFriendNameBuf, record);
                    break;
                }
            }

            result = FALSE;
            mbCheckSucceed = true;
        }

        return result;
    }

    void PlayTimeLog::set_time_str(wchar_t* timeStr, u32 time) {
        u32 hour = time / 60;
        u32 minute = time % 60;
        
        const wchar_t* msg = System::getMessage(MESG_PLAY_TIME_TIME_SEPERATOR);
        int msgLen = wcslen(msg);

        // Hour
        int i = 0;
        timeStr[i++] = scNumber[(hour / 10) % 10];
        timeStr[i++] = scNumber[hour % 10];
        timeStr[i++] = 0;

        // Seperator
        wcsncat(timeStr, msg, NWC24_FRIEND_NAME_LENGTH /* 12 is too specific so I'm guessing it's a typo*/);

        // Minute
        i = msgLen + 2;
        timeStr[i++] = scNumber[(minute / 10) % 10];
        timeStr[i++] = scNumber[minute % 10];
        timeStr[i++] = 0;
    }

    void PlayTimeLog::set_num_str(wchar_t*  numStr, u32 num) {
        u32 result;
        int index;

        index = 0;

        // 4th digit
        result = (num / 1000) % 10;
        if (result != 0) {
            numStr[index++] = scNumber[result];
        }
        // 3rd digit
        result = (num / 100) % 10;
        if (result != 0) {
            numStr[index++] = scNumber[result];
        }
        // 2nd digit
        result = (num / 10) % 10;
        if (result != 0) {
            numStr[index++] = scNumber[result];
        }
        // 1st digit
        numStr[index++] = scNumber[num % 10];
        numStr[index++] = 0;
    }

    wchar_t* PlayTimeLog::create_text(const EventBuffer* event) {
        wchar_t* string = new(System::getMailWorkHeap(), CLASS_HEAP) wchar_t[STRINGBUF_LIMIT];
        memset(string, 0, STRINGBUF_LIMIT * sizeof(wchar_t));

        // Create log buffer
        bool result = false;
        for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
            result |= event->logBuf.entries[i].alreadyAdded;
        }
        if (result) {
            create_playlog_text(&event->logBuf, string, STRINGBUF_LIMIT);
        }

        // Create send message buffer
        result = false;
        for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
            result |= event->sendMsg.entries[i].alreadyAdded;
        }
        if (result) {
            create_sendmsg_text((SendMsgBuffer*)&event->sendMsg, string, STRINGBUF_LIMIT);
        }

        return string;
    }

    void PlayTimeLog::create_playlog_text(const LogBuffer* logBuffer, wchar_t* stringBuf, int stringLimit) {
        wchar_t timeStr[32];
        u32 totalTime = 0;
        const wchar_t* msg;

        // Put header
        msg = System::getMessage(MESG_PLAY_TIME_LOG_TITLE);
        wcsncpy(stringBuf, msg, stringLimit - wcslen(stringBuf));

        // Put play record entries
        for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
            if (logBuffer->entries[i].alreadyAdded) {
                // Get time
                u32 time = OSTicksToSeconds(logBuffer->entries[i].playRecord.playTime - logBuffer->entries[i].playRecord.playStartTime) / 60;
                if (time == 0) {
                    time = 1;
                }
                else if ((time / 60) >= 24) {
                    time = 1439;
                }
                set_time_str(timeStr, time);

                // Add that to the total time spent
                totalTime += time;

                // Put game title
                wcsncat(stringBuf, L"\n\n", stringLimit - wcslen(stringBuf));
                wcsncat(stringBuf, logBuffer->entries[i].playRecord.titleName[0], OS_RECORD_TITLE_LENGTH);
                if (logBuffer->entries[i].playRecord.titleName[1][0] != 0) {
                    wcsncat(stringBuf, L"\n", stringLimit - wcslen(stringBuf));
                    wcsncat(stringBuf, logBuffer->entries[i].playRecord.titleName[1], OS_RECORD_TITLE_LENGTH);
                }

                // Add new line
                wcsncat(stringBuf, L"\n     ", stringLimit - wcslen(stringBuf));
                wcsncat(stringBuf, timeStr, stringLimit - wcslen(stringBuf));
            }
        }

        // Add in time for the "Others"
        if (logBuffer->extraTime != 0) {
            // Get time
            u32 time = OSTicksToSeconds(logBuffer->extraTime) / 60;
            if (time == 0) {
                time = 1;
            }
            set_time_str(timeStr, time);

            // Add that to the total time
            totalTime += time;

            // Put "Others"
            msg = System::getMessage(MESG_PLAY_TIME_LOG_EXTRA);
            wcsncat(stringBuf, L"\n\n", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, msg, stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, L"\n     ", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, timeStr, stringLimit - wcslen(stringBuf));
        }

        set_time_str(timeStr, totalTime);

        // Add total time
        msg = System::getMessage(MESG_PLAY_TIME_LOG_TOTAL);
        wcsncat(stringBuf, L"\n\n", stringLimit - wcslen(stringBuf));
        wcsncat(stringBuf, msg, stringLimit - wcslen(stringBuf));
        wcsncat(stringBuf, L"\n     ", stringLimit - wcslen(stringBuf));
        wcsncat(stringBuf, timeStr, stringLimit - wcslen(stringBuf));
    }

    void PlayTimeLog::create_sendmsg_text(const SendMsgBuffer* sendMsgBuffer, wchar_t* stringBuf, int stringLimit) {
        wchar_t numStr[8];
        const wchar_t* msg;

        // Put a pretty seperator
        if (wcslen(stringBuf) != 0) {
            wcsncat(stringBuf, L"\n\n", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, L"☆ ☆ ☆ ☆ ☆\n\n", stringLimit - wcslen(stringBuf));
        }

        // Put header
        msg = System::getMessage(MESG_PLAY_TIME_SENDMSG_TOTAL);
        wcsncat(stringBuf, msg, stringLimit - wcslen(stringBuf));
        wcsncat(stringBuf, L"\n", stringLimit - wcslen(stringBuf));

        // Put list of friend names
        for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
            if (sendMsgBuffer->entries[i].alreadyAdded) {
                wcsncat(stringBuf, L"\n", stringLimit - wcslen(stringBuf));
                wcsncat(stringBuf, sendMsgBuffer->entries[i].friendName, stringLimit - wcslen(stringBuf));
            }
        }

        int num = sendMsgBuffer->friendCount;
        if (num != 0) {
            // Prevent it from saying "And 100 more"?
            if (num > 100) {
                num = 99;
            }

            set_num_str(numStr, num);

            const wchar_t* msg1 = System::getMessage(MESG_PLAY_TIME_SENDMSG_AND);
            const wchar_t* msg2 = System::getMessage(MESG_PLAY_TIME_SENDMSG_MORE);

            // Put "And [friend count] More"
            wcsncat(stringBuf, L"\n\n", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, msg1, stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, L" ", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, numStr, stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, L" ", stringLimit - wcslen(stringBuf));
            wcsncat(stringBuf, msg2, stringLimit - wcslen(stringBuf));
        }
    }

    void PlayTimeLog::create_new_playlog(const OSPlayRecord* playRecord) {
        EventBuffer event;

        event.magic = LOG_MAGIC;
        memset(&event.logBuf, 0, sizeof(LogBuffer));
        memset(&event.sendMsg, 0, sizeof(SendMsgBuffer));

        memcpy(&event.logBuf.entries[0].playRecord, playRecord, sizeof(OSPlayRecord));
        event.logBuf.entries[0].alreadyAdded = true;

        create_new_record(&event);
    }

    void PlayTimeLog::create_new_sendmsglog(const wchar_t* stringBuf) {
        EventBuffer event;

        event.magic = LOG_MAGIC;
        memset(&event.logBuf, 0, sizeof(LogBuffer));
        memset(&event.sendMsg, 0, sizeof(SendMsgBuffer));

        memset(event.sendMsg.entries[0].friendName, 0, sizeof(event.sendMsg.entries[0].friendName));
        wcsncpy(event.sendMsg.entries[0].friendName, stringBuf, NWC24_FRIEND_NAME_LENGTH-2);
        event.sendMsg.entries[0].alreadyAdded = true;

        create_new_record(&event);
    }

    // https://decomp.me/scratch/sRhsi
    // Some sort of hellhole with loading arguments for createNewRecord??
    void PlayTimeLog::create_new_record(const EventBuffer* event) {
        cdb::Manager*   cdbManager = System::getCdbManager();

        const wchar_t*  bodyText = create_text(event);
        const wchar_t*  titleText = System::getMessage(MESG_PLAY_TIME_TITLE);

        math::VEC2      recordPos(0, 0);

        const void* attachData[RBR_ATTACHMENT_MAX] = {
            (void*)event,
            NULL
        };

        u32 attachSize[RBR_ATTACHMENT_MAX] = {
            sizeof(EventBuffer),
            0
        };

        RBRAttachmentType attachType[RBR_ATTACHMENT_MAX] = {
            RBRAttachmentType_PlayTimeLog,
            RBRAttachmentType_None
        };

        NWC24FriendAddr friendAddr;
        memset(&friendAddr, 0, sizeof(NWC24FriendAddr));

        cdbManager->createNewRecord("playtimelog",
                                    RBRFileType_Log,
                                    &mDateTime,
                                    NULL,
                                    NULL,
                                    recordPos,
                                    RBR_MAKE_RECORDFLAGS(RBRRecordType_PlayTimeLog, FALSE),
                                    friendAddr,
                                    NWC24_FRIENDTYPE_NONE,
                                    RBRReplyFlag_NotAvailable,
                                    titleText, bodyText,
                                    NULL,
                                    attachData, attachSize, attachType);

        delete[] bodyText;
    }

    void PlayTimeLog::add_playlog(const OSPlayRecord* playRecord, CDBRecord* record) {
        EventBuffer event;

        event.magic = LOG_MAGIC;
        memset(&event.logBuf, 0, sizeof(LogBuffer));
        memset(&event.sendMsg, 0, sizeof(SendMsgBuffer));

        u8* buffer = read_record(record, &event);
        if (buffer != NULL) {
            BOOL result = FALSE;

            for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
                if (!event.logBuf.entries[i].alreadyAdded) {
                    memcpy(&event.logBuf.entries[i].playRecord, playRecord, sizeof(OSPlayRecord));
                    result = event.logBuf.entries[i].alreadyAdded = true;
                    break;
                }
            }

            if (!result) {
                event.logBuf.extraTime += (playRecord->playTime - playRecord->playStartTime);
            }

            write_record(record, &event, buffer);
        }
    }

    void PlayTimeLog::add_sendmsglog(const wchar_t* stringBuf, CDBRecord* record) {
        EventBuffer event;

        event.magic = LOG_MAGIC;
        memset(&event.logBuf, 0, sizeof(LogBuffer));
        memset(&event.sendMsg, 0, sizeof(SendMsgBuffer));

        u8* buffer = read_record(record, &event);
        if (buffer != NULL) {
            BOOL result = FALSE;

            for (int i = 0; i < LOG_MAX_ENTRIES; i++) {
                if (!event.sendMsg.entries[i].alreadyAdded) {
                    memset(event.sendMsg.entries[i].friendName, 0, sizeof(smArg.mFriendNameBuf));
                    wcsncpy(event.sendMsg.entries[i].friendName, stringBuf, NWC24_FRIEND_NAME_LENGTH-2);
                    result = event.sendMsg.entries[i].alreadyAdded = true;
                    break;
                }
            }

            if (!result) {
                event.sendMsg.friendCount++;
            }

            write_record(record, &event, buffer);
        }
    }

    u8* PlayTimeLog::read_record(CDBRecord* record, EventBuffer* event) {
        u8* buffer = NULL;

        cdb::Manager* cdbManager = System::getCdbManager();

        BOOL result = cdbManager->open(record);
        if (result) {
            u32 recordSize;
            cdbManager->getDataSize(record, &recordSize);

            buffer = new (System::getMailWorkHeap(), CLASS_HEAP) u8[recordSize];
            cdbManager->read(record, buffer, recordSize);

            RBRHeader* header = (RBRHeader*)buffer;
            u8* attachData = (u8*)&buffer[header->attachments[0].offset];

            // Older versions of PlayTimeLog only included LogBuffer
            if (header->attachments[0].size == sizeof(LogBuffer)) {
                memcpy(&event->logBuf, attachData, sizeof(LogBuffer));
            }
            // Newer versions included LogBuffer and SendMsgBuffer
            else {
                memcpy(event, attachData, sizeof(EventBuffer));
            }
        }

        return buffer;
    }

    void PlayTimeLog::write_record(CDBRecord* record, EventBuffer* event, u8* buffer) {
        cdb::Manager*       cdbManager = System::getCdbManager();

        const wchar_t*      bodyText = create_text(event);

        const void*         attachData[RBR_ATTACHMENT_MAX] = { (void*)event, NULL };
        u32                 attachSize[RBR_ATTACHMENT_MAX] = { sizeof(EventBuffer), 0 };
        RBRAttachmentType   attachType[RBR_ATTACHMENT_MAX] = { RBRAttachmentType_PlayTimeLog, RBRAttachmentType_None };

        RBRHeader*          header = (RBRHeader*)buffer;

        cdbManager->seek(record, 0, CDB_SEEK_BEGIN);
        cdbManager->writeRecord(record, math::VEC2(header->xPos, header->yPos),
                                header->flags,
                                header->friendAddr,
                                header->friendType,
                                header->replyFlag,
                                (wchar_t*)&buffer[header->titleOffset],
                                bodyText,
                                NULL,
                                attachData, attachSize, attachType);

        delete[] bodyText;
        delete[] buffer;

        cdbManager->close(record);
    }

    // Stripped out function generated a weak of math::VEC2().
#ifndef NON_MATCHING
    math::VEC2 ForceCTORWeak() {
        return math::VEC2(NULL, NULL);
    }
#endif // NON_MATCHING
}
