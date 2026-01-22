#ifndef IPL_SCENE_BOARD_H
#define IPL_SCENE_BOARD_H

#include "iplSceneUIHeader.h"

#include "utility/iplCalendar.h"

#include <revolution/nwc24.h>

#include "utility/iplLock.h"

#include "scene/button/iplButton.h"

#include "scene/board/iplBoardObject.h"
#include "scene/board/iplFocusObject.h"
#include "scene/board/iplBoardSD.h"

#include <stddef.h>

namespace ipl {
    namespace scene {
        class focus_object;
        SCENE_CLASS(Board), public ButtonEventHandlerBase {
            public:
                typedef struct SearchRecord {
                    bool            created;    // 0x00
                    int             year;       // 0x04
                    int             month;      // 0x08
                    int             day;        // 0x0C
                    int             hour;       // 0x10
                    int             min;        // 0x14
                    int             sec;        // 0x18
                    int             unused_0x1C;
                    CDBRecordKey    key;        // 0x20

                    CDBDate getCDBDate()    { return CDBMakeCDBDate(year, month, day, hour, min, sec); }
                } SearchRecord;

                Board(EGG::Heap* heap, int);

                virtual void            prepare();
                virtual void            create();

                virtual void            calc();
                virtual void            draw();

                virtual void            destroy();

                virtual BOOL            isResetAcceptable() const;

                virtual void            onEventDerived(u32 compId, u32 event, const controller::Interface* con);

                void                    updateDate(const utility::Date& date);

                void                    focus(BoardObject* boardObject);
                BOOL                    pinch(BoardObject* boardObject);
                void                    pinchOff(BoardObject* boardObject);

                BOOL                    isOptOut() const;

                void                    reappend(BoardObject* boardObject);
                BOOL                    appendRecord(CDBRecord* record);

                void                    stt_wait_cdb_init();
                void                    stt_wait_init();
                void                    stt_wait_child_dst();
                void                    stt_wait_child_cst();
                void                    stt_wait_scroll();
                void                    stt_normal();
                void                    stt_focus();

                void                    stt_after_del();

                void                    stt_init_lfadeaway();
                void                    stt_init_rfadeaway();
                void                    stt_wait_fadeaway();
                void                    stt_wait_stand();

                void                    exec_count_task();

                void                    set_text_date();
                void                    set_text_date(const utility::Date& date, const char* paneName);

                void                    get_text_jpn(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_kor(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_spa(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_ger(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_usaeng(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_usafre(const utility::Date& date, wchar_t* text, u32 textLen);
                void                    get_text_paleng(const utility::Date& date, wchar_t* text, u32 textLen);

                void                    show_ricon();
                void                    hide_ricon();
                void                    show_licon();
                void                    hide_licon();

                void                    enable_ricon();
                void                    disable_ricon();
                void                    enable_licon();
                void                    disable_licon();

                void                    appear_arrow();
                void                    disappear_arrow();
                void                    edge_arrow();

                void                    return_to_freelist();
                void                    return_to_freelist_if_diff_date();

                int                     get_date_label(const utility::Date& date);

                void                    init_search_condition();

                void                    set_key_table();
                void                    clear_key_table() { memset(&mKeyTable, 0, sizeof(mKeyTable)); set_key_table(); };

                BOOL                    is_exist_diff_date() const;

                void                    calc_board_object();

                void                    cmn_create_child(int buttonAnim);
                void                    cmn_start_scroll_r();
                void                    cmn_start_scroll_l();
                void                    cmn_start_scroll_r_hi(const utility::Date& date);
                void                    cmn_start_scroll_l_hi(const utility::Date& date);
                void                    cmn_start_scroll(int animId);

                BOOL                    is_wait_to_clean_task() const;
                BOOL                    is_already_read(const char* recordKey) const;
                BOOL                    is_exist_keytbl(const char* recordKey) const;

                void                    after_backup();

                void                    reopen_log();

                BoardObject*            get_log_obj();

                enum {
                    FRIEND_CODE_ERR_SUCCESS = 0,
                    FRIEND_CODE_ERR_NWC24,
                    FRIEND_CODE_ERR_UNAVAILABLE,
                };

                int                     getFriendInfo(NWC24FriendInfo* info) const;
                const GXTexObj&         getPictureTexObj() const;
                const void*             getPicture(u32* picLength) const;
                int                     getPictureWidth() const;
                int                     getPictureHeight() const;

                nand::LayoutFile*       getLayoutFile() const                               { return mpLayoutFile; }
                utility::Date&          getDate()                                           { return mCurrentDate; }

                bool                    canPlayDispSound() const                            { return mbPlayDispSound; }
                CDBSearchDirection      getSearchDirection() const                          { return mSearchDirection; }

                void                    setHoveredObj(int index, BoardObject* boardObject)  { mHoveredObjs[index] = boardObject; }
                BoardObject*            getHoveredObj(int index)                            { return mHoveredObjs[index]; }

                void                    countMessage()                                      { mMsgCount++; }
                void                    clearMsgCount()                                     { mPrevMsgCount = mMsgCount; mMsgCount = 0; }

                void                    doneReadTask()                                      { mbDoReadTask = false; }
                void                    doneReading()                                       { mbReading = false; }
                void                    doneDeleteTask()                                    { mbDoTaskDelete = false; }
                void                    doneCountTask()                                     { mbDoCountTask = false; }
                void                    sendNewMessageAnimCount()                           { mbNewMsgAnimCount = true; }

                SearchRecord&           getSearchRecord()                                   { return mSearchRecord; }

            private:
                enum {
                    STATE_WAIT_CDB_INIT = 0,
                    STATE_WAIT_INIT,
                    STATE_WAIT_CHILD_DST,
                    STATE_WAIT_CHILD_CST,
                    STATE_WAIT_SCROLL,
                    STATE_NORMAL,
                    STATE_FOCUS,
                    STATE_AFTER_DEL,
                    STATE_PINCH,
                    STATE_INIT_LEFT_FADEAWAY,
                    STATE_INIT_RIGHT_FADEAWAY,
                    STATE_INIT_FADEAWAY,
                    STATE_BACKUP,
                    STATE_TO_SETTINGS,
                    STATE_TERMINATE,
                    STATE_WAIT_STAND,
                    STATE_DONE,
                };

                static Button*          get_button();
                static Arrow*           get_arrow();

                static const int OBJECTS_ON_SCREEN = 10;

                class ObjList {
                    public:
                        ObjList();

                        BoardObject* getNext(BoardObject* obj = NULL) const {
                            return (BoardObject*)nw4r::ut::List_GetNext((nw4r::ut::List*)&mUsedObjs, obj);
                        }

                        BoardObject* getNextFree(BoardObject* obj = NULL) {
                            return (BoardObject*)nw4r::ut::List_GetNext(&mFreeObjs, obj);
                        }

                        int getCount()      { return mUsedObjs.numObjects; }
                        int getFreeCount()  { return mFreeObjs.numObjects;}

                        void append(BoardObject* obj) const {
                            nw4r::ut::List_Remove((nw4r::ut::List*)&mFreeObjs, obj);
                            nw4r::ut::List_Append((nw4r::ut::List*)&mUsedObjs, obj);
                        }

                        void reappend(BoardObject* obj) const {
                            nw4r::ut::List_Remove((nw4r::ut::List*)&mUsedObjs, obj);
                            nw4r::ut::List_Append((nw4r::ut::List*)&mUsedObjs, obj);
                        }

                        void remove(BoardObject* obj) const {
                            nw4r::ut::List_Remove((nw4r::ut::List*)&mUsedObjs, obj);
                            nw4r::ut::List_Append((nw4r::ut::List*)&mFreeObjs, obj);
                        }

                    private:
                        nw4r::ut::List  mUsedObjs;                      // 0x00
                        nw4r::ut::List  mFreeObjs;                      // 0x04
                        BoardObject     mObjects[OBJECTS_ON_SCREEN];    // 0x14 
                };

                int                 mState;                                                         // 0x60
                u32                 unused_0x64;

                ObjList             mObjList;                                                       // 0x68

                volatile bool       mbDoReadTask;                                                   // 0xD00
                volatile bool       mbReading;
                volatile bool       mbDoTaskDelete;                                                 // 0xD02
                volatile bool       mbDoCountTask;

                volatile bool       mbNewMsgAnimCount;                                              // 0xD04

                utility::Date       mCurrentDate;                                                   // 0xD08
                utility::Date       mPreviousDate;                                                  // 0xD14

                nand::LayoutFile*   mpLayoutFile;                                                   // 0xD20
                layout::Object*     mpLayoutBg;                                                     // 0xD24
                layout::Object*     mpLayoutFocusBg;                                                // 0xD28

                nand::LayoutFile*   mpBalloonFile;                                                  // 0xD2C

                BoardObject*        mHoveredObjs[WPAD_MAX_CONTROLLERS];                             // 0xD30

                SearchRecord        mSearchRecord_Next;                                             // 0xD40
                SearchRecord        mSearchRecord_Prev;                                             // 0xD90
                SearchRecord        mSearchRecord;                                                  // 0xDE0

                u32                 mKeyTable[OBJECTS_ON_SCREEN][(CDB_RECORD_KEY_STRING_LEN/4)+1];  // 0xE30

                bool                mbRIconEnable;                                                  // 0xF98
                bool                mbLIconEnable;                                                  // 0xF99

                bool                mbFocusMode;                                                    // 0xF9A

                bool                mbPlayDispSound;                                                // 0xF9B

                CDBSearchDirection  mSearchDirection;                                               // 0xF9C

                focus_object*       mpCurrentFocus;                                                 // 0xFA0

                int                 mMsgCount;                                                      // 0xFA4
                int                 mPrevMsgCount;                                                  // 0xFA8

                BoardSD             mBoardSD;                                                       // 0xFAC

                bool                unk_0xFB4;
                int                 unk_0xFB8;
                u8                  unk_0xFBC[4];
        };
    }
}

#endif // IPL_SCENE_BOARD_H
