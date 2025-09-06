#include "system/iplKeyboard.h"

#include "iplSystem.h"
#include "iplSound.h"

#include <revolution/wpad.h>

#include <nw4r/lyt.h>

#include <eztx.h>

namespace ipl {
    namespace keyboard {
        static EZTXStaticTable sZiSysLangTable[EZTX_LANG_MAX+1] = {
            { 0x3B000000, NULL },
            { 0x3A000000, NULL },
            { 0x3F000000, NULL },
            { 0x05000000, NULL },
            { 0x2F000000, NULL },
            { 0x42000000, NULL },
            { 0x41000000, NULL },
            { 0x40000000, NULL },
            { 0x0D000000, NULL },
            { 0x01000000, NULL },
            { 0x00000000, NULL },
        };

        static EZTXStaticTable sZiOemLangTable[EZTX_LANG_MAX+1] = {
            { 0x3B000000, NULL },
            { 0x3A000000, NULL },
            { 0x3F000000, NULL },
            { 0x05000000, NULL },
            { 0x2F000000, NULL },
            { 0x42000000, NULL },
            { 0x41000000, NULL },
            { 0x40000000, NULL },
            { 0x0D000000, NULL },
            { 0x01000000, NULL },
            { 0x00000000, NULL },
        };

        static int getFirstController() {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                if (System::getController(i) != NULL) {
                    return i;
                }
            }
            return 0;
        }

        void EventObserver::onCommand(textinput::CommandReceiver::INPUT_COMMAND command, void* data) {
            if (command == textinput::CommandReceiver::INPUT_COMMAND_37 && ((u32*)data)[0] == 0) {
                mpKeyboardMgr->touchFormInDisp(((u32**)data)[1][0]);
            }
        }

        void EventObserver::onSE(textinput::sound::SE seId) {
            switch (seId) {
                case textinput::sound::SE_LANGUAGE_SWITCHING: {
                    snd::getSystem()->startSE("WIPL_SE_SK_SWITCHING_02");
                    break;
                }
                case textinput::sound::SE_SELECT: {
                    mpKeyboardMgr->doRumble();
                    snd::getSystem()->startSE("WIPL_SE_CHAR_FOCUS");
                    break;
                }
                case textinput::sound::SE_CHAR_DELETE: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_DELETE");
                    break;
                }
                case textinput::sound::SE_CHAR_DELETE_ERROR: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_DELETE_ERROR");
                    break;
                }
                case textinput::sound::SE_CHAR_DECIDE: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_DECIDE");
                    break;
                }
                case textinput::sound::SE_CHAR_INPUT: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_INPUT");
                    break;
                }
                case textinput::sound::SE_LINE_SCROLL: {
                    snd::getSystem()->startSE("WIPL_SE_LINE_SCROLL");
                    break;
                }
                case textinput::sound::SE_CHAR_CURSOR: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_CURSOR");
                    break;
                }
                case textinput::sound::SE_CHAR_CURSOR_FIX: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_CURSOR_FIX");
                    break;
                }
                case textinput::sound::SE_KETAI_MODE_SWITCHING: {
                    snd::getSystem()->startSE("WIPL_SE_SK_SWITCHING_02");
                    break;
                }
                case textinput::sound::SE_SYMBOL_PAGE_OPEN:
                case textinput::sound::SE_LANGUAGE_PAGE_OPEN: {
                    snd::getSystem()->startSE("WIPL_SE_SYMBOL_PAGE_OPEN");
                    break;
                }
                case textinput::sound::SE_15: {
                    snd::getSystem()->startSE("WSD_SELECT");
                    break;
                }
                case textinput::sound::SE_PREDICT_ON: {
                    snd::getSystem()->startSE("WIPL_SE_SK_PREDICT_ON");
                    break;
                }
                case textinput::sound::SE_PREDICT_OFF: {
                    snd::getSystem()->startSE("WIPL_SE_SK_PREDICT_OFF");
                    break;
                }
                case textinput::sound::SE_CHAR_LARGER: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_LARGER");
                    break;
                }
                case textinput::sound::SE_CHAR_LOWER: {
                    snd::getSystem()->startSE("WIPL_SE_CHAR_LOWER");
                    break;
                }
                case textinput::sound::SWITCH_TO_KEYBOARD: {
                    snd::getSystem()->startSE("WIPL_SE_SK_SWITCHING_01");
                    break;
                }
                case textinput::sound::SWITCH_TO_KETAI: {
                    snd::getSystem()->startSE("WIPL_SE_SK_SWITCH_TO_KETAI");
                    break;
                }
                case textinput::sound::SE_BT_TARGETTING: {
                    mpKeyboardMgr->doRumble();
                    snd::getSystem()->startSE("WIPL_SE_BT_TARGETTING");
                    break;
                }
                case textinput::sound::SE_DECIDE: {
                    snd::getSystem()->startSE("WIPL_SE_DECIDE");
                    break;
                }
                case textinput::sound::SE_MESSAGE_SCROLL: {
                    snd::getSystem()->holdSE("WIPL_SE_MESSAGE_SCROLL");
                    break;
                }
                default: {
                    break;
                }
            }
        }

        void EventObserver::onOK() {
            mpKeyboardMgr->ok();
        }

        void EventObserver::onCancel() {
            mpKeyboardMgr->cancel();
        }

        void Manager::create(nand::File* file, EGG::Heap* heap) {
            // Open arc
            nw4r::lyt::ArcResourceLink* arcLink = new(heap, CLASS_HEAP) nw4r::lyt::ArcResourceLink();
            arcLink->Set(file->getBuffer(), "arc");
            nw4r::lyt::MultiArcResourceAccessor* multiArc = new(heap, CLASS_HEAP) nw4r::lyt::MultiArcResourceAccessor();
            multiArc->Attach(arcLink);

            nw4r::lyt::FontRefLink wbf1Public;
            nw4r::lyt::FontRefLink wbf1Private;

            // Open bitmap font 1
            wbf1Public.Set("WiiBitmapFontType1.brfnt", System::getWBFont1Data());
            multiArc->RegistFont(&wbf1Public);
            wbf1Private.Set("RevoIpl_RodinNTLGPro_DB_32_I4.brfnt", System::getWBFont1Data());
            multiArc->RegistFont(&wbf1Private);

            nw4r::lyt::FontRefLink wbf2Public;
            nw4r::lyt::FontRefLink wbf2Private;

            // Open bitmap font 2
            wbf2Public.Set("WiiBitmapFontType2.brfnt", System::getWBFont2Data());
            multiArc->RegistFont(&wbf2Public);
            wbf2Private.Set("RevoIpl_UtrilloProGrecoStd_M_32_I4.brfnt", System::getWBFont2Data());
            multiArc->RegistFont(&wbf2Private);

            // Allocators
            EGG::Allocator* allocator = new(heap, CLASS_HEAP) EGG::Allocator(heap, CLASS_HEAP);
            nw4r::lyt::Layout::SetAllocator(allocator);

            u8* systemDict = NULL;
            u8* oemDict = NULL;

            // Zi dictionaries
#ifdef USE_ZI8
            for (int i = 0; i < EZTX_LANG_MAX; i++) {
                if (systemDict == NULL && System::getZiSystemDicData(i) != NULL) {
                    systemDict = System::getZiSystemDicData(i);
                }
                if (oemDict == NULL && System::getZiSystemDicData(i) != NULL) {
                    oemDict = System::getZiOemDicData(i);
                }
            }
#endif // USE_ZI8

#ifdef USE_ZI8
            for (int i = 0; i < 10; i++) {
                u8* usedSystemDict = System::getZiSystemDicData(i);
                u8* usedOemDict = System::getZiOemDicData(i);

                if (usedSystemDict == NULL) {
                    usedSystemDict = systemDict;
                }
                if (usedOemDict == NULL) {
                    usedOemDict = oemDict;
                }

                sZiSysLangTable[i].dictData = usedSystemDict;
                sZiOemLangTable[i].dictData = usedOemDict;
            }
#endif // USE_ZI8

            // Save data
            mSaveData = System::getSaveData()->getMemoSetting();

            // Memo manager
            mpManager = new(heap, CLASS_HEAP) textinput::MemoManager(allocator, multiArc, &mEvent);
            mpManager->setSaveData(mSaveData);
            mpManager->create(NULL);
            mEvent.setManager(this);

            // Destination
            switch (System::getRegion()) {
                case SC_PRODUCT_AREA_JPN: {
                    mpManager->setDestination(textinput::DST_JP);
                    break;
                }
                case SC_PRODUCT_AREA_USA: {
                    mpManager->setDestination(textinput::DST_US);
                    break;
                }
                case SC_PRODUCT_AREA_EUR: {
                    mpManager->setDestination(textinput::DST_EU);
                    break;
                }
                case SC_PRODUCT_AREA_CHN: {
                    mpManager->setDestination(textinput::DST_CN);
                    break;
                }
                case SC_PRODUCT_AREA_KOR: {
                    mpManager->setDestination(textinput::DST_KR);
                    break;
                }
                default: {
                    mpManager->setDestination(textinput::DST_US);
                    break;
                }
            }

            // Language
            setLanguage(System::getLanguage());

            // Force JP for Japanese builds
#ifdef JAPANESE_BUILD
            mpManager->setDestination(textinput::DST_JP);
            mpManager->setLanguage(textinput::JP);
#endif // JAPANESE_BUILD
        }

        void Manager::init() {
            mpManager->init();

            // Init state
            mState.type = textinput::MemoManager::ST_Hidden;
            mState.iplType = HIDDEN;
            mState.wcString = NULL;

            // Refresh aspect ratio
            changeAspectRatio();

            // Init USB keyboard input
            textinput::input::HKBManager::getInstance().Initialize();
        }

        void Manager::changeAspectRatio() {
            nw4r::ut::Rect projRect;

            if ((u32)(SCGetAspectRatio() & 0xFF) == SC_ASPECT_RATIO_16x9) {
                System::getProjectionRect16x9(&projRect);
                mpManager->setAspectRatio(false);
            }
            else {
                System::getProjectionRect4x3(&projRect);
                mpManager->setAspectRatio(true);
            }

            projCenter.x = projRect.GetWidth() / 2;
            projCenter.y = projRect.GetHeight() / 2;
        }

        void Manager::calc() {
            // Clean up
            if (mpSaveFile != NULL && System::getSaveData()->isFinished(mpSaveFile)) {
                delete mpSaveFile;
                mpSaveFile = NULL;
            }

            mpManager->calc();

            textinput::MemoManager::StateType prevStateType = mState.type;
            mState.type = mpManager->getState()->getStateType();

            // State handling
            if (prevStateType == textinput::MemoManager::ST_Hidden && mState.type == textinput::MemoManager::ST_Appearing) {
                mState.iplType = APPEARING;
                mState.pressOK = false;
            }
            else if (prevStateType == textinput::MemoManager::ST_Appearing && mState.type == textinput::MemoManager::ST_Visible) {
                mState.iplType = VISIBLE;
                mState.pressOK = false;
            }
            else if (prevStateType == textinput::MemoManager::ST_Visible && mState.type == textinput::MemoManager::ST_Disappearing) {
                mState.iplType = DISAPPEARING;
            }
            else if (prevStateType == textinput::MemoManager::ST_Disappearing && mState.type == textinput::MemoManager::ST_Hidden) {
                mState.iplType = HIDDEN_AFTER_DISAPEAR;
            }
            else {
                mState.iplType = HIDDEN;
            }

            mState.wcString = mpManager->getWCString();

            if (mbActivated) {
                // Update USB Keyboard input
                textinput::input::HKBManager::getInstance().Update();
                mpManager->updateInput(textinput::input::HKBManager::getInstance());

                mCurrentConChan = getFirstController();
                controller::Interface* con = System::getController(mCurrentConChan);

                if (con == NULL) {
                    mpManager->updateInput(0, IPL_MATH_NULL_FLOAT, IPL_MATH_NULL_FLOAT, 0, 0, 0);
                }
                else {
                    KPADStatus* kpadStatus = con->getKPADStatus();
                    nw4r::math::VEC2 conProjPos = con->getDpdProjectionPos();

                    // Classic controller inputs

                    // One press button
                    u32 trig = kpadStatus->trig;
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_A) {
                        trig |= WPAD_BUTTON_A;
                    }
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_UP) {
                        trig |= WPAD_BUTTON_UP;
                    }
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_DOWN) {
                        trig |= WPAD_BUTTON_DOWN;
                    }
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_LEFT) {
                        trig |= WPAD_BUTTON_LEFT;
                    }
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_RIGHT) {
                        trig |= WPAD_BUTTON_RIGHT;
                    }
                    if (con->getClassicTrigFlag() & WPAD_BUTTON_CL_MINUS) {
                        trig |= WPAD_BUTTON_MINUS;
                    }

                    // Hold button
                    u32 hold = kpadStatus->hold;
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_A) {
                        hold |= WPAD_BUTTON_A;
                    }
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_UP) {
                        hold |= WPAD_BUTTON_UP;
                    }
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_DOWN) {
                        hold |= WPAD_BUTTON_DOWN;
                    }
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_LEFT) {
                        hold |= WPAD_BUTTON_LEFT;
                    }
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_RIGHT) {
                        hold |= WPAD_BUTTON_RIGHT;
                    }
                    if (con->getClassicHoldFlag() & WPAD_BUTTON_CL_MINUS) {
                        hold |= WPAD_BUTTON_MINUS;
                    }

                    // Release button
                    u32 release = kpadStatus->release;
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_A) {
                        release |= WPAD_BUTTON_A;
                    }
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_UP) {
                        release |= WPAD_BUTTON_UP;
                    }
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_DOWN) {
                        release |= WPAD_BUTTON_DOWN;
                    }
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_LEFT) {
                        release |= WPAD_BUTTON_LEFT;
                    }
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_RIGHT) {
                        release |= WPAD_BUTTON_RIGHT;
                    }
                    if (con->getClassicReleaseFlag() & WPAD_BUTTON_CL_MINUS) {
                        release |= WPAD_BUTTON_MINUS;
                    }

                    nw4r::ut::Rect projRect;
                    System::getProjectionRect(&projRect);

                    if ((projRect.left > conProjPos.x || conProjPos.x > projRect.right)
                    || (projRect.top > conProjPos.y && conProjPos.y > projRect.bottom)) {
                        conProjPos.y = IPL_MATH_NULL_FLOAT;
                        conProjPos.x = IPL_MATH_NULL_FLOAT;
                    }

                    if (kpadStatus->wpad_err == 0) {
                        f32 posX = conProjPos.x;
                        f32 posY = conProjPos.y;
                        mpManager->updateInput(0, posX, -posY, trig, hold, release);
                    }
                    else {
                        mpManager->updateInput(0, IPL_MATH_NULL_FLOAT, IPL_MATH_NULL_FLOAT, trig, hold, release);
                    }
                }
            }
        }

        void Manager::draw() {
            mpManager->draw();
            GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);
        }

        void Manager::memoDraw() {
            mpManager->memoDraw();
        }

        void Manager::setKeyboardType(int chan, KeyboardType type) {
            mCurrentConChan = chan;
            mCurrentConChan = getFirstController();
            setConfigure(type);
        }

        void Manager::start(int chan, const KeyboardSetting& setting) {
            // Settings
            setKeyboardType(chan, setting.type);
            if (setting.wcString == NULL) {
                mpManager->setWCString(L"");
            }
            else {
                mpManager->setWCString(setting.wcString);
            }
            mpManager->limitStringLength(setting.stringLimit);
            mpManager->limitRowNum(setting.rowLimit);
            mpManager->setTitleText(L"");
            mpManager->changeState(textinput::extend::memo::Manager::STL_Transition);

            // Open!
            snd::getSystem()->startSE("WIPL_SE_SK_OPEN");
            mbActivated = true;
        }

        void Manager::ok() {
            mState.pressOK = true;
            mpManager->changeState(textinput::extend::memo::Manager::STL_Transition);
            snd::getSystem()->startSE("WIPL_SE_SK_DECIDE_CLOSE");

            if (mpManager->getConfigType() == textinput::extend::memo::Manager::CT_Letter || mpManager->getConfigType() == textinput::extend::memo::Manager::CT_PhotoLetter) {
                doSave();
            }
        }

        void Manager::cancel() {
            mState.pressOK = false;
            mpManager->changeState(textinput::extend::memo::Manager::STL_Transition);
            snd::getSystem()->startSE("WIPL_SE_SK_CANCEL_CLOSE");

            if (mpManager->getConfigType() == textinput::extend::memo::Manager::CT_Letter || mpManager->getConfigType() == textinput::extend::memo::Manager::CT_PhotoLetter) {
                doSave();
            }
        }

        void Manager::doRumble() {
            controller::Interface* con = System::getController(mCurrentConChan);
            if (con != NULL) {
                con->rumble(1);
            }
        }

        void Manager::setWCString(const wchar_t* wcString) {
            if (wcString != NULL) {
                mpManager->setWCString(wcString);
            }
        }

        void Manager::setLanguage(u32 language) {
            switch (language) {
                case SC_LANG_JAPANESE: {
                    mpManager->setLanguage(textinput::JP);
                    break;
                }
                case SC_LANG_GERMAN: {
                    mpManager->setLanguage(textinput::DE);
                    break;
                }
                case SC_LANG_FRENCH: {
                    mpManager->setLanguage(textinput::FR);
                    break;
                }
                case SC_LANG_SPANISH: {
                    mpManager->setLanguage(textinput::SP);
                    break;
                }
                case SC_LANG_ITALIAN: {
                    mpManager->setLanguage(textinput::IT);
                    break;
                }
                case SC_LANG_DUTCH: {
                    mpManager->setLanguage(textinput::NL);
                    break;
                }
                case SC_LANG_SIMP_CHINESE: {
                    mpManager->setLanguage(textinput::CN);
                    break;
                }
                case SC_LANG_KOREAN: {
                    mpManager->setLanguage(textinput::KR);
                    break;
                }
                case SC_LANG_ENGLISH: {
                    if ((u32)System::getRegion() == SC_PRODUCT_AREA_EUR) {
                        mpManager->setLanguage(textinput::UK);
                    }
                    else {
                        mpManager->setLanguage(textinput::USA);
                    }
                    break;
                }
                default: {
                    mpManager->setLanguage(textinput::USA);
                    break;
                }
            }
        }

#ifdef JAPANESE_BUILD
        const char* predictionJP[] = {
            "http://",
            "www.",
            ".jp",
            ".co",
            ".com",
            ".net",
            "https://",
            ".ne",
            ".or",
            ".org",
            ".html",
            ".htm",
            "index"
        };
#endif // JAPANESE_BUILD

        void Manager::setConfigure(KeyboardType type) {
            mpManager->enableCompatibleFilter(true);

            switch (type) {
                case DEFAULT: {
                    mpManager->configDefault();
                    break;
                }
                case LETTER: {
                    mpManager->configLetter();
                    break;
                }
                case PHOTO_LETTER: {
                    mpManager->configPhotoLetter();
                    break;
                }
                case NUMERIC: {
                    mpManager->configNumeric();
                    break;
                }
                case NORMAL_WITHOUT_LINEFEED: {
                    mpManager->configNormalWithoutLineFeed();
                    break;
                }
                case NORMAL_WITHOUT_LINEFEED_WITH_SIGN: {
                    mpManager->configNormalWithoutLineFeedWithSign();
                    break;
                }
                case NORMAL_BIGTEXT_WITHOUT_LINEFEED: {
                    mpManager->configNormalBigTextWithoutLineFeed();
                    break;
                }
                case ONLY_QWERTY_WITHOUT_LINEFEED_AND_SIGN: {
                    mpManager->configOnlyQwertyWithoutLineFeedAndSign();
                    break;
                }
                case ONLY_QWERTY_BIGTEXT_WITHOUT_LINEFEED_AND_SIGN: {
                    mpManager->configOnlyQwertyBigTextWithoutLineFeedAndSign();
                    break;
                }
                case NUMERIC_WITH_DOT: {
                    mpManager->configNumericWithDot();
                    break;
                }
                case NUMERIC_BIGTEXT_WITH_DOT: {
                    mpManager->configNumericBigTextWithDot();
                    break;
                }
                case NORMAL_BIGTEXT_WITHOUT_LINEFEED_WITH_SIGN: {
                    mpManager->configNormalBigTextWithoutLineFeedWithSign();
                    break;
                }
                case NUMERIC_WITH_SEPERATOR: {
                    mpManager->configNumericWithSeparator();
                    break;
                }
                case PREDICT_WITHOUT_LINEFEED: {
                    mpManager->configPredictWithoutLineFeed();
                    break;
                }
                default: {
                    mpManager->configDefault();
                    break;
                }
            }
#ifdef JAPANESE_BUILD
            mpManager->setDefaultPredictionJP(ARRSIZE(predictionJP), predictionJP);
#endif // JAPANESE_BUILD
        }

        void Manager::doSave() {
            textinput::extend::savedata::MemoSetting newSaveData = mpManager->getSaveData();
            textinput::extend::savedata::MemoSetting oldSaveData = mSaveData;
            BOOL canSave = memcmp(&newSaveData, &oldSaveData, sizeof(textinput::extend::savedata::MemoSetting)) == 0 && mpSaveFile == NULL;
        
            if (canSave) {
                mSaveData = newSaveData;
                System::getSaveData()->setMemoSetting(mSaveData);
                mpSaveFile = System::getSaveData()->flushAsync(System::getMem2App());
            }
        }

        void Manager::touchFormInDisp(int unused) {
            mpManager->changeState(textinput::extend::memo::Manager::STL_Transition);
            snd::getSystem()->startSE("WIPL_SE_SK_OPEN");
            mbActivated = true;
        }

        void Manager::sendRelease() {
            mpManager->updateInput(0, IPL_MATH_NULL_FLOAT, IPL_MATH_NULL_FLOAT, 0, 0, 0);
        }

        void* Manager::getZiSystemDic() {
            return sZiSysLangTable;
        }

        void* Manager::getZiOemDic() {
            return sZiOemLangTable;
        }

        Manager::State* Manager::getState() {
            return &mState;
        }
    }
}
