#ifndef IPL_PLAY_TIME_LOG_H
#define IPL_PLAY_TIME_LOG_H

#include <revolution/types.h>

#include <revolution/cdb.h>

#include <private/os/OSPlayRecord.h>
#include <private/os/OSTime.h>

#include <wchar.h>

#include "system/iplCdbManager.h"

namespace ipl {
#define LOG_MAGIC '03_0'

#define LOG_MAX_ENTRIES 10

    typedef struct LogBufferEntry {
        bool alreadyAdded;        // 0x00
        OSPlayRecord playRecord;  // 0x08
    } LogBufferEntry;

    typedef struct LogBuffer {
        LogBufferEntry entries[LOG_MAX_ENTRIES];  // 0x00
        OSTime extraTime;                         // 0x550
    } LogBuffer;

    typedef struct SendMsgBufferEntry {
        bool alreadyAdded;                             // 0x00
        wchar_t friendName[NWC24_FRIEND_NAME_LENGTH];  // 0x02
    } SendMsgBufferEntry;

    typedef struct SendMsgBuffer {
        SendMsgBufferEntry entries[LOG_MAX_ENTRIES];  // 0x00
        int friendCount;                              // 0x104
    } SendMsgBuffer;

    typedef struct EventBuffer {
        u32 magic;              // 0x00
        LogBuffer logBuf;       // 0x08
        SendMsgBuffer sendMsg;  // 0x560
    } EventBuffer;

    class PlayTimeLog {
    public:
        PlayTimeLog();

        static void log();

        static void sendMsgLog(const wchar_t* stringBuf);

        BOOL check(CDBRecord* record);

    private:
        enum {
            CHECK_STATUS_LOG = 0,
            CHECK_STATUS_SENDMSG,
        };

        static const int STRINGBUF_LIMIT = 2100;

        void set_time_str(wchar_t* timeStr, u32 time);
        void set_num_str(wchar_t* numStr, u32 num);

        wchar_t* create_text(const EventBuffer* event);

        void create_playlog_text(const LogBuffer* logBuffer, wchar_t* stringBuf, int stringLimit);
        void create_sendmsg_text(const SendMsgBuffer* sendMsgBuffer, wchar_t* stringBuf, int stringLimit);

        void create_new_playlog(const OSPlayRecord* playRecord);
        void create_new_sendmsglog(const wchar_t* stringBuf);
        void create_new_record(const EventBuffer* event);

        void add_playlog(const OSPlayRecord* playRecord, CDBRecord* record);
        void add_sendmsglog(const wchar_t* stringBuf, CDBRecord* record);

        u8* read_record(CDBRecord* record, EventBuffer* event);
        void write_record(CDBRecord* record, EventBuffer* event, u8* buffer);

        bool mbCheckSucceed;       // 0x00
        OSPlayRecord mPlayRecord;  // 0x08
        OSCalendarTime mDateTime;
        wchar_t mFriendNameBuf[NWC24_FRIEND_NAME_LENGTH];  // 0xB0
        int mCheckStatus;                                  // 0xC8

        static PlayTimeLog smArg;
    };
}  // namespace ipl

#endif  // IPL_PLAY_TIME_LOG_H
