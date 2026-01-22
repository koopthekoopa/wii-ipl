#include "iplSceneUI.h"

#include "scene/board/iplBoard.h"

#include "scene/board/iplBoardObject.h"
#include "scene/board/iplFocusObject.h"

#include "scene/letterWriter/iplLetterWriter.h"
#include "scene/parentalDialog/iplParentalDialog.h"

#include "scene/channelSelect/iplChannelSelect.h"
#include "scene/channelTitle/iplChannelTitle.h"

#include "scene/setting/iplSetting.h"

#include "iplSystem.h"

#include "utility/iplRBRUtility.h"

#define RECORD_DATE_TO_CDB(x)       (CDBMakeCDBDate((x).year, (x).month, (x).day,   (x).hour, (x).min,   (x).sec))
#define RECORD_DATE_TO_CDB_BEGIN(x) (CDBMakeCDBDate((x).year, (x).month, (x).day,   MIN_HOUR, MIN_MINUTE, MIN_SECOND))
#define RECORD_DATE_TO_CDB_END(x)   (CDBMakeCDBDate((x).year, (x).month, (x).day,   MAX_HOUR, MAX_MINUTE, MAX_SECOND))

#define DATE_TO_CDB_BEGIN(x)        (CDBMakeCDBDate((x).year, (x).month-1, (x).day, MIN_HOUR, MIN_MINUTE, MIN_SECOND))
#define DATE_TO_CDB_END(x)          (CDBMakeCDBDate((x).year, (x).month-1, (x).day, MAX_HOUR, MAX_MINUTE, MAX_SECOND))

namespace ipl {
    namespace scene {
        static const struct {
            f32 start, end;
        } scAnmFrame[] = {
            { 30.0f,  50.0f },
            { 0.0f,   20.0f },
            { 100.0f, 131.0f },
            { 60.0f,  91.0f }
        };
        
        static const char* scScrollPane[] = {
            "TopBack_a",
            "TopBack_b",
            "TopBack_c",
        };

        static const wchar_t scNumber[] = {'0','1','2','3','4','5','6','7','8','9'};

        BOOL count_task_cb_(void* work, CDBRecord* record);
        void count_task_(void* work);

        BOOL read_task_cb_(void* work, CDBRecord* record);
        void read_task_(void* work);

        BOOL fwd_search_task_cb_(void* work, CDBRecord* record);
        void fwd_search_task_(void* work);

        void delete_task_(void* work);

        #define OBJ_LIST_LOOP(...) {                \
            BoardObject* object = NULL;             \
            goto CONCAT(l,__LINE__);                \
            do {                                    \
                {__VA_ARGS__}                       \
CONCAT(l,__LINE__):                                 \
                object = mObjList.getNext(object);  \
            } while (object != NULL);               \
        }

        #define OBJ_LIST_LOOP_ALT(object, ...) {    \
            goto CONCAT(l,__LINE__);                \
            do {                                    \
                {__VA_ARGS__}                       \
CONCAT(l,__LINE__):                                 \
                object = mObjList.getNext(object);  \
            } while (object != NULL);               \
        }

        enum {
            FOCUS_ANIM_IN = 0,
            FOCUS_ANIM_OUT,
        };

        Board::Board(EGG::Heap* heap, int unk) :
        Base(heap),
        ButtonEventHandlerBase(),
        mState(STATE_WAIT_CDB_INIT),
        mObjList(),
        mbDoReadTask(false),
        mbReading(false),
        mbDoTaskDelete(false),
        mbDoCountTask(false),
        mbNewMsgAnimCount(false),
        mCurrentDate(System::getCurrentTime()),
        mPreviousDate(System::getCurrentTime()),
        mpLayoutFile(NULL),
        mpLayoutBg(NULL),
        mpLayoutFocusBg(NULL),
        mbRIconEnable(false),
        mbLIconEnable(false),
        mbFocusMode(false),
        mbPlayDispSound(false),
        mpCurrentFocus(NULL),
        mMsgCount(-1),
        mPrevMsgCount(-1),
        mBoardSD(),
        unk_0xFB4(false),
        unk_0xFB8(unk) {
            setSceneParentFlags(SCN_PARENTFLAG_CALC | SCN_PARENTFLAG_DRAW);

            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                mHoveredObjs[i] = NULL;
            }

            init_search_condition();
        }

        void Board::prepare() {
            System::checkNandOverFlowFlagAsync();

            // Read files
            mpLayoutFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "board.ash");
            mpBalloonFile = System::getNandManager()->readLayoutAsync(getSceneHeap(), "balloon.ash");
        }

        void Board::create() {
            // Create background
            mpLayoutBg = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_IplTop_c.brlyt");
            mpLayoutBg->bind("my_IplTop_c.brlan");
            mpLayoutBg->finishBinding();

            // Create focus layout
            mpLayoutFocusBg = new layout::Object(getSceneHeap(), mpLayoutFile, "arc", "my_BbsMask_a.brlyt");
            mpLayoutFocusBg->bind("my_BbsMask_a_MaskIn.brlan");
            mpLayoutFocusBg->bind("my_BbsMask_a_MaskOut.brlan", false);
            mpLayoutFocusBg->finishBinding();

            // Set today's date
            set_text_date();

            // Start SD process
            if (System::getCdbManager() != NULL) {
                System::getCdbManager()->startSDProc();
                System::getCdbManager()->getSDWorker()->mount_sd_async();
            }
        }

        void Board::calc() {
            switch (mState) {
                case STATE_WAIT_CDB_INIT: {
                    stt_wait_cdb_init();
                    break;
                }
                case STATE_WAIT_INIT: {
                    stt_wait_init();
                    break;
                }
                case STATE_WAIT_CHILD_DST: {
                    stt_wait_child_dst();
                    break;
                }
                case STATE_WAIT_CHILD_CST: {
                    stt_wait_child_cst();
                    break;
                }
                case STATE_WAIT_SCROLL: {
                    stt_wait_scroll();
                    break;
                }
                case STATE_NORMAL: {
                    stt_normal();
                    break;
                }
                case STATE_FOCUS: {
                    stt_focus();
                    break;
                }
                case STATE_AFTER_DEL: {
                    stt_after_del();
                    break;
                }
                case STATE_INIT_LEFT_FADEAWAY: {
                    stt_init_lfadeaway();
                    break;
                }
                case STATE_INIT_RIGHT_FADEAWAY: {
                    stt_init_rfadeaway();
                    break;
                }
                case STATE_INIT_FADEAWAY: {
                    stt_wait_fadeaway();
                    break;
                }
                case STATE_BACKUP: {
                    mState = STATE_NORMAL;
                    break;
                }
                case STATE_WAIT_STAND: {
                    stt_wait_stand();
                    break;
                }
                case STATE_TO_SETTINGS: {
                    if (System::getCdbManager() != NULL) {
                        if (!System::getCdbManager()->getSDWorker()->is_working()) {
                            System::getCdbManager()->terminateSDProc();
                            mState = STATE_DONE;
                        }
                    }
                    else {
                        mState = STATE_DONE;
                    }
                    break;
                }
                case STATE_TERMINATE: {
                    if (System::getCdbManager() != NULL) {
                        if (System::getCdbManager()->getSDWorker()->is_terminated()) {
                            mState = STATE_DONE;
                        }
                    }
                    break;
                }
                case STATE_DONE: {
                    if (System::getFader()->getStatus() != EGG::Fader::PREPARE_IN) {
                        return;
                    }
                    if (!isResetAcceptable()) {
                        return;
                    }

                    if (System::getScene(SCENE_CHANNEL_TITLE) != NULL) {
                        if (static_cast<ChannelTitle*>(System::getScene(SCENE_CHANNEL_TITLE))->isInLaunching()) {
                            return;
                        }
                    }

                    requestSceneDestruction();
                    return;
                }
            }

            if (mState != STATE_WAIT_CDB_INIT) {
                mpLayoutBg->calc();
                mpLayoutFocusBg->calc();

                if (mState != STATE_TO_SETTINGS && mState != STATE_TERMINATE) {
                    if (mState == STATE_DONE) {
                        return;
                    }

                    calc_board_object();

                    Button* button = get_button();

                    if (mbNewMsgAnimCount && button != NULL) {
                        /* Message count on button icon */

                        int index = 0;
                        wchar_t numStr[3] = L"";

                        int mailCount;

                        if (mMsgCount >= 0) {
                            mailCount = 99;
                            if (mMsgCount <= 99) {
                                mailCount = mMsgCount;
                            }
                        }
                        else {
                            mailCount = 0;
                        }

                        if (mailCount >= 10) {
                            index = 1;
                            numStr[0] = scNumber[(mailCount / 10) % 10];
                        }
                        numStr[index++] = scNumber[mailCount % 10];

                        button->setText("T_BbsMark1", numStr);

                        // New mail animation

                        if (mailCount != 0) {
                            button->startMailNumAnm();
                        }
                        else {
                            button->stopMailNumAnm();
                        }

                        mbNewMsgAnimCount = false;
                    }

                    // Do SD process
                    if (System::getCdbManager() != NULL && mState != STATE_WAIT_INIT) {
                        mBoardSD.update();
                    }
                }
            }
        }

        void Board::draw() {
            if (mState != STATE_WAIT_CDB_INIT) {
                if (System::onDrawLayer(scene::DRAW_LAYER_1)) {
                    OBJ_LIST_LOOP({
                        object->capture();
                    });
                }
                else if (System::onDrawLayer(scene::DRAW_LAYER_2)) {
                    // Background
                    utility::Graphics::setOrtho();
                    mpLayoutBg->draw();

                    // Objects

                    BoardObject* chosen = NULL;

                    OBJ_LIST_LOOP({
                        if (object->mState != BoardObject::STATE_PINCH) {
                            object->draw();
                        }
                        else {
                            chosen = object;
                        }
                    });

                    // Pinched object
                    if (chosen != NULL) {
                        chosen->draw();
                    }

                    // Focus background
                    mpLayoutFocusBg->draw();

                    // Focus object
                    if (mpCurrentFocus != NULL) {
                        mpCurrentFocus->draw();
                    }
                }
            }
        }

        void Board::destroy() {
            // Terminate SD process
            if (mState != STATE_DONE) {
                if (System::getCdbManager() != NULL) {
                    while (System::getCdbManager()->getSDWorker()->is_working()) {
                        OSSleepMicroseconds((OSTime)100);
                    }

                    System::getCdbManager()->terminateSDProc();
                }
            }

            // Goodbye focuced letter
            if (mpCurrentFocus != NULL) {
                delete mpCurrentFocus;
                mpCurrentFocus = NULL;
            }

            return_to_freelist();

            BoardObject* object = NULL;
            while (object = mObjList.getNextFree(object), object != NULL) {
                object->destroy_heap();
            }

            // Unmount SD
            if (System::getCdbManager() != NULL) {
                while (!System::getCdbManager()->getSDWorker()->is_terminated()) {
                    OSSleepMicroseconds((OSTime)100);
                }

                System::getCdbManager()->unmountSD_safe();
            }

            if (System::getCurrentRootSceneID() != SCENE_SD_BUTTON) {
                System::stopReceiveSchedule();
            }
        }

        BOOL Board::isResetAcceptable() const {
            BOOL result = FALSE;

            if (!mbDoTaskDelete && !mbDoReadTask && !mbDoCountTask && !is_wait_to_clean_task()) {
                result = TRUE;
            }
            
            return result;
        }

        void Board::updateDate(const utility::Date& date) {
            if (mCurrentDate != date) {
                if (mCurrentDate > date) {
                    utility::Date yesterday;
                    utility::Calendar::getYesterday(mCurrentDate, &yesterday);
                    if (yesterday == date) {
                        cmn_start_scroll_l();
                    }
                    else {
                        cmn_start_scroll_l_hi(date);
                    }
                }
                else {
                    utility::Date tomorrow;
                    utility::Calendar::getTomorrow(mCurrentDate, &tomorrow);
                    if (tomorrow == date) {
                        cmn_start_scroll_r();
                    }
                    else {
                        cmn_start_scroll_r_hi(date);
                    }
                }
            }
        }

        void Board::focus(BoardObject* boardObject) {
            Button* button = get_button();
            button->setEventHandler(NULL);

            mpCurrentFocus = new(System::getMem2App(), 4) focus_object(mpLayoutFile, mpBalloonFile, boardObject);

            // Focus in
            mpLayoutFocusBg->getAnim(FOCUS_ANIM_IN)->play();
            mbFocusMode = true;

            // Goodbye arrows
            disappear_arrow();

            boardObject->mpLayout->getAnim(BoardObject::ANIM_FOCUS)->play();

            // Button transition
            button->animation(Button::IDANIM_DISAPPEAR_BOARD_BUTTON);
            button->setText("T_CalExit", MESG_CMN_BACK_ALT);
            button->setText("T_Dust", MESG_BOARD_TRASH);
            button->get_opt_out_btn()->setText(MESG_BOARD_OPT_OUT);

            mpCurrentFocus->show_cmn_btn();

            mState = STATE_FOCUS;
        }

        BOOL Board::pinch(BoardObject* boardObject) {
            BOOL result = mState != STATE_PINCH;
            if (result) {
                snd::getSystem()->startSEwithPos("WIPL_SE_BOARD_HOLD", boardObject->mBoardPos.x);
                mState = STATE_PINCH;
            }
            return result;
        }

        void Board::pinchOff(BoardObject* boardObject) {
            snd::getSystem()->startSEwithPos("WIPL_SE_BOARD_RELEASE", boardObject->mBoardPos.x);
            mState = STATE_NORMAL;
        }

        BOOL Board::isOptOut() const {
            BOOL result = FALSE;
            if (mpCurrentFocus != NULL) {
                result = mpCurrentFocus->mpBoardObj->mOptOutFlag != FALSE;
            }
            return result;
        }

        void Board::reappend(BoardObject* boardObject) {
            mObjList.reappend(boardObject);
        }

        BOOL Board::appendRecord(CDBRecord* record) {
            CDBRecordKey recordKey;

            utility::Date recordDate;
            int recordDay;
            int recordMin;
            int recordHour;

            u32 recordGC = 0;

            cdb::Manager* cdbManager = System::getCdbManager();

            BOOL result = TRUE;

            char recordType[8] = "";

            // Get record metadata
            CDBRecordGetCalendarTimeForce(record, &recordDate.year, &recordDate.month, &recordDate.day, &recordHour, &recordMin, &recordDay);
            CDBRecordGetKeyForce(record, &recordKey);
            CDBRecordGetTypeForce(record,recordType);
            CDBRecordGetGameCodeForce(record,(char*)&recordGC);

            if (mbReading == true && mSearchRecord_Prev.created) {
                mbReading = false;
                return FALSE;
            }

            // Verify record
            if (!cdbManager->isValidType(recordType)) {
                return TRUE;
            }
            if (is_already_read(recordKey.keyString)) {
                return TRUE;
            }
            if (is_exist_keytbl(recordKey.keyString)) {
                return TRUE;
            }

            recordDate.month++;
            if (!(recordDate == mCurrentDate)) {
                goto error;
            }

            // Find any free space to put the object on screen

            BOOL old = OSDisableInterrupts();
            BOOL exist = is_exist_diff_date();
            BoardObject* obj = mObjList.getNextFree();
            OSRestoreInterrupts(old);

            if (obj == NULL && exist) {
                while (obj == NULL) {
                    OSSleepMilliseconds((OSTime)1);
                    BOOL old2 = OSDisableInterrupts();
                    obj = mObjList.getNextFree();
                    OSRestoreInterrupts(old2);
                }
            }

            // No free slot, show the little icon on the arrow and do not append it.
            if (obj == NULL) {
                goto show_icon;
            }

            // Open CDB manager
            cdbManager->unused();
            if (!cdbManager->open(record)) {
                goto out;
            }

            // Get CDB metadata

            u32 dataSize;
            if (!cdbManager->getDataSize(record, &dataSize)) {
                return TRUE;
            }
            if (dataSize > 0x32000) {
                return TRUE;
            }

            CDBId cdbId;
            if (!System::getCdbManager()->getCDBId(record, &cdbId)) {
                return TRUE;
            }

            // Read CDB metadata
            u8* rbrData = new(obj->mpHeap, DEFAULT_ALIGN) u8[dataSize];
            if (rbrData == NULL) {
                return FALSE;
            }
            if (!cdbManager->read(record, rbrData, dataSize)) {
                delete[] rbrData;
                goto close;
            }

            result = TRUE;

            if (((RBRHeader*)rbrData)->magic == RBR_MAGIC && cdbManager->isValidHeader((RBRHeader*)rbrData)) {
                BOOL old3 = OSDisableInterrupts();

                if (recordDate == mCurrentDate) {
                    if (mbReading == true && mSearchRecord_Prev.created) {
                        mbReading = false;
                        delete[] rbrData;
                        OSRestoreInterrupts(old3);

                        return FALSE;
                    }

                    // Create on screen object
                    obj->create(mpLayoutFile, rbrData, recordGC, cdbId, recordKey, recordDate);
                    mObjList.append(obj);

                    CDBRecordGetCalendarTimeForce(record, &mSearchRecord_Next.year, &mSearchRecord_Next.month, &mSearchRecord_Next.day, &mSearchRecord_Next.hour, &mSearchRecord_Next.min, &mSearchRecord_Next.sec);
                    memcpy(&mSearchRecord_Next.key, &recordKey, sizeof(CDBRecordKey));

                    mSearchRecord_Next.created = true;
                    if (mSearchRecord_Prev.created == false) {
                        memcpy(&mSearchRecord_Prev, &mSearchRecord_Next, sizeof(SearchRecord));
                    }    
                }
                else {
                    result = FALSE;
                    delete[] rbrData;
                }

                OSRestoreInterrupts(old3);
            }
            else {
                delete[] rbrData;
            }

close:
            cdbManager->close(record);

hide_icon:
            if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                hide_licon();
            }
            else {
                hide_ricon();
            }

            goto out;

show_icon:
            if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                show_licon();
            }
            else {
                show_ricon();
            }

            result = FALSE;
            goto out;

error:
            result = FALSE;
out:
            return result;
        }

        void Board::stt_wait_cdb_init() {
            if ((System::createdAfterAndLibMgr() || (System::hasCreatedAfter() && System::isNandFull()) || (System::isSafeMode())) && System::getChannelManager()->isInitialized()) {
                System::getHomeButtonMenu()->enableLib();

                // Scene order = Button > Channel Select > Arrow
                createChildScene(SCENE_BUTTON, this, NULL);
                createChildScene(SCENE_CHANNEL_SELECT, this, NULL);
                createChildScene(SCENE_ARROW, this, NULL);

                // Read the records
                if (System::getCdbManager() != NULL) {
                    if (!System::getCdbManager()->isOverFlow()) {
                        exec_count_task();

                        mbDoReadTask = true;
                        System::getTask1()->request(read_task_, this, NULL);
                    }
                }

                mState = STATE_WAIT_INIT;
            }
        }

        void Board::stt_wait_init() {
            Arrow* arrow = get_arrow();
            if (arrow != NULL && arrow->isSceneCreated()) {
                System::getFader()->fadeIn();

                // Safe mode notice
                if (System::isSafeMode()) {
                    mState = STATE_DONE;
                    IPLWarnDisplay(MESG_BOARD_SAFE_MODE_NOTICE);

                    // Check if NAND full (for safe mode)
                    if (System::isNandFull()) {
                        mState = STATE_DONE;
                        IPLWarnDisplay(MESG_BOARD_NAND_FULL);

                        System::getFader()->fadeOut();

                        reserveAllSceneDestruction(SCENE_SETTING_BG);

                        mState = STATE_TO_SETTINGS;
                    }

                    return;
                }

                // Check if NAND full
                if (System::isNandFull()) {
                    mState = STATE_DONE;
                    IPLWarnDisplay(MESG_BOARD_NAND_FULL);

                    System::getFader()->fadeOut();

                    reserveAllSceneDestruction(SCENE_SETTING_BG);

                    mState = STATE_TO_SETTINGS;

                    return;
                }

                // Check if NWC24 failed to init from boot
                if (System::hasNWC24LibError()) {
                    mState = STATE_DONE;
                    IPLWarnDisplay(MESG_BOARD_CORRUPTED);

                    System::resetNWC24LibState();
                }

                // Check if failed to init RFL
                if (System::getMiiManager()->getInitResult() != RFLErrcode_Success) {
                    mState = STATE_DONE;
                    IPLWarnDisplay(MESG_BOARD_RFL_INIT_FAIL);
                }

                // If the CDB is overflown, back it up!
                if (System::getCdbManager()->isOverFlow()) {
                    System::getFader()->fadeIn();
                    System::backup_run();
                    after_backup();
                }

                if (System::requestedNewMailAnm()) {
                    get_button()->startNewMailAnm();
                }

                mState = STATE_WAIT_CHILD_DST;

                if (System::getPreviousRootSceneID() != SCENE_SD_BUTTON) {
                    System::startReceiveSchedule();
                }
            }
        }

        void Board::stt_wait_child_dst() {
            scene::Manager* scnMgr = System::getSceneManager();
            Button* button = static_cast<Button*>(scnMgr->getScene(SCENE_BUTTON));

            if (scnMgr->getScene(SCENE_CHANNEL_SELECT) == NULL
            && scnMgr->getScene(SCENE_CALENDAR) == NULL
            && scnMgr->getScene(SCENE_MAIL_ADDRESS_SELECT) == NULL
            && scnMgr->getReservedScene() == NULL) {
                if (!unk_0xFB4) {
                    if (mbFocusMode) {
                        mpLayoutFocusBg->getAnim(FOCUS_ANIM_OUT)->play();
                        mbFocusMode = false;
                    }

                    button->setEventHandler(this);

                    edge_arrow();
                    set_text_date();
                    enable_ricon();
                    enable_licon();

                    button->stopNewMailAnm();

                    mbPlayDispSound = true;

                    mState = STATE_NORMAL;
                }
            }
            else {
                if (static_cast<ChannelTitle*>(System::getScene(SCENE_CHANNEL_TITLE)) != NULL) {
                    if (static_cast<ChannelTitle*>(System::getScene(SCENE_CHANNEL_TITLE))->isInLaunching()) {
                        return;
                    }
                }

                if (scnMgr->getScene(SCENE_CHANNEL_SELECT) != NULL) {
                    if (mCurrentDate != utility::Date(System::getCurrentTime())) {
                        exec_count_task();
                        updateDate(System::getCurrentTime());
                        button->stopNewMailAnm();

                        return;
                    }
                }

                if (System::getNwc24Manager()->received()) {
                    exec_count_task();
                    System::getNwc24Manager()->prepNextReceive();
                    System::requestNewMailAnm();

                    return;
                }

                if (scnMgr->getScene(SCENE_CHANNEL_SELECT) != NULL && System::requestedNewMailAnm()
                && (mPrevMsgCount >= 0 && mMsgCount > 0 && mPrevMsgCount < mMsgCount)) {
                    mPrevMsgCount = mMsgCount;
                    button->startNewMailAnm();

                    return;
                }

                if (unk_0xFB8) {
                    unk_0xFB8 = 0;
                    button->startNewMailAnm();

                    return;
                }
            }
        }

        void Board::stt_wait_child_cst() {
            scene::Manager* scnMgr = System::getSceneManager();

            if (scnMgr->getScene(SCENE_CHANNEL_SELECT) != NULL
            || scnMgr->getScene(SCENE_CALENDAR) != NULL
            || scnMgr->getScene(SCENE_MAIL_ADDRESS_SELECT) != NULL) {
                mState = STATE_WAIT_CHILD_DST;
            }
        }

        void Board::stt_wait_scroll() {
            if (!mpLayoutBg->isPlaying(0) && !is_wait_to_clean_task() && !mbDoTaskDelete) {
                mpLayoutBg->getAnim()->initAnmFrame();
                set_text_date();
                mPreviousDate = mCurrentDate;
                return_to_freelist_if_diff_date();

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mHoveredObjs[i] = NULL;
                }

                scene::Manager* scnMgr = System::getSceneManager();

                if (scnMgr->getScene(SCENE_CALENDAR) != NULL
                || scnMgr->getScene(SCENE_CHANNEL_SELECT) != NULL
                || scnMgr->getReservedScene() != NULL) {
                    mState = STATE_WAIT_CHILD_DST;
                }
                else {
                    edge_arrow();
                    mState = STATE_NORMAL;
                }
            }
        }

        void Board::stt_normal() {
            if (unk_0xFB8) {
                unk_0xFB8 = 0;
            }

            Button* button = get_button();

            if (System::getCdbManager()->isOverFlow()) {
                if (mbDoReadTask) {
                    mbReading = true;
                }

                return_to_freelist();

                if (System::getCdbManager()->isSDMounted()) {
                    System::getCdbManager()->getSDWorker()->cleanup_cdb_backup_to_sd_async();
                }

                init_search_condition();

                mState = STATE_BACKUP;

                System::backup_run();
                after_backup();

                return;
            }

            if ((System::getNwc24Manager()->received() || System::requestedNewMailAnm()) && !mbDoReadTask) {
                BOOL result = mbRIconEnable;
                if (result) {
                    exec_count_task();
                    System::getNwc24Manager()->prepNextReceive();
                    System::stopRequestNewMailAnm();
                }
                else {
                    if (mObjList.getFreeCount() != 0) {
                        if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                            SearchRecord record;

                            memcpy(&record, &mSearchRecord_Prev, sizeof(SearchRecord));
                            memcpy(&mSearchRecord_Prev, &mSearchRecord_Next, sizeof(SearchRecord));
                            memcpy(&mSearchRecord_Next, &record, sizeof(SearchRecord));
                        }

                        memcpy(&mSearchRecord, &mSearchRecord_Next, sizeof(SearchRecord));

                        mSearchDirection = CDB_SEARCH_DIRECTION_RIGHT;

                        // Refresh
                        mbDoReadTask = true;
                        System::getTask1()->request(read_task_, this, NULL);

                        exec_count_task();

                        System::getNwc24Manager()->prepNextReceive();
                        System::stopRequestNewMailAnm();
                    }
                    else {
                        if (!result) {
                            if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                                memcpy(&mSearchRecord, &mSearchRecord_Prev, sizeof(SearchRecord));
                            }
                            else {
                                memcpy(&mSearchRecord, &mSearchRecord_Next, sizeof(SearchRecord));
                            }

                            // Refresh
                            mbDoReadTask = true;
                            System::getTask1()->request(fwd_search_task_, NULL, NULL);

                            exec_count_task();

                            System::getNwc24Manager()->prepNextReceive();
                            System::stopRequestNewMailAnm();
                        }
                    }
                }

                System::getNwc24Manager()->enableLedNotification(FALSE);

                // Stripped out code? Why else would they do this?

                System::getNwc24Manager()->enableLedNotification(TRUE);
            }

            if (mState == STATE_NORMAL && button->isActive()) {
                button->update();
            }

            if (mState == STATE_NORMAL) {
                controller::Interface* con = System::getMasterController();

                // Press minus
                if (con->down(controller::BTN_NEXT_LEFT)) {
                    if (mbLIconEnable) {
                        if (con->downTrg(controller::BTN_NEXT_LEFT)) {
                            if (mbDoReadTask) {
                                mbReading = true;
                            }
                            mState = STATE_INIT_LEFT_FADEAWAY;
                        }
                        return;
                    }

                    if (mCurrentDate != utility::Date::getMinDate()) {
                        cmn_start_scroll_l();
                        snd::getSystem()->startSE("WSD_SELECT");
                    }

                    return;
                }
                // Press plus
                else if (con->down(controller::BTN_NEXT_RIGHT)) {
                    if (mbRIconEnable) {
                        if (con->downTrg(controller::BTN_NEXT_RIGHT)) {
                            if (mbDoReadTask) {
                                mbReading = true;
                            }
                            mState = STATE_INIT_RIGHT_FADEAWAY;
                        }
                        return;
                    }

                    if (mCurrentDate != utility::Date::getMaxDate()) {
                        cmn_start_scroll_r();
                        snd::getSystem()->startSE("WSD_SELECT");
                    }

                    return;
                }

                // Update objects
                if (mState == STATE_NORMAL) {
                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        BoardObject* object = NULL;
                        OBJ_LIST_LOOP_ALT(object, {
                            if ((mHoveredObjs[i] == NULL || mHoveredObjs[i] == object) && mState == STATE_NORMAL) {
                                object->update(i);
                            }
                        });

                        if (System::getController(i) == NULL && mHoveredObjs[i] != NULL) {
                            object->start_left_event(i);
                            mHoveredObjs[i] = NULL;
                        }
                    }
                }
            }
        }

        void Board::stt_focus() {
            focus_object::result result = mpCurrentFocus->calc();

            switch (result) {
                case focus_object::RESULT_CLOSE: {
                    edge_arrow();
                    mpLayoutFocusBg->getAnim(FOCUS_ANIM_OUT)->play();
                    mbFocusMode = false;

                    break;
                }
                case focus_object::RESULT_CLOSE_DEL: {
                    for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                        if (mHoveredObjs[i] == mpCurrentFocus->mpBoardObj) {
                            mHoveredObjs[i] = NULL;
                        }
                    }

                    edge_arrow();
                    mpLayoutFocusBg->getAnim(FOCUS_ANIM_OUT)->play();
                    mbFocusMode = false;

                    BoardObject* object = mpCurrentFocus->mpBoardObj;
                    mbDoTaskDelete = true;

                    System::getTask1()->request(delete_task_, object, NULL);

                    break;
                }
                case focus_object::RESULT_REPLY: {
                    disable_ricon();
                    disable_licon();

                    createChildScene(SCENE_LETTER_WRITER, this, System::getScene(SCENE_BUTTON), (void*)LetterWriter::REPLY);

                    break;
                }
                case focus_object::RESULT_SEND_PICTURE: {
                    disable_ricon();
                    disable_licon();

                    createChildScene(SCENE_LETTER_WRITER, this, System::getScene(SCENE_BUTTON), (void*)LetterWriter::PICTURE);

                    break;
                }
                case focus_object::RESULT_INTERNET_SETTING: {
                    System::getFader()->fadeOut();

                    reserveAllSceneDestruction(SCENE_SETTING, (void*)Setting::ARG_INTERNET_SETTING);

                    mState = STATE_TO_SETTINGS;

                    break;
                }
                case focus_object::RESULT_INTERNET_PAGE: {
                    System::getFader()->fadeOut();

                    reserveAllSceneDestruction(SCENE_SETTING, (void*)Setting::ARG_INTERNET_PAGE);

                    mState = STATE_TO_SETTINGS;

                    break;
                }
                case focus_object::RESULT_SW_UPDATE: {
                    System::getFader()->fadeOut();

                    reserveAllSceneDestruction(SCENE_SETTING, (void*)Setting::ARG_UPDATE);

                    mState = STATE_TO_SETTINGS;

                    break;
                }
                case focus_object::RESULT_PARENTAL_REQ: {
                    createChildScene(SCENE_PARENTAL_DIALOG, this, NULL, (void*)ParentalDialog::TYPE_IPL);
                    break;
                }
                case focus_object::RESULT_CLOSE_AFTER: {
                    delete mpCurrentFocus;
                    mpCurrentFocus = NULL;

                    get_button()->setEventHandler(this);

                    mState = STATE_NORMAL;

                    break;
                }
                case focus_object::RESULT_CLOSE_AFTER_DEL: {
                    mState = STATE_AFTER_DEL;

                    break;
                }
                case focus_object::RESULT_CHJUMP: {
                    mpCurrentFocus->mpBoardObj->reset_gui();

                    delete mpCurrentFocus;
                    mpCurrentFocus = NULL;

                    get_button()->setEventHandler(this);

                    createChildScene(SCENE_CHANNEL_SELECT, this, System::getScene(SCENE_ARROW), (void*)2);

                    cmn_create_child(Button::IDANIM_FROM_BOARD_TO_CH_SEL);
                    updateDate(utility::Date(System::getCurrentTime()));

                    exec_count_task();

                    break;
                }
                default: {
                    return;
                }
            }
        }

        void Board::stt_after_del() {
            if (!mbDoTaskDelete) {
                BoardObject* object = mpCurrentFocus->mpBoardObj;

                object->destroy();
                mObjList.remove(object);

                delete mpCurrentFocus;
                mpCurrentFocus = NULL;

                if (!mbDoReadTask) {
                    if (mbLIconEnable) {
                        if (mSearchDirection == CDB_SEARCH_DIRECTION_RIGHT) {
                            SearchRecord record;

                            memcpy(&record, &mSearchRecord_Prev, sizeof(SearchRecord));
                            memcpy(&mSearchRecord_Prev, &mSearchRecord_Next, sizeof(SearchRecord));
                            memcpy(&mSearchRecord_Next, &record, sizeof(SearchRecord));
                        }

                        memcpy(&mSearchRecord, &mSearchRecord_Next, sizeof(SearchRecord));

                        mSearchDirection = CDB_SEARCH_DIRECTION_LEFT;

                        hide_licon();

                        // Refresh
                        mbDoReadTask = true;
                        System::getTask1()->request(read_task_, this, NULL);
                    }
                    else if (mObjList.getCount() == 0 && mbRIconEnable) {
                        init_search_condition();

                        mSearchDirection = CDB_SEARCH_DIRECTION_RIGHT;

                        // Refresh
                        mbDoReadTask = true;
                        System::getTask1()->request(read_task_, this, NULL);
                    }
                }

                exec_count_task();

                mState = STATE_NORMAL;

                get_button()->setEventHandler(this);
            }
        }

        void Board::stt_init_lfadeaway() {
            if (!mbDoReadTask) {
                if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                    memcpy(&mSearchRecord, &mSearchRecord_Next, sizeof(SearchRecord));
                }
                else {
                    memcpy(&mSearchRecord, &mSearchRecord_Prev, sizeof(SearchRecord));
                }

                mSearchDirection = CDB_SEARCH_DIRECTION_LEFT;

                OBJ_LIST_LOOP({
                    object->right_away();
                });

                snd::getSystem()->startSEwithPos("WIPL_SE_MSG_HOUSE", 300.0f);

                mState = STATE_INIT_FADEAWAY;
            }
        }

        void Board::stt_init_rfadeaway() {
            if (!mbDoReadTask) {
                if (mSearchDirection == CDB_SEARCH_DIRECTION_RIGHT) {
                    memcpy(&mSearchRecord, &mSearchRecord_Next, sizeof(SearchRecord));
                }
                else {
                    memcpy(&mSearchRecord, &mSearchRecord_Prev, sizeof(SearchRecord));
                }

                mSearchDirection = CDB_SEARCH_DIRECTION_RIGHT;

                OBJ_LIST_LOOP({
                    object->left_away();
                });

                snd::getSystem()->startSEwithPos("WIPL_SE_MSG_HOUSE", -300.0f);

                mState = STATE_INIT_FADEAWAY;
            }
        }

        void Board::stt_wait_fadeaway() {
            bool result = mbDoReadTask == false;
            OBJ_LIST_LOOP({
                result = (result & (!object->mbRightWay
                                && !object->mbLeftWay
                                && !object->mMoveAnim.isPlaying()
                                && object->mpLayout != NULL
                                && !object->mpLayout->getAnim(BoardObject::ANIM_NEXT_PAGE)->isPlaying())) != false
                        && object->mbModifiedPos == false;
            });

            if (result) {
                if (mSearchDirection == CDB_SEARCH_DIRECTION_LEFT) {
                    hide_licon();
                    show_ricon();
                }
                else {
                    hide_ricon();
                    show_licon();
                }

                memset(&mSearchRecord_Prev, 0, sizeof(SearchRecord));
                memset(&mSearchRecord_Next, 0, sizeof(SearchRecord));

                for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                    mHoveredObjs[i] = NULL;
                }

                return_to_freelist();

                mbDoReadTask = true;
                System::getTask1()->request(read_task_, this, NULL);

                mState = STATE_NORMAL;
            }
        }

        void Board::stt_wait_stand() {
            bool result = TRUE;

            OBJ_LIST_LOOP({
                result &= (object->mState == STATE_WAIT_CHILD_CST);
            });

            if (result) {
                mState = STATE_NORMAL;
            }
        }

        BOOL count_task_cb_(void* work, CDBRecord* record) {
            BOOL result = FALSE;

            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                char type[8] = "";
                CDBRecordGetTypeForce(record, type);

                if (System::getCdbManager()->isValidType(type)) {
                    board->countMessage();
                }

                result = TRUE;
            }

            return result;
        }

        void count_task_(void* work) {
            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                board->clearMsgCount();

                utility::Date current(System::getCurrentTime());

                CDBDate start = current.cdbDateBegin();
                CDBDate end = current.cdbDateEnd();

                cdb::Manager* cdbManager = System::getCdbManager();
                CDBRecordLocation location = cdbManager->isSDMounted() ? CDB_RECORD_LOCATION_ALL : CDB_RECORD_LOCATION_NAND;

                cdbManager->search(start, end, CDB_SEARCH_DIRECTION_RIGHT, location, 0, count_task_cb_, work);

                board->sendNewMessageAnimCount();
                board->doneCountTask();
            }
        }

        void Board::exec_count_task() {
            mbNewMsgAnimCount = false;
            mbDoCountTask = true;
            System::getTask1()->request(count_task_, this, NULL);
        }

        BOOL read_task_cb_(void* work, CDBRecord* record) {
            BOOL result = FALSE;
            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                result = board->appendRecord(record);
            }
            return result;
        }

        void read_task_(void* work) {
            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                CDBDate start, end;

                if (board->getSearchRecord().created) {
                    start = RECORD_DATE_TO_CDB(board->getSearchRecord());
                }
                else {
                    if (board->getSearchDirection() == CDB_SEARCH_DIRECTION_LEFT) {
                        start = DATE_TO_CDB_END(board->getDate());
                    }
                    else {
                        start = DATE_TO_CDB_BEGIN(board->getDate());
                    }
                }

                if (board->getSearchDirection() == CDB_SEARCH_DIRECTION_LEFT) {
                    end = DATE_TO_CDB_BEGIN(board->getDate());
                }
                else {
                    end = DATE_TO_CDB_END(board->getDate());
                }

                cdb::Manager* cdbManager = System::getCdbManager();
                CDBRecordLocation location = cdbManager->isSDMounted() ? CDB_RECORD_LOCATION_ALL : CDB_RECORD_LOCATION_NAND;

                cdbManager->search(start, end, board->getSearchDirection(), location, 0, read_task_cb_, work);

                board->clear_key_table();

                board->doneReadTask();
                board->doneReading();
            }
        }

        BOOL fwd_search_task_cb_(void* work, CDBRecord* record) {
            utility::Date date;
            int hour, min, sec;

            cdb::Manager* cdbManager = System::getCdbManager();

            BOOL result = TRUE;

            char recordType[8] = "";
            CDBRecordKey recordKey;

            Board* board = static_cast<Board*>(System::getScene(SCENE_BOARD));
            if (board != NULL) {
                CDBRecordGetCalendarTimeForce(record, &date.year, &date.month, &date.day, &hour, &min, &sec);
                CDBRecordGetKeyForce(record, &recordKey);
                CDBRecordGetTypeForce(record, recordType);

                if (!cdbManager->isValidType(recordType)) {
                    return TRUE;
                }
                else {
                    if (board->is_already_read(recordKey.keyString)) {
                        return TRUE;
                    }
                    else {
                        date.month++;
                        if (date == board->getDate()) {
                            board->show_ricon();
                            result = FALSE;
                        }
                    }
                }
            }

            return result;
        }

        void fwd_search_task_(void* work) {
            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                CDBDate start = RECORD_DATE_TO_CDB(board->getSearchRecord());
                CDBDate end = start = RECORD_DATE_TO_CDB_END(board->getSearchRecord());

                cdb::Manager* cdbManager = System::getCdbManager();
                CDBRecordLocation location = cdbManager->isSDMounted() ? CDB_RECORD_LOCATION_ALL : CDB_RECORD_LOCATION_NAND;

                cdbManager->search(start, end, CDB_SEARCH_DIRECTION_RIGHT, location, 0, fwd_search_task_cb_, NULL);

                board->doneReadTask();
            }
        }

        void delete_task_(void* work) {
            Board* board = static_cast<Board*>(System::getSceneManager()->getScene(SCENE_BOARD));
            if (board != NULL) {
                static_cast<BoardObject*>(work)->delete_record();
                board->doneDeleteTask();
            }
        }

        void Board::set_text_date() {
            utility::Date yesterday;
            utility::Calendar::getYesterday(mCurrentDate, &yesterday);
            utility::Date tomorrow;
            utility::Calendar::getTomorrow(mCurrentDate, &tomorrow);

            set_text_date(yesterday, "T_Day_a");
            set_text_date(mCurrentDate, "T_Day_b");
            set_text_date(tomorrow, "T_Day_c");
        }

        void Board::set_text_date(const utility::Date& date, const char* paneName) {
            #define TEXT_LENGTH 32

            wchar_t fullText[TEXT_LENGTH] = {0};
            memset(&fullText, 0, sizeof(fullText));

#if defined(VERSION_43J)
            get_text_jpn(date, fullText, TEXT_LENGTH);
#elif defined(VERSION_43U)
            switch (System::getLanguage()) {
                case SC_LANG_FRENCH: {
                    get_text_usafre(date, fullText, TEXT_LENGTH);
                    break;
                }
                case SC_LANG_SPANISH: {
                    get_text_spa(date, fullText, TEXT_LENGTH);
                    break;
                }
                default: {
                    get_text_usaeng(date, fullText, TEXT_LENGTH);
                    break;
                }
            }
#elif defined(VERSION_43E)
            switch (System::getLanguage()) {
                case SC_LANG_GERMAN: {
                    get_text_ger(date, fullText, TEXT_LENGTH);
                    break;
                }
                case SC_LANG_ITALIAN:
                case SC_LANG_FRENCH: {
                    get_text_paleng(date, fullText, TEXT_LENGTH);
                    break;
                }
                case SC_LANG_SPANISH:
                case SC_LANG_DUTCH: {
                    get_text_spa(date, fullText, TEXT_LENGTH);
                    break;
                }
                default: {
                    get_text_paleng(date, fullText, TEXT_LENGTH);
                    break;
                }
            }
#elif defined(VERSION_43K)
            get_text_kor(date, fullText, TEXT_LENGTH);
#endif

            nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayoutBg->FindPaneByName(paneName));
            textBox->SetString(fullText);

            #undef TEXT_LENGTH
        }

        static const u32 scWeekMsgId[] = {
            MESG_CALENDAR_MONDAY,
            MESG_CALENDAR_MONDAY,
            MESG_CALENDAR_TUESDAY,
            MESG_CALENDAR_WEDNESDAY,
            MESG_CALENDAR_THURSDAY,
            MESG_CALENDAR_FRIDAY,
            MESG_CALENDAR_SATURDAY
        };

        void Board::get_text_jpn(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);
            const wchar_t* sep1 = msgMgr->getMessage(MESG_CALENDAR_MONDAY);
            const wchar_t* sep2 = msgMgr->getMessage(MESG_CALENDAR_MONDAY);
            const wchar_t* weekStart = msgMgr->getMessage(MESG_CALENDAR_WEEK_START);
            const wchar_t* weekEnd = msgMgr->getMessage(MESG_CALENDAR_WEEK_END);

            swprintf(text, textLen, L"%d%ls%d%ls%ls%ls%ls", date.month, sep1, date.day, sep2, weekStart, week, weekEnd);
        }

        void Board::get_text_kor(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);
            const wchar_t* sep1 = msgMgr->getMessage(MESG_CALENDAR_MONDAY);
            const wchar_t* sep2 = msgMgr->getMessage(MESG_CALENDAR_MONDAY);
            const wchar_t* weekStart = msgMgr->getMessage(MESG_CALENDAR_WEEK_START);
            const wchar_t* weekEnd = msgMgr->getMessage(MESG_CALENDAR_WEEK_END);

            swprintf(text, textLen, L"%d%ls %d%ls%ls%ls%ls", date.month, sep1, date.day, sep2, weekStart, week, weekEnd);
        }

        void Board::get_text_spa(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);

            swprintf(text, textLen, L"%ls %02d-%02d", week, date.day, date.month);
        }

        void Board::get_text_ger(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);
            const wchar_t* weekStart = msgMgr->getMessage(MESG_CALENDAR_WEEK_START);
            const wchar_t* weekEnd = msgMgr->getMessage(MESG_CALENDAR_WEEK_END);

            swprintf(text, textLen, L"%02d.%02d.%ls%ls%ls", date.day, date.month, weekStart, week, weekEnd);
        }

        void Board::get_text_usaeng(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);

            swprintf(text, textLen, L"%ls %d/%d", week, date.month, date.day);
        }

        void Board::get_text_usafre(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);

            swprintf(text, textLen, L"%ls %02d-%02d", week, date.month, date.day);
        }

        void Board::get_text_paleng(const utility::Date& date, wchar_t* text, u32 textLen) {
            message::Manager* msgMgr = System::getMessageManager();
            const wchar_t* week = msgMgr->getMessage(scWeekMsgId[utility::Calendar::getWeek(date)]);

            swprintf(text, textLen, L"%ls %02d/%02d", week, date.day, date.month);
        }

        void Board::show_ricon() {
            u8 prev = mbRIconEnable;
            mbRIconEnable = true;

            scene::Manager* scnMgr = System::getSceneManager();

            if (scnMgr->getScene(SCENE_CHANNEL_SELECT) == NULL
            && scnMgr->getScene(SCENE_CALENDAR) == NULL
            && scnMgr->getScene(SCENE_MAIL_ADDRESS_SELECT) == NULL
            && scnMgr->getReservedScene() == NULL) {
                if (mState == STATE_NORMAL || (mState == STATE_PINCH || mState == STATE_INIT_LEFT_FADEAWAY || mState == STATE_INIT_RIGHT_FADEAWAY || mState == STATE_INIT_FADEAWAY)) {
                    if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && prev != mbRIconEnable) {
                        get_button()->animation(Button::IDANIM_RIGHT_ARROW_SHOW_LETTER);
                        if (!get_button()->isArrowVisible(Button::ARROW_BTN_RIGHT)) {
                            get_button()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                        }
                    }
                }
            }
        }

        void Board::hide_ricon() {
            u8 prev = mbRIconEnable;
            mbRIconEnable = false;

            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && prev != mbRIconEnable) {
                edge_arrow();
                get_button()->animation(Button::IDANIM_RIGHT_ARROW_HIDE_LETTER);
            }
        }

        void Board::show_licon() {
            bool prev = mbLIconEnable;
            mbLIconEnable = true;

            scene::Manager* scnMgr = System::getSceneManager();

            if (scnMgr->getScene(SCENE_CHANNEL_SELECT) == NULL
            && scnMgr->getScene(SCENE_CALENDAR) == NULL
            && scnMgr->getScene(SCENE_MAIL_ADDRESS_SELECT) == NULL
            && scnMgr->getReservedScene() == NULL) {
                if (mState == STATE_NORMAL || (mState == STATE_PINCH || mState == STATE_INIT_LEFT_FADEAWAY || mState == STATE_INIT_RIGHT_FADEAWAY || mState == STATE_INIT_FADEAWAY)) {
                    if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && prev != mbLIconEnable) {
                        get_button()->animation(Button::IDANIM_LEFT_ARROW_SHOW_LETTER);
                        if (!get_button()->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                            get_button()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                        }
                    }
                }
            }
        }

        void Board::hide_licon() {
            bool prev = mbLIconEnable;
            mbLIconEnable = false;

            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && prev != mbLIconEnable) {
                edge_arrow();
                get_button()->animation(Button::IDANIM_LEFT_ARROW_HIDE_LETTER);
            }
        }

        void Board::enable_ricon() {
            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && mbRIconEnable == true) {
                get_button()->animation(Button::IDANIM_RIGHT_ARROW_SHOW_LETTER);
                if (!get_button()->isArrowVisible(Button::ARROW_BTN_RIGHT)) {
                    get_button()->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                }
            }
        }

        void Board::disable_ricon() {
            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && mbRIconEnable == true) {
                get_button()->animation(Button::IDANIM_RIGHT_ARROW_HIDE_LETTER);
            }
        }

        void Board::enable_licon() {
            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && mbLIconEnable == true) {
                get_button()->animation(Button::IDANIM_LEFT_ARROW_SHOW_LETTER);
                if (!get_button()->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                    get_button()->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                }
            }
        }

        void Board::disable_licon() {
            if (System::getSceneManager()->getScene(SCENE_BUTTON) != NULL && mbLIconEnable == true) {
                get_button()->animation(Button::IDANIM_LEFT_ARROW_HIDE_LETTER);
            }
        }

        void Board::appear_arrow() {
            Button* button = get_button();

            if (!button->isArrowVisible(Button::ARROW_BTN_RIGHT)) {
                button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
            }
            if (!button->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
            }
        }

        void Board::disappear_arrow() {
            Button* button = get_button();

            if (button->isArrowVisible(Button::ARROW_BTN_RIGHT)) {
                button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
            }
            if (button->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
            }
        }

        void Board::edge_arrow() {
            Button* button = get_button();

            if (System::getScene(SCENE_CHANNEL_SELECT) == NULL && System::getReservedScene() == NULL) {
                if (mState == STATE_WAIT_CHILD_CST) {
                    return;
                }

                enable_licon();
                enable_ricon();

                if (mCurrentDate == utility::Date::getMaxDate()) {
                    if (button->isArrowVisible(Button::ARROW_BTN_RIGHT) && mbRIconEnable != true) {
                        button->animation(Button::IDANIM_ARROW_RIGHT_DISAPPEAR);
                    }
                    if (!button->isArrowVisible(Button::ARROW_BTN_LEFT)) {
                        button->animation(Button::IDANIM_ARROW_LEFT_APPEAR);
                    }
                }
                else {
                    if (mCurrentDate == utility::Date::getMinDate()) {
                        if (button->isArrowVisible(Button::ARROW_BTN_LEFT) && mbLIconEnable != true) {
                            button->animation(Button::IDANIM_ARROW_LEFT_DISAPPEAR);
                        }
                        if (!button->isArrowVisible(Button::ARROW_BTN_RIGHT)) {
                            button->animation(Button::IDANIM_ARROW_RIGHT_APPEAR);
                        }
                    }
                    else {
                        appear_arrow();
                    }
                }
            }
        }

        void Board::return_to_freelist() {
            while (TRUE) {
                BoardObject* object = mObjList.getNext(NULL);
                if (object == NULL) {
                    break;
                }

                object->destroy();
                mObjList.remove(object);
            }
        }

        void Board::return_to_freelist_if_diff_date() {
            BoardObject* object = mObjList.getNext(NULL);
            goto start_loop;
            while (TRUE) {
                BoardObject* tmp = mObjList.getNext(object);

                if (object->mBoardDate != mCurrentDate) {
                    object->destroy();
                    mObjList.remove(object);
                }

                object = tmp;
            start_loop:
                if (object == NULL) {
                    break;
                }
            }
        }

        int Board::get_date_label(const utility::Date& date) {
            int ret = 1;

            if (date < mPreviousDate) {
                ret = 0;
            }
            else if (date > mPreviousDate) {
                ret = 2;
            }

            return ret;
        }

        void Board::init_search_condition() {
            memset(mKeyTable, 0, sizeof(mKeyTable));

            memset(&mSearchRecord_Next, 0, sizeof(mSearchRecord_Next));
            memset(&mSearchRecord_Prev, 0, sizeof(mSearchRecord_Prev));
            memset(&mSearchRecord, 0, sizeof(mSearchRecord));

            hide_ricon();
            hide_licon();

            mSearchDirection = CDB_SEARCH_DIRECTION_LEFT;
        }

        void Board::set_key_table() {
            int i = 0;

            OBJ_LIST_LOOP({
                strncpy((char*)mKeyTable[i++], object->mCDBRecordKey.keyString, sizeof(object->mCDBRecordKey.keyString));
            });
        }

        BOOL Board::is_exist_diff_date() const {
            bool result = false;

            OBJ_LIST_LOOP({
                result |= (object->mBoardDate != mCurrentDate);
            });

            return result;
        }

        void Board::calc_board_object() {
            nw4r::lyt::Pane* pane = mpLayoutBg->FindPaneByName("N_TopBack");

            OBJ_LIST_LOOP({
                nw4r::lyt::Pane* posPane = mpLayoutBg->FindPaneByName(scScrollPane[get_date_label(object->mBoardDate)]);

                math::VEC3 pos;
                nw4r::math::VEC3Add(&pos, &pane->GetTranslate(), &posPane->GetTranslate());

                object->calc(math::VEC2(pos.x, pos.y));
            });
        }

        void Board::cmn_create_child(int buttonAnim) {
            Button* button = get_button();

            button->reserveAnm(buttonAnim);

            disappear_arrow();
            disable_ricon();
            disable_licon();

            button->setEventHandler(NULL);

            snd::getSystem()->startSE("WIPL_SE_DECIDE");

            mState = STATE_WAIT_CHILD_CST;
        }

        void Board::cmn_start_scroll_r() {
            utility::Date newDate;
            utility::Calendar::getTomorrow(mCurrentDate, &newDate);

            mPreviousDate = mCurrentDate;
            mCurrentDate = newDate;

            cmn_start_scroll(0);

            mState = STATE_WAIT_SCROLL;
        }

        void Board::cmn_start_scroll_l() {
            utility::Date newDate;
            utility::Calendar::getYesterday(mCurrentDate, &newDate);

            mPreviousDate = mCurrentDate;
            mCurrentDate = newDate;

            cmn_start_scroll(1);

            mState = STATE_WAIT_SCROLL;
        }

        void Board::cmn_start_scroll_r_hi(const utility::Date& date) {
            mPreviousDate = mCurrentDate;
            mCurrentDate = date;

            cmn_start_scroll(0);

            set_text_date(date, "T_Day_c");

            mState = STATE_WAIT_SCROLL;
        }

        void Board::cmn_start_scroll_l_hi(const utility::Date& date) {
            mPreviousDate = mCurrentDate;
            mCurrentDate = date;

            cmn_start_scroll(1);

            set_text_date(date, "T_Day_a");

            mState = STATE_WAIT_SCROLL;
        }

        void Board::cmn_start_scroll(int animId) {
            layout::Animator* anim = mpLayoutBg->getAnim();

            anim->setMinFrame(scAnmFrame[animId].start);
            anim->setMaxFrame(scAnmFrame[animId].end);
            anim->setAnimType(ANIM_TYPE_FORWARD);
            anim->play();

            init_search_condition();

            mbDoReadTask = true;
            System::getTask1()->request(read_task_, this, NULL);
        }

        BOOL Board::is_wait_to_clean_task() const {
            bool result = false;

            OBJ_LIST_LOOP({
                result |= object->mbCleaned;
            });

            return result;
        }

        BOOL Board::is_already_read(const char* recordKey) const {
            bool result = false;

            OBJ_LIST_LOOP({
                if (strncmp(object->mCDBRecordKey.keyString, recordKey, CDB_RECORD_KEY_STRING_LEN) == 0) {
                    result = true;
                    break;
                }
            });

            return result;
        }

        BOOL Board::is_exist_keytbl(const char* recordKey) const {
            bool result = false;

            for (int i = 0; i < OBJECTS_ON_SCREEN; i++) {
                if (strncmp((char*)mKeyTable[i], recordKey, CDB_RECORD_KEY_STRING_LEN) == 0) {
                    result = true;
                }
            }

            return result;
        }

        void Board::after_backup() {
            if (System::getCdbManager()->isSDMounted()) {
                mBoardSD.setState(2);
            }
            else {
                System::getCdbManager()->getSDWorker()->mount_sd_async();
                mBoardSD.setState(0);
            }

            exec_count_task();

            mbDoReadTask = true;
            System::getTask1()->request(read_task_, this, NULL);
        }

        int Board::getFriendInfo(NWC24FriendInfo* info) const {
            NWC24FriendInfo readInfo ALIGN32;
            u32 index;

            nwc24::Manager* nwc24Mgr = System::getNwc24Manager();

            int result = FRIEND_CODE_ERR_NWC24;

            if (nwc24Mgr->open()) {
                NWC24FriendAddr boardAddr = mpCurrentFocus->mpBoardObj->get_addr();

                switch(mpCurrentFocus->mpBoardObj->get_addr_type()) {
                    case NWC24_FRIENDTYPE_WII: {
                        if (nwc24Mgr->searchFriendInfo(boardAddr.wiiId, &index)) {
                            nwc24Mgr->readFriendInfo(&readInfo, index);
                            *info = readInfo;

                            if (info->attr.status == NWC24_FRIENDSTATUS_CONFIRMED) {
                                result = FRIEND_CODE_ERR_SUCCESS;
                            }
                            else {
                                result = FRIEND_CODE_ERR_UNAVAILABLE;
                            }
                            break;
                        }
                        else {
                            result = FRIEND_CODE_ERR_UNAVAILABLE;
                        }
                        break;
                    }
                    case NWC24_FRIENDTYPE_EMAIL: {
                        if (nwc24Mgr->searchFriendInfo(&boardAddr, &index)) {
                            nwc24Mgr->readFriendInfo(&readInfo, index);
                            *info = readInfo;

                            if (info->attr.status == NWC24_FRIENDSTATUS_CONFIRMED) {
                                result = FRIEND_CODE_ERR_SUCCESS;
                            }
                            else {
                                result = FRIEND_CODE_ERR_UNAVAILABLE;
                            }
                            break;
                        }
                        else {
                            result = FRIEND_CODE_ERR_UNAVAILABLE;
                        }
                        break;
                    }
                }

                nwc24Mgr->close();
            }

            return result;
        }

        const GXTexObj& Board::getPictureTexObj() const {
            return mpCurrentFocus->mPicture.texObj;
        }

        const void* Board::getPicture(u32* picLength) const {
            return RBRUtility::getPicture(mpCurrentFocus->mpBoardObj->mpRecordData, picLength);
        }

        int Board::getPictureWidth() const {
            return mpCurrentFocus->mPicture.width;
        }

        int Board::getPictureHeight() const {
            return mpCurrentFocus->mPicture.height;
        }

        void Board::onEventDerived(u32 compId, u32 event, const controller::Interface* con) {
            gui::PaneComponent* component = static_cast<gui::PaneComponent*>(mpManager->getComponent(compId));
            const char* paneName = component->getPane()->GetName();

            switch (event) {
                case ON_TRIG: {
                    if (!mbDoTaskDelete && !is_wait_to_clean_task() && con->downTrg(controller::BTN_INTERACT)) {
                        Button* button = get_button();
                        Arrow* arrow = get_arrow();

                        if (mState == STATE_NORMAL && Button::cmpButtonName(paneName, Button::BTN_CH_SEL) == 0) {
                            createChildScene(SCENE_CHANNEL_SELECT, this, arrow, (void*)1);
                            cmn_create_child(Button::IDANIM_FROM_BOARD_TO_CH_SEL);

                            updateDate(utility::Date(System::getCurrentTime()));
                            exec_count_task();
                        }
                        else if (mState == STATE_NORMAL && Button::cmpButtonName(paneName, Button::BTN_CALENDAR) == 0) {
                            createChildScene(SCENE_CALENDAR, this, button);
                            cmn_create_child(Button::IDANIM_FROM_BOARD_TO_CALENDAR);

                            button->setText("T_CalExit", MESG_CMN_BACK);

                            mpLayoutFocusBg->getAnim(FOCUS_ANIM_IN)->play();

                            mbFocusMode = true;
                        }
                        else if (mState == STATE_NORMAL && Button::cmpButtonName(paneName, Button::BTN_CREATE) == 0) {
                            createChildScene(SCENE_MAIL_ADDRESS_SELECT, this, button);
                            cmn_create_child(Button::IDANIM_FROM_BOARD_TO_MAIL_SEL);

                            button->reserveAnm(Button::IDANIM_APPEAR_LEFT_BUTTON);
                            button->setText("T_CalExit", MESG_CMN_BACK);

                            mpLayoutFocusBg->getAnim(FOCUS_ANIM_IN)->play();

                            mbFocusMode = true;
                        }
                        else if (mState == STATE_NORMAL && Button::cmpButtonName(paneName, Button::BTN_ARROW_RIGHT) == 0) {
                            if (mbRIconEnable) {
                                if (mbDoReadTask) {
                                    mbReading = true;
                                }
                                mState = STATE_INIT_RIGHT_FADEAWAY;
                                button->animation(Button::IDANIM_ARROW_RIGHT_SELECT);
                            }
                            else {
                                if (mCurrentDate != utility::Date::getMaxDate()) {
                                    button->animation(Button::IDANIM_ARROW_RIGHT_SELECT);
                                    cmn_start_scroll_r();
                                    snd::getSystem()->startSE("WSD_SELECT");
                                }
                            }
                        }
                        else if (mState == STATE_NORMAL && Button::cmpButtonName(paneName, Button::BTN_ARROW_LEFT) == 0) {
                            if (mbLIconEnable) {
                                if (mbDoReadTask) {
                                    mbReading = true;
                                }
                                mState = STATE_INIT_LEFT_FADEAWAY;
                                button->animation(Button::IDANIM_ARROW_LEFT_SELECT);
                            }
                            else {
                                if (mCurrentDate != utility::Date::getMinDate()) {
                                    button->animation(Button::IDANIM_ARROW_LEFT_SELECT);
                                    cmn_start_scroll_l();
                                    snd::getSystem()->startSE("WSD_SELECT");
                                }
                            }
                        }
                    }
                    break;
                }
            }
        }

        void Board::reopen_log() {
            cdb::Manager* cdbManager = System::getCdbManager();

            if (mCurrentDate == utility::Date(System::getCurrentTime())) {
                BoardObject* logObj = get_log_obj();
                if (logObj != NULL) {
                    logObj->destroy();

                    CDBRecord record;
                    if (!mbDoReadTask && cdbManager->findByKey(&record, &logObj->mCDBRecordKey)) {
                        cdbManager->unused2();

                        if (cdbManager->open(&record)) {
                            cdb::auto_closer autocloser(cdbManager, &record);

                            u32 dataSize;
                            if (!cdbManager->getDataSize(&record, &dataSize)) {
                                return;
                            }

                            u8* recordData = new(logObj->mpHeap, DEFAULT_ALIGN) u8[dataSize];
                            if (recordData == NULL) {
                                logObj->destroy();
                                mObjList.remove(logObj);

                                return;
                            }

                            if (!cdbManager->read(&record, recordData, dataSize)) {
                                logObj->destroy();
                                mObjList.remove(logObj);

                                delete[] recordData;

                                return;
                            }

                            logObj->create(mpLayoutFile, recordData, logObj->mCDBGameCode, logObj->mCDBId, logObj->mCDBRecordKey, logObj->mBoardDate);
                        }
                    }
                }
            }
        }

        BoardObject* Board::get_log_obj() {
            BoardObject* logObj = NULL;

            OBJ_LIST_LOOP({
                if (object->mRecordType == RBRRecordType_PlayTimeLog) {
                    logObj = object;
                    break;
                }
            });

            return logObj;
        }

        Board::ObjList::ObjList() : 
        mObjects() {
            nw4r::ut::List_Init(&mUsedObjs, offsetof(BoardObject, mLinkNode));
            nw4r::ut::List_Init(&mFreeObjs, offsetof(BoardObject, mLinkNode));

            for (int i = 0; i < OBJECTS_ON_SCREEN; i++) {
                nw4r::ut::List_Append(&mFreeObjs, &mObjects[i]); // Append blank data
            }
        }

        Button* Board::get_button() {
            return static_cast<Button*>(System::getScene(SCENE_BUTTON));
        }

        Arrow* Board::get_arrow() {
            return static_cast<Arrow*>(System::getScene(SCENE_ARROW));
        }
    }
}
