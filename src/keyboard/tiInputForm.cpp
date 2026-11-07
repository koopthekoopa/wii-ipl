#include "keyboard/tiInputForm.h"

#include "keyboard/tiDebug.h"
#include "keyboard/tiLayoutGather.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiUtil.h"

#include <revolution/kbd/hidtypes.h>

#include <cwchar>
#include <new>

namespace textinput {
    namespace inputform {

        // struct AnimationFile {
        //     u32 id;
        //     char fileName[0x40];
        // };
        typedef wchar_t URLCheck[10];
        // struct PaneToAnimation {
        //     s32 type;
        //     char paneName[20];
        //     u32 count;
        //     const char* forceAddName;
        //     const AnimationFile* pAnims[8];
        // };
        // struct PaneToAnimation {
        //     u32 type;                         // 0x00
        //     const char* paneName;             // 0x04
        //     u32 count;                        // 0x08
        //     const char* forceAddName;         // 0x0C
        //     const AnimationFile* pAnims[12];  // 0x10
        // };

        static nw4r::ut::Color csUnInputedWCharColor(0xC8, 0x32, 0x32, 0xFF);
        static nw4r::ut::Color csCharColor(0x14, 0x14, 0x14, 0xFF);
        static nw4r::ut::Color csZiStringColorLeft(0xFF, 0x32, 0x32, 0xFF);
        static nw4r::ut::Color csZiStringNonSelectColorRight(0xC0, 0xC0, 0xC0, 0xFF);
        static nw4r::ut::Color csZiStringColorRight(0x32, 0x64, 0x32, 0xFF);
        static nw4r::ut::Color csUnderlateColor(0x64, 0xC8, 0xC8, 0xFF);
        static nw4r::ut::Color csUnInputedWCharColorSpace(0xFF, 0x14, 0x14, 0xFF);
        f32 lbl_81698D1C = 0.0f;

        extern const VisiblePane csVisiblePaneUEJ;
        extern const VisiblePane csVisiblePaneKOR;
        extern const VisiblePane csVisiblePaneCHN;
        extern const LanguageDependencyData csLanguageDependencyDataUEJ;
        extern const LanguageDependencyData csLanguageDependencyDataKOR;
        extern const LanguageDependencyData csLanguageDependencyDataCHN;
        extern const AnimationFile csAninationFile[];
        extern PaneToAnimation csPaneToAnimation[];  // lbl_8165C840
        extern const char* lbl_816973A0;

        static GXColor lbl_81697398 = {0x80, 0xFF, 0x80, 0xFF};
        static GXColor lbl_8169739C = {0xFF, 0xD2, 0x0C, 0xFF};

        const char* lbl_816973A0 = "P_txtScrll_UP";

        enum InputFormAnimId {
            ANIMID_NORMAL = 0,
            ANIMID_FOCUS_IN,
            ANIMID_FOCUS_OUT,
            ANIMID_ROLL_OVER,
            ANIMID_PUSHED,
            ANIMID_FADE_IN,
            ANIMID_FADE_OUT,
            ANIMID_OFF,
        };
        const AnimationFile csAninationFile[] = {
            {ANIMID_NORMAL, "fs_VK_textBox_a_normal.brlan"},       {ANIMID_FOCUS_IN, "fs_VK_textBox_a_Foucus_IN.brlan"},
            {ANIMID_FOCUS_OUT, "fs_VK_textBox_a_Focus-OUT.brlan"}, {ANIMID_ROLL_OVER, "fs_VK_textBox_a_Roll_over.brlan"},
            {ANIMID_PUSHED, "fs_VK_textBox_a_Pushed.brlan"},       {ANIMID_FADE_IN, "fs_VK_textBox_a_Fade_IN.brlan"},
            {ANIMID_FADE_OUT, "fs_VK_textBox_a_Fade_OUT.brlan"},   {ANIMID_OFF, "fs_VK_textBox_a_Off.brlan"},
        };
        // clang-format off
        PaneToAnimation csPaneToAnimation[] = {
            {0, "P_txtScrll_UP",   8, 0, {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5], &csAninationFile[6], &csAninationFile[7]}},
            {0, "P_txtScrll_DOWN", 8, lbl_816973A0, {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5], &csAninationFile[6], &csAninationFile[7]}},
        };
        // clang-format on
        const VisiblePane csVisiblePaneUEJ = {1, 2, {"N_JPNUSAEUR", NULL, NULL, NULL}, {"N_KOR", "N_CHN", NULL, NULL}};
        const VisiblePane csVisiblePaneKOR = {1, 2, {"N_KOR", NULL, NULL, NULL}, {"N_CHN", "N_JPNUSAEUR", NULL, NULL}};
        const VisiblePane csVisiblePaneCHN = {1, 2, {"N_CHN", NULL, NULL, NULL}, {"N_KOR", "N_JPNUSAEUR", NULL, NULL}};

        const LanguageDependencyData csLanguageDependencyDataUEJ = {&csVisiblePaneUEJ, "N_separateBarAll", "T_2l_TextBox", "T_title_textJPN"};
        const LanguageDependencyData csLanguageDependencyDataKOR = {&csVisiblePaneKOR, "N_separateBarKOR", "T_2l_TextBoxKOR", "T_title_textKOR"};
        const LanguageDependencyData csLanguageDependencyDataCHN = {&csVisiblePaneCHN, "N_separateBarCHN", "T_2l_TextBoxCHN", "T_title_textCHN"};
        const URLCheck pppURLCheck[2] = {L"http://", L"https://"};

        struct CompatibleCharList {
            wchar_t chars[0x10];
        };
        CompatibleCharList compatibleCharList = {L"¤¬¯²³¶¸¹¼½¾ÐÞðþ"};

        bool DeadKeyStream::sbCompatibleFilterEnabled = true;
        bool mbHyphen = true;

        bool charIsIncompatible(wchar_t ch) {
            CompatibleCharList compatList = compatibleCharList;

            if (ch < compatList.chars[0] || ch > compatList.chars[14]) {
                return true;
            }

            for (int i = 0; i < 15; i++) {
                if (ch == compatList.chars[i]) {
                    return false;
                }
            }
            return true;
        }

        EditBuffer::~EditBuffer() {
            if (mpString) {
                mpString->~Decolated();
                MEMFreeToAllocator(mpAllocator, mpString);
            }

            if (mpUnfixString) {
                mpUnfixString->~WithAtok();
                MEMFreeToAllocator(mpAllocator, mpUnfixString);
            }

            if (mpZiString) {
                mpZiString->~WithZi();
                MEMFreeToAllocator(mpAllocator, mpZiString);
            }

            mpString = NULL;
            mpUnfixString = NULL;
            mpZiString = NULL;
        }
        void EditBuffer::create(MEMAllocator* alloc) {
            void* allocated;

            mpAllocator = alloc;

            allocated = MEMAllocFromAllocator(alloc, sizeof(tistring::Decolated));
            mpString = new (allocated) tistring::Decolated(0x400);
            mpString->create(alloc);

            allocated = MEMAllocFromAllocator(alloc, sizeof(tistring::WithAtok));
            mpUnfixString = new (allocated) tistring::WithAtok(0x400);
            mpUnfixString->create(alloc);

            allocated = MEMAllocFromAllocator(alloc, sizeof(tistring::WithZi));
            mpZiString = new (allocated) tistring::WithZi(0x400);
            mpZiString->create(alloc);
        }

        wchar_t DeadKeyStream::ToIndependentClass(wchar_t ch) {
            if (ch < 0x300 || ch > 0x330)
                return ch;
            switch (ch) {
                case L'\u0300':
                    return L'`';
                case L'\u0301':
                    return L'´';
                case L'\u0302':
                    return L'^';
                case L'\u0303':
                    return L'~';
                case L'\u0308':
                    return L'¨';
                case L'\u030D':
                    return L'\'';
                case L'\u030E':
                    return L'"';
                case L'\u0327':
                    return L'¸';

                case L'\u0304':
                case L'\u0305':
                case L'\u0306':
                case L'\u0307':
                case L'\u0309':
                case L'\u030A':
                case L'\u030B':
                case L'\u030C':
                case L'\u030F':
                case L'\u0310':
                case L'\u0311':
                case L'\u0312':
                case L'\u0313':
                case L'\u0314':
                case L'\u0315':
                case L'\u0316':
                case L'\u0317':
                case L'\u0318':
                case L'\u0319':
                case L'\u031A':
                case L'\u031B':
                case L'\u031C':
                case L'\u031D':
                case L'\u031E':
                case L'\u031F':
                case L'\u0320':
                case L'\u0321':
                case L'\u0322':
                case L'\u0323':
                case L'\u0324':
                case L'\u0325':
                case L'\u0326':
                default:
                    return ch;
            }
        }

        wchar_t DeadKeyStream::ToCombineClass(Language lang, wchar_t ch) {
            switch (lang) {
                case DE:
                    if (ch == L'´')
                        return L'\u0301';
                    if (ch == L'`')
                        return L'\u0300';
                    break;

                case FR:
                    if (ch == L'^')
                        return L'\u0302';
                    if (ch == L'¨')
                        return L'\u0308';
                    break;

                case SP:
                    if (ch == L'`')
                        return L'\u0300';
                    if (ch == L'´')
                        return L'\u0301';
                    if (ch == L'^')
                        return L'\u0302';
                    if (ch == L'~')
                        return L'\u0303';
                    if (ch == L'¨')
                        return L'\u0308';
                    break;

                case 7:
                    if (ch == L'`')
                        return L'\u0300';
                    if (ch == L'^')
                        return L'\u0302';
                    if (ch == L'~')
                        return L'\u0303';
                    if (ch == L'\'')
                        return L'\u030d';
                    if (ch == L'"')
                        return L'\u030e';
                    break;

                default:
                    break;
            }
            return ch;
        }

        Base::Info_* Base::RowInfoManager::create(MEMAllocator* allocator) {
            mpAllocator = allocator;
            mpInfo = (Info_*)MEMAllocFromAllocator(allocator, (mMaxLength + 2) * sizeof(Info_));

            init();
            return findFree();
        }
        inline Base::Info_* Base::RowInfoManager::findFree() {
            return mpInfo[mpInfo[mMaxLength].getNext()].accquire(this);
        }
        void Base::RowInfoManager::init() {
            for (u16 i = 0; i < mMaxLength; i++) {
                mpInfo[i].initAt(i);
            }

            mpInfo[getMaxLen()].insert(this, mMaxLength - 1, 0);

            Info_* usedRoot = getIdx(getMaxLen() + 1);
            usedRoot->setBack(getMaxLen() + 1);
            usedRoot->setNext(getMaxLen() + 1);

            // Don't inline
            (void*)0;
            (void*)0;
            (void*)0;
            (void*)0;
            (void*)0;
            (void*)0;
        }

        void Base::setCursorPos(tistring::Decolated* string, u32 newPos) {
            string->setCursorPos(newPos);
        }

        Base::Base(Manager* manager)
            : CommandReceiver(), mRect(), mpString(NULL), mpUnfixString(NULL), mpZiString(NULL), meInputMode(IM_Direct), mePredictMode(PM_USEn),
              mbPredictOn(false), mbDoWordWrap(true), mbRightWithSpace(true), mfCursorX(0.0f), mfCursorY(0.0f), mfScrollX(0.0f), mfScrollY(0.0f),
              mScrollAnm(), mfSustainTimer(0.0f), meScrollFlag(SF_NoScroll), muWordWrapCounter(0), muLimitStringLength(0x400), muLimitRowNum(9999),
              mfCursorTimer(0.0f), muGlobalAlpha(0xFF), mCharColor(0xFFFFFFFF), mpAllocator(NULL), mpManager(manager), mDKStream(), meLanguage(USA),
              mbZuSelected(false), mbCursorSelected(false), mriManager(muLimitStringLength), mpCursorLine(NULL), mCursorLinePos(0), mbLineDraw(true),
              muSpecifyLineDrawCount(0), muCursorTimer(0) {
        }

        Base::~Base() {
        }

        void Base::init() {
            textinput::Base::init();

            meInputMode = IM_Direct;
            mfCursorX = 0.0f;
            mfCursorY = 0.0f;
            mfScrollX = 0.0f;
            mfScrollY = 0.0f;
            mfSustainTimer = 0.0f;
            mfCursorTimer = 0.0f;
            muGlobalAlpha = 0xff;

            mDKStream.init();

            SetFixedWidth(GetFont()->GetWidth());
            EnableFixedWidth(false);

            enableSpaceByRight(true);

            mpManager->getHWKeyboard()->resetQuotes();
            mpUnfixString->resetRelation();

            updateCandidateState_();
            dirtyDrawCache();
            dirtyCursorCache();

            setScrollOffsetY(mfScrollY);
        }

        bool Base::isEditMode() {
            switch (mePredictMode) {
                default:
                    if (!mpZiString->isFix())
                        return false;
                case 0:
                case 1:
                    return true;
            }
        }

        bool Base::checkHeadOfSentence(bool a) {
            u8 cmdData[1];
            onCommand(INPUT_COMMAND_32, cmdData);
            if (cmdData[0])
                return false;

            bool movedLeft = false;

            if (mpString->getCursorPos() < 1)
                return true;

            if (a != 0) {
                switch (mpString->getWCharAtCursor()) {
                    case L'\n':
                    case L' ':
                        break;
                    default:
                        return false;
                }
                movedLeft = mpString->moveCursorLeft();
            }
            bool isAtHeadOfSentence = mpString->atTheBeginningOfASentence();
            if (movedLeft != 0) {
                movedLeft = mpString->moveCursorRight();
            }
            return isAtHeadOfSentence;
        }

        void Base::setDestination(Destination destination) {
            meDestination = destination;
        }
        void Base::setLanguage(Language language) {
            meLanguage = language;
            switch (language) {
                case JP:
                    setPredictMode(PM_Atok);
                    return;
                case USA:
                    setPredictMode(PM_USEn);
                    return;
                case UK:
                    setPredictMode(PM_En);
                    return;
                case DE:
                    setPredictMode(PM_De);
                    return;
                case IT:
                    setPredictMode(PM_It);
                    return;
                case NL:
                    setPredictMode(PM_Nl);
                    return;
                case SP:
                    if (meDestination == DST_EU)
                        setPredictMode(PM_Sp);
                    else
                        setPredictMode(PM_USSp);
                    return;
                case FR:
                    if (meDestination == DST_EU)
                        setPredictMode(PM_Fr);
                    else
                        setPredictMode(PM_USFr);
                    return;
                case CN:
                    setPredictMode(PM_Cn);
                    return;
                case KR:
                    setPredictMode(PM_Kr);
                    return;
                default:
                    return;
            }
        }

        void Base::setPredictMode(PredictMode predictMode) {
            switch (meDestination) {
                case DST_EU:
                    if (predictMode == PM_En)
                        break;
                    if (predictMode == PM_De)
                        break;
                    if (predictMode == PM_Fr)
                        break;
                    if (predictMode == PM_Sp)
                        break;
                    if (predictMode == PM_It)
                        break;
                    if (predictMode == PM_Nl)
                        break;
                    return;
                case DST_JP:
                    if (predictMode == PM_Atok)
                        break;
                    return;
                case DST_US:
                    if (predictMode == PM_USEn)
                        break;
                    if (predictMode == PM_USFr)
                        break;
                    if (predictMode == PM_USSp)
                        break;
                    return;
                case DST_CN:
                    if (predictMode == PM_Cn)
                        break;
                    return;
                case DST_KR:
                    if (predictMode == PM_Kr)
                        break;
                    return;
                default:
                    break;
            }

            CommandReceiver::ChangePredictMode cmdData;
            onCommand(INPUT_COMMAND_GET_PREDICT_MODE, &cmdData);
            cmdData.ePredictMode = predictMode;
            onCommand(INPUT_COMMAND_SET_PREDICT_MODE, &cmdData);
        }

        Base::PredictMode Base::getPredictMode() {
            CommandReceiver::ChangePredictMode cmdData;
            onCommand(INPUT_COMMAND_GET_PREDICT_MODE, &cmdData);
            return (Base::PredictMode)cmdData.ePredictMode;
        }

        void Base::commitZi_() {
            wchar_t ziInput[0x40];
            mpZiString->getCurrentInput(ziInput, 0x40);
            mpString->getCursorPos();
            mpString->inputString(ziInput);
            mpString->getCursorPos();
            mpZiString->clearCandidates();
            mbZuSelected = false;

            getCurrentString(false);

            if (mpZiString != NULL && meLanguage == CN) {
                mpZiString->setCurrentWord(NULL);
                mpZiString->update();
                updateCandidateState_();
            }
        }
        void Base::onCommand(INPUT_COMMAND command, void* data) {
            CommandReceiver::onCommand(command, data);
            tistring::Decolated* currString = getCurrentString(false);
            bool currStringIsMpString = currString == mpString;
            switch (command) {
                case INPUT_COMMAND_40: {
                    if (currString == mpUnfixString) {
                        if (LayoutGather::Singleton::getInstance().isHoldingShift()) {
                            onPressUp();
                        } else {
                            onPressDown();
                        }
                        return;
                    }

                    mDKStream.putSpace(L' ');
                    if (mDKStream.getAvailable() == 0) {
                        onSE(sound::SE_CHAR_INPUT);
                    }

                    if (getCurrentString(false) == mpUnfixString) {
                        mpUnfixString->isConverting();
                    }

                    while (true) {
                        wchar_t ch = mDKStream.getChar();
                        if (DeadKeyStream::isCompatibleFilterEnabled()) {
                            while (!charIsIncompatible(ch)) {
                                ch = mDKStream.getChar();
                            }
                        }
                        if (ch == L'\0')
                            break;

                        if (hasZiCandidates_()) {
                            inputCharZi_(ch, 0);
                        } else {
                            inputCharDefault_(ch, 0);
                        }
                    }
                    break;
                }

                case INPUT_COMMAND_0: {
                    Command0Data* dataCmd0;
                    dataCmd0 = (Command0Data*)data;
                    wchar_t ch = dataCmd0->ch;
                    u32 inputFlags = dataCmd0->inputFlags;

                    typedef struct SavedTranslateMode {
                        tistring::Decolated::TranslateMode translateMode;
                        bool isNone;
                        bool isHira;
                    } SavedTranslateMode;
                    SavedTranslateMode currStringModes;
                    SavedTranslateMode pcKeyboardModes;

                    if (dataCmd0->bCopyTranslateModes) {
                        pcKeyboardModes.translateMode = (tistring::Decolated::TranslateMode)mpManager->getPCKeyboard()->getTranslateMode();
                        pcKeyboardModes.isHira =
                            (tistring::Decolated::TranslateMode)mpManager->getPCKeyboard()->getTranslateMode() == tistring::Decolated::TM_NONE;
                        pcKeyboardModes.isNone = (tistring::Decolated::TranslateMode)mpManager->getPCKeyboard()->getTranslateMode() ==
                                                 tistring::Decolated::TM_ROMAJI_HIRAGANA;

                        tistring::Decolated* currString = getCurrentString(false);

                        currStringModes.translateMode = currString->getTranslateMode();
                        if (currString == mpString) {
                            tistring::Decolated::TranslateMode translateMode = pcKeyboardModes.translateMode;
                            if (meLanguage == KR) {
                                if (pcKeyboardModes.translateMode != tistring::Decolated::TM_NONE) {
                                    translateMode = tistring::Decolated::TM_ROMAJI_KANAFIX;
                                }
                            } else if (meLanguage == CN) {
                                translateMode = tistring::Decolated::TM_NONE;
                            }

                            mpString->getCursorPos();
                            mpString->setTranslateMode(translateMode);
                            mpString->getCursorPos();
                        } else {
                            currString->setTranslateMode(pcKeyboardModes.translateMode);
                        }

                        bool useAtok = !mbPredictOn ? false : mePredictMode == PM_Atok;
                        if (useAtok) {
                            currStringModes.isHira = false;
                            currStringModes.isNone = false;
                            mpUnfixString->setFixMode(pcKeyboardModes.isHira);
                            mpUnfixString->changeKanaMode(pcKeyboardModes.isNone);
                        }
                    }
                    if (dataCmd0->bUseCombiningAccents) {
                        ch = DeadKeyStream::ToCombineClass(meLanguage, ch);
                    }

                    mDKStream.putSpace(ch);
                    if (mDKStream.getAvailable() == 0) {
                        onSE(sound::SE_CHAR_INPUT);
                    }

                    if (getCurrentString(false) == mpUnfixString) {
                        mpUnfixString->isConverting();
                    }

                    while (true) {
                        wchar_t ch = mDKStream.getChar();
                        if (DeadKeyStream::isCompatibleFilterEnabled()) {
                            while (!charIsIncompatible(ch)) {
                                ch = mDKStream.getChar();
                            }
                        }
                        if (ch == L'\0')
                            break;

                        if (hasZiCandidates_()) {
                            inputCharZi_(ch, inputFlags);
                        } else {
                            inputCharDefault_(ch, inputFlags);
                        }
                    }

                    if (currString == mpZiString) {
                        mbZuSelected = false;
                    }
                    if (dataCmd0->bCopyTranslateModes) {
                        tistring::Decolated* currString = getCurrentString(false);

                        if (currString == mpString) {
                            tistring::Decolated::TranslateMode tVar19 = currStringModes.translateMode;
                            if (meLanguage == KR) {
                                if (currStringModes.translateMode != 0) {
                                    tVar19 = tistring::Decolated::TM_ROMAJI_KANAFIX;
                                }
                            } else if (meLanguage == CN) {
                                tVar19 = tistring::Decolated::TM_NONE;
                            }

                            mpString->getCursorPos();
                            mpString->setTranslateMode(tVar19);
                            mpString->getCursorPos();
                        } else {
                            currString->setTranslateMode(currStringModes.translateMode);
                        }

                        bool useAtok = !mbPredictOn ? false : mePredictMode == PM_Atok;
                        if (useAtok) {
                            mpUnfixString->setFixMode(currStringModes.isHira);
                            mpUnfixString->changeKanaMode(currStringModes.isNone);
                        }
                    }
                    if (checkHeadOfSentence(true)) {
                        onCommand(INPUT_COMMAND_33, NULL);
                    }
                    break;
                }

                case INPUT_COMMAND_1: {
                    if (currString->canBackSpace()) {
                        onSE(sound::SE_CHAR_DELETE);
                    } else {
                        onSE(sound::SE_CHAR_DELETE_ERROR);
                    }

                    if (currString == mpString) {
                        mpManager->getHWKeyboard()->resetQuotes();

                        mpUnfixString->resetRelation();
                        updateCandidateState_();

                        mpString->getCursorPos();
                        mpString->backSpace();
                        if (mpManager->getCellPhoneKeyboard() != NULL) {
                            mpManager->getCellPhoneKeyboard()->resetHoldingButton();
                        }
                        mpString->getCursorPos();

                        getCurrentString(false);
                        currString = mpZiString;
                        if (mpZiString != NULL && meLanguage == CN) {
                            mpZiString->setCurrentWord(NULL);
                            mpZiString->update();
                            updateCandidateState_();
                        }
                    } else if (currString == mpZiString) {
                        mbZuSelected = false;
                        currString->backSpace();
                        if (mpManager->getCellPhoneKeyboard() != NULL) {
                            mpManager->getCellPhoneKeyboard()->resetHoldingButton();
                        }
                    } else {
                        if (!mpUnfixString->isConverting()) {
                            mpUnfixString->backSpace();
                            if (mpManager->getCellPhoneKeyboard() != NULL) {
                                mpManager->getCellPhoneKeyboard()->resetHoldingButton();
                            }
                        }
                        updateCandidateState_();
                    }
                    meScrollFlag = SF_ScrollByBS;
                    if (checkHeadOfSentence(true)) {
                        onCommand(INPUT_COMMAND_33, NULL);
                    }
                    break;
                }

                case INPUT_COMMAND_2: {
                    if (currString != mpString) {
                        onSE(sound::SE_CHAR_DELETE_ERROR);
                        return;
                    }

                    if (!mpString->deleteForward()) {
                        onSE(sound::SE_CHAR_DELETE_ERROR);
                    } else {
                        onSE(sound::SE_CHAR_DELETE);
                    }
                    break;
                }

                case INPUT_COMMAND_7: {
                    if (currString == mpString) {
                        if (meLanguage == KR) {
                            if (getCurrentString(false)->isKanaFix() == 0) {
                                mpString->getCursorPos();
                                mpString->inputChar(L'\n');
                                mpString->getCursorPos();
                                if (meLanguage == CN) {
                                    if (hasZiPredicted_()) {
                                        mpZiString->setCurrentWord(NULL);
                                        mpZiString->update();
                                    }
                                }
                            }
                        }
                        mpManager->getHWKeyboard()->resetQuotes();

                        mpUnfixString->resetRelation();
                        updateCandidateState_();

                        bool cVar15;
                        if (mpManager->getToolBar()->isQwerty()) {
                            cVar15 = mpManager->getPCKeyboard()->getUnkValue4();  // 0xFC
                        } else {
                            cVar15 = mpManager->getCellPhoneKeyboard()->isLineFeedEnabled();  // 0xE0
                        }
                        bool bVar1 = true;
                        if (mpString->isKanaFix()) {
                            bool bVar2 = false;
                            if (cVar15 && muLimitRowNum >= getLine() + 1U) {
                                bVar2 = true;
                            }
                            if (!bVar2) {
                                bVar1 = false;
                            }
                        }

                        bool bVar2 = true;
                        if (muLimitRowNum >= getLine() + 1U) {
                            if (mpManager->getCandidateBox()->isActive() == 0) {
                                bVar2 = false;
                            }
                        }
                        if (bVar1) {
                            onSE(sound::SE_CHAR_DECIDE);
                            mpString->getCursorPos();
                            mpString->inputChar(L'\n');
                            mpString->getCursorPos();
                            if (meLanguage == CN) {
                                if (hasZiPredicted_()) {
                                    mpZiString->setCurrentWord(NULL);
                                    mpZiString->update();
                                }
                            }
                        } else {
                            if (bVar2) {
                                onSE(sound::SE_CHAR_DELETE_ERROR);
                                return;
                            }
                            return;
                        }
                    } else if (currString == mpZiString) {
                        onSE(sound::SE_CHAR_DECIDE);
                        if ((getPredictMode() == PM_Cn) || (getPredictMode() == PM_Kr)) {
                            confirmInput_();
                        } else {
                            if (!(mbCursorSelected | mbZuSelected) && mpManager->getToolBar()->isQwerty()) {
                                if (mbPredictOn && mePredictMode != PM_Atok) {
                                    commitZi_();
                                }
                            } else {
                                confirmInput_();
                            }
                        }
                    } else {
                        onSE(sound::SE_CHAR_DECIDE);
                        if (mpUnfixString->isConverting()) {
                            mpUnfixString->commitPredicted((s16)mpUnfixString->getSelectedConverting());
                            updateCandidateState_();
                        } else {
                            confirmInput_();
                        }
                    }

                    meScrollFlag = SF_ScrollOn;
                    if (checkHeadOfSentence(true)) {
                        onCommand(INPUT_COMMAND_33, NULL);
                    }
                    break;
                }

                case INPUT_COMMAND_6: {
                    confirmInput_();
                    meScrollFlag = SF_ScrollOn;
                    break;
                }

                case INPUT_COMMAND_3: {
                    if (mePredictMode == PM_Cn && currString == mpZiString) {
                        mbZuSelected = false;
                    }
                    inputInputting_(((Command3Or5Data*)data)->ch);
                    break;
                }

                case INPUT_COMMAND_5: {
                    Command3Or5Data* dataCmd5 = (Command3Or5Data*)data;
                    if (dataCmd5->ch == L'\0') {
                        return;
                    }

                    confirmInputting_(dataCmd5->ch, dataCmd5->unk_0x4, dataCmd5->inputMode, dataCmd5->unk_0x6, (void*)dataCmd5->paneNameToCharCode);
                    if (!dataCmd5->unk_0x7) {
                        if (dataCmd5->unk_0x6) {
                            onSE(sound::SE_CHAR_DECIDE);
                        } else {
                            onSE(sound::SE_CHAR_INPUT);
                        }
                    }
                    meScrollFlag = SF_ScrollOn;
                    if (checkHeadOfSentence(true)) {
                        onCommand(INPUT_COMMAND_33, NULL);
                    }
                    break;
                }

                case INPUT_COMMAND_8:
                    if (currString == mpString) {
                        onPressLeft();
                    } else {
                        onHKBCtrlCode(HVK_UNK_0x1F, 0);
                    }
                    return;
                case INPUT_COMMAND_9:
                    if (currString == mpString) {
                        onPressRight();
                    } else {
                        onHKBCtrlCode(HVK_UNK_0x20, 0);
                    }
                    return;
                case INPUT_COMMAND_10:
                    onPressUp();
                    return;
                case INPUT_COMMAND_11:
                    onPressDown();
                    return;
                case INPUT_COMMAND_24:
                    doScroll((Scroll*)data);
                    return;
                case INPUT_COMMAND_POINT_TRIG: {
                    nw4r::math::VEC2* cmdDataTrig = (nw4r::math::VEC2*)data;
                    if (currStringIsMpString && currString->isKanaFix()) {
                        nw4r::math::VEC2 topLeft = getGlobalLeftTopPos();
                        currString->setCursorPos(calcCursorPos(cmdDataTrig->x - topLeft.x, cmdDataTrig->y - topLeft.y));

                        onSE(sound::SE_CHAR_CURSOR);

                        onCommand(INPUT_COMMAND_12, NULL);

                        mpManager->getHWKeyboard()->resetQuotes();
                        mpUnfixString->resetRelation();
                        updateCandidateState_();
                    } else {
                        onSE(sound::SE_CHAR_DECIDE);
                        onCommand(INPUT_COMMAND_6, NULL);
                    }
                    return;
                }
                case INPUT_COMMAND_POINT_RELEASE: {
                    nw4r::math::VEC2* cmdDataRelease = (nw4r::math::VEC2*)data;
                    if (currString->isOnSustain()) {
                        nw4r::math::VEC2 topLeft = getGlobalLeftTopPos();
                        currString->setCursorPos(calcCursorPos(cmdDataRelease->x - topLeft.x, cmdDataRelease->y - topLeft.y));
                        onCommand(INPUT_COMMAND_13, NULL);
                    }
                    return;
                }
                case INPUT_COMMAND_POINT_HOLD: {
                    nw4r::math::VEC2* cmdDataHold = (nw4r::math::VEC2*)data;
                    if (currString->isOnSustain()) {
                        nw4r::math::VEC2 topLeft = getGlobalLeftTopPos();

                        u32 cursorStart, cursorEnd;
                        currString->getCursorPos(&cursorStart, &cursorEnd);

                        u32 newPos = calcCursorPos(cmdDataHold->x - topLeft.x, cmdDataHold->y - topLeft.y);
                        currString->setCursorPos(newPos);

                        if (cursorStart != newPos) {
                            onSE(sound::SE_CHAR_CURSOR);
                        }

                        meScrollFlag = SF_ScrollOn;
                    }
                    return;
                }
                case INPUT_COMMAND_17:
                    if (data != NULL && *(bool*)data) {
                        mpUnfixString->confirm(NULL);
                        onCommand(INPUT_COMMAND_6, NULL);

                        CandidateBoxCaller::resetCandidate();
                        CandidateBoxCaller::updateCandidate();
                    }
                    break;
                case INPUT_COMMAND_21:
                    if (mbPredictOn) {
                        if (mePredictMode == PM_Atok) {
                            if (mpUnfixString->isConverting()) {
                                mpUnfixString->commitPredicted(*(u32*)data);
                            } else {
                                wchar_t predictedText[0x40];
                                mpUnfixString->getPredicted(*(u32*)data, predictedText);
                                mpString->getCursorPos();
                                mpString->inputString(predictedText, tistring::Decolated::TM_NONE);
                                mpString->getCursorPos();

                                mpUnfixString->commitPredicted(*(u32*)data);
                            }
                        } else {
                            wchar_t predictedText[0x40];
                            mpZiString->getPredicted(*(u32*)data, predictedText);
                            mpString->getCursorPos();
                            mpString->inputString(predictedText);
                            mpString->getCursorPos();

                            mpZiString->clearCandidates();
                            mbZuSelected = false;
                            if (meLanguage == CN) {
                                mpZiString->setCurrentWord(predictedText);
                                mpZiString->update();
                            }
                        }
                    }
                    meScrollFlag = SF_ScrollOn;
                    break;
                case INPUT_COMMAND_18: {
                    tistring::Decolated::TranslateMode translateModeA = *(tistring::Decolated::TranslateMode*)data;
                    tistring::Decolated::TranslateMode translateModeB = *(tistring::Decolated::TranslateMode*)data;
                    if (meLanguage != JP && meLanguage != KR) {
                        translateModeA = tistring::Decolated::TM_NONE;
                    }
                    translateModeB = translateModeA;
                    if (meLanguage == KR) {
                        if (translateModeA != tistring::Decolated::TM_NONE) {
                            translateModeB = tistring::Decolated::TM_ROMAJI_KANAFIX;
                        }
                    } else if (meLanguage == CN) {
                        translateModeB = tistring::Decolated::TM_NONE;
                    }

                    mpString->getCursorPos();
                    mpString->setTranslateMode(translateModeB);
                    mpString->getCursorPos();
                    mpUnfixString->setTranslateMode(translateModeA);
                    break;
                }
                case INPUT_COMMAND_19:
                    mpUnfixString->changeKanaMode(*(bool*)data);
                    break;
                case INPUT_COMMAND_20:
                    mpUnfixString->setFixMode(*(bool*)data);
                    break;
                case INPUT_COMMAND_22:
                    moveCandidateToIdx(*(s32*)data);
                    meScrollFlag = SF_ScrollOn;
                    return;
                case INPUT_COMMAND_23:
                    if (mbPredictOn) {
                        PredictMode predictMode = mePredictMode;
                        if (mePredictMode == PM_Atok) {
                            mpUnfixString->setSelectedCandidate(-1);
                        } else if (mePredictMode == PM_Cn) {
                            mpZiString->setSelectedCandidate(-1);
                            mbZuSelected = false;
                        }
                        meScrollFlag = SF_ScrollOn;
                        return;
                    }
                    break;
                case INPUT_COMMAND_25:
                    currString->converDakuten();
                    onSE(sound::SE_CHAR_INPUT);
                    break;
                case INPUT_COMMAND_26:
                    currString->converHandaku();
                    onSE(sound::SE_CHAR_INPUT);
                    break;
                case INPUT_COMMAND_27:
                    currString->convertAll();
                    break;
                case INPUT_COMMAND_28:
                    currString->converSmall();
                    onSE(sound::SE_CHAR_INPUT);
                    break;
                case CommandReceiver::INPUT_COMMAND_SET_PREDICT_MODE: {
                    CommandReceiver::ChangePredictMode* cmdDataSetPM = (CommandReceiver::ChangePredictMode*)data;
                    mePredictMode = (PredictMode)cmdDataSetPM->ePredictMode;
                    if (mbPredictOn != !!cmdDataSetPM->bPredictEnabled) {
                        mbPredictOn = cmdDataSetPM->bPredictEnabled;
                        if (meLanguage == KR) {
                            mpManager->getPCKeyboard()->refreshState();
                        }
                    }

                    // Regswap here
                    tistring::Decolated::TranslateMode translateModeB = mpUnfixString->getTranslateMode();
                    tistring::Decolated::TranslateMode translateModeA = mpString->getTranslateMode();
                    mpString->initKanaConverter();
                    mpUnfixString->initKanaConverter();
                    if (meLanguage == KR) {
                        if (translateModeA != tistring::Decolated::TM_NONE) {
                            translateModeA = tistring::Decolated::TM_ROMAJI_KANAFIX;
                        }
                    } else if (meLanguage == CN) {
                        translateModeA = tistring::Decolated::TM_NONE;
                    }
                    mpString->getCursorPos();
                    mpString->setTranslateMode(translateModeA);
                    mpString->getCursorPos();
                    mpUnfixString->setTranslateMode(translateModeB);

                    switch (mePredictMode) {
                        case PM_Atok:
                            if (!mbPredictOn) {
                                if (mpUnfixString->isDictionaryOpened() && currString == mpUnfixString) {
                                    mpUnfixString->confirm(NULL);

                                    const wchar_t* confirmedString = mpUnfixString->getConfirmedWCString();
                                    mpString->getCursorPos();
                                    mpString->confirm(confirmedString);
                                    mpString->getCursorPos();

                                    mpUnfixString->enableConfirmedString(false);
                                }
                            } else {
                                mpManager->getHWKeyboard()->resetQuotes();
                                mpUnfixString->resetRelation();
                                updateCandidateState_();
                            }
                            return;

                        case PM_USEn:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_ENAM);
                            break;
                        case PM_USFr:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_FRCA);
                            break;
                        case PM_USSp:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_ESSA);
                            break;
                        case PM_En:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_ENUK);
                            break;
                        case PM_De:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_DE);
                            break;
                        case PM_Fr:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_FREU);
                            break;
                        case PM_Sp:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_ESEU);
                            break;
                        case PM_It:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_IT);
                            break;
                        case PM_Nl:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_NL);
                            break;
                        case PM_Cn:
                            mpZiString->setPredictLaunguage(tistring::WithZi::PREDICT_LANG_ZH);
                            break;
                        case PM_Kr:
                            mpZiString->setPredictLaunguage(mpManager->getToolBar()->isQwerty() ? tistring::WithZi::PREDICT_LANG_KO_ROMA :
                                                                                                  tistring::WithZi::PREDICT_LANG_KO_SYLL);
                            break;

                        default:
                            break;
                    }
                    onCommand(INPUT_COMMAND_30, NULL);
                    return;
                }
                case INPUT_COMMAND_30: {
                    mpUnfixString->confirm(NULL);
                    const wchar_t* atokConfirmedString = mpUnfixString->getConfirmedWCString();
                    mpString->getCursorPos();
                    mpString->confirm(atokConfirmedString);
                    mpString->getCursorPos();

                    mpUnfixString->enableConfirmedString(false);

                    mpZiString->clearCandidates();
                    mbZuSelected = false;

                    getCurrentString(false);
                    currString = mpZiString;
                    if (mpZiString != NULL && meLanguage == CN) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                        updateCandidateState_();
                    }
                    CandidateBoxCaller::resetCandidate();
                    return;
                }
                case INPUT_COMMAND_GET_PREDICT_MODE: {
                    CommandReceiver::ChangePredictMode* cmdDataGetPM = (CommandReceiver::ChangePredictMode*)data;
                    cmdDataGetPM->ePredictMode = mePredictMode;
                    cmdDataGetPM->bPredictEnabled = mbPredictOn;
                    return;
                }
                case INPUT_COMMAND_32:
                    *(bool*)data = hasZiPredicted_();
                    return;
                case INPUT_COMMAND_38: {
                    CommandReceiver::Command38Data* cmdHwkbCtrlcode = (CommandReceiver::Command38Data*)data;
                    onHKBCtrlCode(cmdHwkbCtrlcode->ctrlCode, cmdHwkbCtrlcode->flags);
                    return;
                }
                case INPUT_COMMAND_41:
                    notifyChangeMode();
                    return;
                case INPUT_COMMAND_42:
                    onPressLeftHWKB();
                    return;
                case INPUT_COMMAND_43:
                    onPressRightHWKB();
                    return;
                case INPUT_COMMAND_44:
                    onPressUp();
                    return;
                case INPUT_COMMAND_45:
                    onPressDownHWKB();
                    return;
                case INPUT_COMMAND_39:
                    mDKStream.clearQueue();
                    // *(u8*)data = 39;
                    return;
                case INPUT_COMMAND_47:
                    return;
                case INPUT_COMMAND_36: {
                    u32 newLen = *(u32*)data;
                    if (mpString->getLength() > newLen) {
                        mpString->getLength();
                    }
                    mpString->setLength(newLen);
                    return;
                }
                case INPUT_COMMAND_46: {
                    if (meLanguage == CN && !mpManager->getPCKeyboard()->getUnkValue2() && mpManager->getPCKeyboard()->getUnkValue3()) {
                        if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                        } else {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_00);
                        }
                    }
                    break;
                }

                default:
                    break;
            }
            updateCandidateState_();
        }

        void Base::updateCandidateState_() {
            if (!mbPredictOn)
                return;

            wchar_t auStack_90[0x40];

            if (mePredictMode == PM_Atok) {
                if (mpUnfixString->hasConfirmedString() != 0) {
                    const wchar_t* candidate = mpUnfixString->getConfirmedWCString();
                    mpString->getCursorPos();
                    mpString->confirm(candidate);
                    mpString->getCursorPos();
                    mpUnfixString->enableConfirmedString(false);
                    onSE(sound::SE_CHAR_DECIDE);
                }

                bool local_98[1] = {};
                CommandReceiver::onCommand((INPUT_COMMAND)35, local_98);
                CandidateBoxCaller::resetCandidate();
                if (local_98[0] == '\0') {
                    s32 numPredicted = mpUnfixString->getCurrentNumPredicted();
                    for (int i = 0; i < numPredicted; i++) {
                        mpUnfixString->getPredicted(i, auStack_90);
                        CandidateBoxCaller::addCandidate(auStack_90);
                    }
                    CandidateBoxCaller::updateCandidate();
                }
            } else {
                CandidateBoxCaller::resetCandidate();
                // wchar_t auStack_90[0x40];
                s32 numPredicted = mpZiString->getCurrentNumPredicted();
                for (int i = 0; i < numPredicted; i++) {
                    mpZiString->getPredicted(i, auStack_90);
                    CandidateBoxCaller::addCandidate(auStack_90);
                }
                CandidateBoxCaller::updateCandidate();
            }
        }

        void Base::create(MEMAllocator* allocator, EditBuffer* editBuffer) {
            mpAllocator = allocator;
            textdrawer::Base::create(allocator);
            mpString = editBuffer->getString();
            mpUnfixString = editBuffer->getUnfixString();
            mpZiString = editBuffer->getZiString();
            mpCursorLine = mriManager.create(allocator);
        }

        void Base::draw() {
            SetCursor(getScale().x, mfScrollY);

            nw4r::math::VEC2 scale = getScale();
            nw4r::ut::Rect drawRect;
            nw4r::math::VEC2 leftTop = getGlobalLeftTopPos();
            drawRect.left = leftTop.x;
            drawRect.bottom = leftTop.y;
            drawRect.right = drawRect.left + scale.x * (mRect.right - mRect.left);
            drawRect.top = drawRect.bottom + scale.y * (mRect.top - mRect.bottom);

            u32 cursorPos = mpString->getCursorPos();
            beginDraw(drawRect);
            drawFixString(cursorPos);
            endDraw();
        }

        void Base::makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine) {
            u32 savedWordWrapCounter = muWordWrapCounter;

            muWordWrapCounter = pos;
            textdrawer::Base::makeUpCursorPos(cursorPos, pos, startLine, endLine);

            muWordWrapCounter = savedWordWrapCounter;
        }

        void Base::drawFixString(u32 cursorPos) {
            CursorPos local_14;
            local_14.uCursorPos = cursorPos;

            mCharColor.a = muGlobalAlpha;
            SetTextColor(mCharColor);

            textdrawer::Base::setDrawString(mpString->getWCString(), 0, mpString->getLength());
            textdrawer::Base::draw(&local_14);
            drawCursor(local_14.fCursorX, local_14.fCursorY);
        }

#define COLOR_NO_HOLD 0x025AFD96
#define COLOR_SUSTAIN 0x348CFD32
#define COLOR_NO_HOLD_R (u8)(COLOR_NO_HOLD >> 0x18)
#define COLOR_NO_HOLD_G (u8)(COLOR_NO_HOLD >> 0x10)
#define COLOR_NO_HOLD_B (u8)(COLOR_NO_HOLD >> 0x08)
#define COLOR_NO_HOLD_A (u8)(COLOR_NO_HOLD >> 0x00)

#define COLOR_SUSTAIN_R (u8)(COLOR_SUSTAIN >> 0x18)
#define COLOR_SUSTAIN_G (u8)(COLOR_SUSTAIN >> 0x10)
#define COLOR_SUSTAIN_B (u8)(COLOR_SUSTAIN >> 0x08)
#define COLOR_SUSTAIN_A (u8)(COLOR_SUSTAIN >> 0x00)

#define SUSTAIN_REPEAT_FRAMES 50
        void Base::calc() {
            if (mScrollAnm.isActive()) {
                mfScrollY = mScrollAnm.getValue();
                setScrollOffsetY(mfScrollY);
            }
            if (!mScrollAnm.isActive()) {
                autoScroll();
            }

            if (!mpString->isOnSustain()) {
                mfSustainTimer / 2.0f;  // Hack for proper float ordering for linking (aaaaaaaaa)

                mfSustainTimer = mfSustainTimer + 1.0f;
            }

            mScrollAnm.calc();

            f32 sinVal = nw4r::math::SinDeg(lbl_81698D1C);
            mSelectedColor.r = COLOR_NO_HOLD_R;
            mSelectedColor.g = COLOR_NO_HOLD_G;
            mSelectedColor.b = COLOR_NO_HOLD_B;
            mSelectedColor.a = COLOR_NO_HOLD_A + sinVal * 30.0f;
            if (mpString->isOnSustain()) {
                mSelectedColor.r = COLOR_SUSTAIN_R;
                mSelectedColor.g = COLOR_SUSTAIN_G;
                mSelectedColor.b = COLOR_SUSTAIN_B;
                mSelectedColor.a = COLOR_SUSTAIN_A + sinVal * 10.0f;
            } else if (mfSustainTimer <= SUSTAIN_REPEAT_FRAMES) {
                mSelectedColor.r = util::hermiteInterporation(mfSustainTimer, 0, COLOR_SUSTAIN_R, 0, SUSTAIN_REPEAT_FRAMES, COLOR_NO_HOLD_R, 0);
                mSelectedColor.g = util::hermiteInterporation(mfSustainTimer, 0, COLOR_SUSTAIN_G, 0, SUSTAIN_REPEAT_FRAMES, COLOR_NO_HOLD_G, 0);
                mSelectedColor.b = util::hermiteInterporation(mfSustainTimer, 0, COLOR_SUSTAIN_B, 0, SUSTAIN_REPEAT_FRAMES, COLOR_NO_HOLD_B, 0);

                // f32 sinVal = ;
                mSelectedColor.a = util::hermiteInterporation(mfSustainTimer, 0, COLOR_SUSTAIN_A, 0, SUSTAIN_REPEAT_FRAMES, COLOR_NO_HOLD_A, 0) +
                                   nw4r::math::SinDeg(lbl_81698D1C) * 20.0f;
            }
            f32 old = lbl_81698D1C;
            // muCursorTimer += 8;
            calcCursorTimer();
            lbl_81698D1C = old + 2.0f;
        }
        void Base::calcCursorTimer() {
            muCursorTimer += 8;
        }

        void Base::setFont(const nw4r::ut::Font& font) {
            textdrawer::Base::setFont(font);
        }
        void Base::setString(const wchar_t* string) {
            mpString->set(string);
        }
        void Base::clear() {
            init();
            mpString->clear();
        }

        void Base::preDraw(u32 wordWrapCounter) {
            muWordWrapCounter = wordWrapCounter;
            mbHyphen = false;
        }

        bool Base::findURL(u32* urlStartOut, u32* urlEndOut, const wchar_t* text, u32 textStart, u32 textEnd) {
            bool iVar6 = false;
            bool bVar2 = true;
            const URLCheck* pppURL = pppURLCheck;
            u32 start = textStart;
            for (; start < textEnd; start++) {
                switch (text[start]) {
                    case L'\0':
                        if (iVar6) {
                            if (urlEndOut != NULL) {
                                *urlEndOut = start;
                            }
                        }
                        return iVar6;

                    case L'\n':
                    case L'\r':
                    case L' ':
                    case L'　':
                        if (!iVar6) {
                            bVar2 = true;
                            break;
                        }
                        if (urlEndOut != NULL) {
                            *urlEndOut = start;
                        }
                        return 1;

                    case L'H':
                    case L'h':
                        if (!bVar2 || iVar6)
                            break;

                        bVar2 = false;
                        for (u32 j = 0; j < ARRAY_LENGTH(pppURLCheck); j++) {
                            int len = wcslen(pppURL[j]);
                            if (wcsnicmp(text + start, pppURL[j], len) == 0) {
                                if (urlStartOut != NULL) {
                                    *urlStartOut = start;
                                }
                                iVar6 = true;
                                start = start + len - 1;
                                break;
                            }
                        }
                        break;

                    case L'0':
                    case L'1':
                    case L'2':
                    case L'3':
                    case L'4':
                    case L'5':
                    case L'6':
                    case L'7':
                    case L'8':
                    case L'9':
                    case L'A':
                    case L'B':
                    case L'C':
                    case L'D':
                    case L'E':
                    case L'F':
                    case L'G':
                    case L'I':
                    case L'J':
                    case L'K':
                    case L'L':
                    case L'M':
                    case L'N':
                    case L'O':
                    case L'P':
                    case L'Q':
                    case L'R':
                    case L'S':
                    case L'T':
                    case L'U':
                    case L'V':
                    case L'W':
                    case L'X':
                    case L'Y':
                    case L'Z':
                    case L'a':
                    case L'b':
                    case L'c':
                    case L'd':
                    case L'e':
                    case L'f':
                    case L'g':
                    case L'i':
                    case L'j':
                    case L'k':
                    case L'l':
                    case L'm':
                    case L'n':
                    case L'o':
                    case L'p':
                    case L'q':
                    case L'r':
                    case L's':
                    case L't':
                    case L'u':
                    case L'v':
                    case L'w':
                    case L'x':
                    case L'y':
                    case L'z':
                        bVar2 = false;
                        break;

                    default:
                        bVar2 = true;
                        break;
                }
            }
            return iVar6;
        }

        bool Base::doWordWrap(const wchar_t* string, u32 maxWordStart, f32 wrapOffset) {
            u32 newWordWrapCounter;

            if (!mbDoWordWrap)
                return false;

            if (maxWordStart < muWordWrapCounter)
                return false;

            int mPrevHyphenType = 0;
            if (muWordWrapCounter != 0 && muWordWrapCounter != getDrawCacheStartPos()) {
                if (string[muWordWrapCounter - 1] == L'-') {
                    mPrevHyphenType = 1;
                } else if (string[muWordWrapCounter - 1] != L' ') {
                    mPrevHyphenType = 2;
                }
            }

            u32 startPos = muWordWrapCounter;
            u32 i = muWordWrapCounter;
            u32 hyphenPos = 0;
            bool hasHyphen = false;
            f32 totalWidth = 0.0f;
            do {
                if (string[i] == L' ' || string[i] == L'\n')
                    break;

                DrawInfo drawInfo;
                drawInfo.ch = string[i];
                calcRect(drawInfo);

                totalWidth = totalWidth + drawInfo.rect.GetWidth();

                if (wrapOffset != getScale().x && wrapOffset + totalWidth * getScale().x >= mRect.GetWidth() * getScale().x) {
                    hasHyphen = true;
                }
                if (i != startPos && string[i] == L'-') {
                    hyphenPos = i;
                    mbHyphen = true;
                }
                i++;
            } while (string[i] != L'\0');

            if (i == startPos) {
                mbHyphen = false;
            }
            if (totalWidth * getScale().x >= mRect.GetWidth() * getScale().x) {
                hasHyphen = false;
                if (mbHyphen) {
                    hasHyphen = true;
                }
                if (mPrevHyphenType == 1) {
                    hasHyphen = true;
                }
            }

            newWordWrapCounter = i;
            if (hasHyphen) {
                if (!findURL(NULL, NULL, string, startPos, i)) {
                    if (hyphenPos == 0) {
                        mbHyphen = false;
                        muWordWrapCounter = i + 1;
                        return true;
                    }

                    newWordWrapCounter = hyphenPos;
                }
            } else {
                mbHyphen = false;
            }
            muWordWrapCounter = newWordWrapCounter + 1;
            return false;
        }

        bool Base::isOverLine(const DrawInfo& drawInfo) {
            return GetCursorX() + drawInfo.rect.GetWidth() * getScale().x >= mRect.GetWidth() * getScale().x;
        }

        void Base::doBeforeDrawProcess(const wchar_t* string, u32 maxWordStart, const DrawInfo& drawInfo) {
            if (doWordWrap(string, maxWordStart, GetCursorX())) {
                doLineFeed();
            }

            if (isOverLine(drawInfo)) {
                Base::doLineFeed();
            }

            u32 start, end;
            mpString->getSelected(start, end);
            if (maxWordStart >= start && maxWordStart < end) {
                f32 l = drawInfo.rect.left + GetCursorX();
                f32 t = drawInfo.rect.top + GetCursorY();
                f32 r = drawInfo.rect.right + GetCursorX();
                f32 b = drawInfo.rect.bottom + GetCursorY();
                debug::drawBox_(l, t, r, b, 0.0f, 1.0f, mSelectedColor);
            }
        }

        void Base::doLineFeed() {
            textdrawer::Base::doLineFeed();

            SetCursorY(GetCursorY() + getLineHeight());

            SetCursorX(getScale().x);
        }

        bool Base::onCursor(CursorPos* cursorPos) {
            bool isOnCursor = false;

            nw4r::ut::Color savedTextColor = CharWriter::GetTextColor();  // `savedColor`

            SetupGX();
            wchar_t* kanaBuffer = mpString->getKanaBuffer();  // `kanaBuffer`
            wchar_t candidateCh = mpString->getCandidate();   // `candidate`
            if (mbPredictOn && mePredictMode != PM_Atok) {
                const wchar_t* currSelected = mpZiString->getCurrentSelected();

                if (getPredictMode() == PM_Cn) {
                    if (mbCursorSelected) {
                        mbZuSelected = true;
                    }

                    if (!(mbCursorSelected | mbZuSelected)) {
                        currSelected = mpZiString->getCurrentInput();
                    }
                }
                if (currSelected != NULL) {
                    u32 i = 0;
                    SetTextColor(csZiStringColorLeft.ToU32());
                    for (; currSelected[i] != 0; i++) {
                        if (!(mbCursorSelected | mbZuSelected) && (u16)i == mpZiString->getInputStringLength()) {
                            isOnCursor = true;
                            cursorPos->fCursorX = GetCursorX();
                            cursorPos->fCursorY = GetCursorY();
                        }
                        if (getPredictMode() != PM_Cn && mpZiString->getInputStringLength() <= (u16)i) {
                            if (mbCursorSelected | mbZuSelected) {
                                SetTextColor(csZiStringColorRight.ToU32());
                            } else {
                                SetTextColor(csZiStringNonSelectColorRight.ToU32());
                            }
                        }
                        if (currSelected[i] == 0xFFFE) {  // Pad key marker?
                            SetTextColor(csZiStringColorLeft.ToU32());
                        }

                        DrawInfo drawInfo;
                        drawInfo.ch = currSelected[i];
                        calcRect(drawInfo);

                        if (GetCursorX() + drawInfo.rect.GetWidth() >= mRect.GetWidth()) {
                            doLineFeed();
                        }
                        Print(currSelected[i]);
                        MoveCursorX(getLetterTracking());
                    }
                }
            }
            if (meDestination == DST_JP && candidateCh != L'\0') {
                DrawInfo drawInfo;
                drawInfo.ch = candidateCh;
                calcRect(drawInfo);

                f32 l = drawInfo.rect.left + GetCursorX();
                f32 t = drawInfo.rect.top + GetCursorY();
                f32 r = drawInfo.rect.right + GetCursorX();
                f32 b = GetFontHeight() + GetCursorY();
                lbl_8169739C.a = muGlobalAlpha;
                debug::drawBox_(l, t, r, b, 0.0f, 1.0f, lbl_8169739C);

                SetupGX();

                SetTextColor(mCharColor);

                switch (candidateCh) {
                    case L' ':
                    case L'　': {
                        DrawInfo actualChDrawInfo;
                        DrawInfo mergedSpaceDrawInfo;
                        mergedSpaceDrawInfo.ch = 0xE057;
                        actualChDrawInfo.ch = candidateCh;

                        calcRect(actualChDrawInfo);
                        calcRect(mergedSpaceDrawInfo);

                        f32 moveAmt = (actualChDrawInfo.rect.GetWidth() - mergedSpaceDrawInfo.rect.GetWidth()) / 2.0f * getScale().x;
                        MoveCursorX(moveAmt);
                        Print(0xE057);
                        MoveCursorX(moveAmt);
                        break;
                    }

                    default:
                        Print(candidateCh);
                        break;
                }
                MoveCursorX(getLetterTracking());
            }
            if (meDestination != DST_JP) {
                candidateCh = mpString->getCandidate();
                if (candidateCh != L'\0') {
                    SetTextColor(csUnInputedWCharColor.ToU32());
                    if (candidateCh == L' ') {
                        SetTextColor(csUnInputedWCharColorSpace.ToU32());
                        candidateCh = 0xE057;
                    }
                    Print(candidateCh);
                    MoveCursorX(getLetterTracking());
                }
            }

            for (u32 i = 0; kanaBuffer[i] != L'\0'; i++) {
                wchar_t currKana = kanaBuffer[i];
                if (mbPredictOn != false) {
                    currKana = util::HankakuToZenkaku(kanaBuffer[i]);
                }

                DrawInfo drawInfo;
                drawInfo.ch = currKana;
                calcRect(drawInfo);

                if (meLanguage == JP) {
                    f32 l = drawInfo.rect.left + GetCursorX();
                    f32 t = drawInfo.rect.top + GetCursorY();
                    f32 r = drawInfo.rect.right + GetCursorX();
                    f32 b = GetFontHeight() + GetCursorY();
                    lbl_81697398.a = muGlobalAlpha;
                    debug::drawBox_(l, t, r, b, 0.0f, 1.0f, lbl_81697398);

                    SetupGX();

                    mCharColor.a = muGlobalAlpha;
                    SetTextColor(mCharColor);
                } else if (meLanguage == KR) {
                    SetupGX();
                    mCharColor.a = muGlobalAlpha;
                    SetTextColor(csZiStringColorLeft.ToU32());
                    if (isOverLine(drawInfo) != 0) {
                        Base::doLineFeed();
                    }
                }
                Print(currKana);
                MoveCursorX(getLetterTracking());
            }
            SetTextColor(savedTextColor);
            return isOnCursor;
        }

        u32 Base::getCursorPos() {
            u32 stringStart;
            u32 atokStart;
            u32 _end;
            mpString->getCursorPos(&stringStart, &_end);
            mpUnfixString->getCursorPos(&atokStart, &_end);
            return stringStart + atokStart;
        }

        void Base::drawCursor(f32 x, f32 y) {
            f32 alpha = muGlobalAlpha / 255.0f;
            mfCursorX = x;
            mfCursorY = y;

            GXColor color = {0xFF, 0x32, 0x32, alpha * (nw4r::math::SinDeg(muCursorTimer) * 127.0f + 127.0f)};

            debug::drawLine_(mfCursorX, mfCursorY + 2.0f, mfCursorX, mfCursorY + GetFontHeight() - 2.0f, 0.0f,
                             14592.0f / getProjectionRect().GetWidth(), color);
        }

        s32 Base::calcCursorPos(f32 x, f32 y) {
            y -= mfScrollY;

            wchar_t* str = mpString->getWCString();
            if (str[0] == L'\0')
                return 0;

            // The X & Y positions of the left, right, top, and bottom of the
            // current character
            f32 charL = getScale().x;
            f32 charT = 0.0f;
            f32 charR = 0.0f;
            f32 charB = 0.0f;

            nw4r::math::VEC2 scale = getScale();
            u32 idx = 0;
            muWordWrapCounter = 0;
            mbHyphen = false;
            while (str[idx] != L'\0') {
                DrawInfo chDrawInfo;
                chDrawInfo.ch = str[idx];
                calcRect(chDrawInfo);

                charB = charT + scale.y * chDrawInfo.rect.GetHeight();
                charR = charL + scale.x * chDrawInfo.rect.GetWidth();

                if (doWordWrap(mpString->getWCString(), idx, charL)) {
                    if (y >= charT && y <= charB) {
                        if (idx != 0) {
                            return idx + -1;
                        } else {
                            return idx;
                        }
                    }
                    charT += scale.y * getLineHeight();
                    charL = getScale().x;

                    charB = charT + scale.y * chDrawInfo.rect.GetHeight();
                    charR = charL + scale.x * chDrawInfo.rect.GetWidth();
                }
                if (charR >= scale.x * mRect.GetWidth()) {
                    if (y >= charT && y <= charB) {
                        return idx;
                    }
                    charT += scale.y * getLineHeight();
                    charL = getScale().x;

                    charB = charT + scale.y * chDrawInfo.rect.GetHeight();
                    charR = charL + scale.x * chDrawInfo.rect.GetWidth();
                }

                if (x <= chDrawInfo.rect.left && y >= charT && y <= charB) {
                    return idx;
                }
                if (str[idx] == L'\n') {
                    if (y >= charT && y <= charB) {
                        return idx;
                    }
                    charT += scale.y * getLineHeight();
                    charL = getScale().x;

                    charB = charT + scale.y * chDrawInfo.rect.GetHeight();
                    charR = charL + scale.x * chDrawInfo.rect.GetWidth();
                    if (str[idx + 1] == L'\0' && y >= charT && y <= charB) {
                        return idx + 1;
                    }
                } else {
                    if (x >= charL && x < charR && y >= charT && y < charB) {
                        if (charL + (charR - charL) / 2.0f > x) {
                            return idx;
                        } else {
                            return idx + 1;
                        }
                    }
                    charL += scale.x * chDrawInfo.rect.GetWidth();
                    charR = charL + scale.x * chDrawInfo.rect.GetWidth();
                }
                idx++;

                if (str[idx] == L'\0' && y >= charT && y <= charB) {
                    return idx;
                }
            }

            if (charT + (charB - charT) / 2.0f <= y) {
                return Base::calcCursorPos(x, charT + 1.0f + mfScrollY);
            } else {
                return Base::calcCursorPos(x, 1.0f);
            }
        }

        nw4r::math::VEC2 Base::getGlobalLeftTopPos() const {
            Vec corner;
            corner.x = mRect.left;
            corner.y = mRect.bottom;
            corner.z = 0.0f;
            PSMTXMultVec(mMtx, &corner, &corner);
            return nw4r::math::VEC2(corner.x, -corner.y);
        }

        void Base::doScroll(Scroll* scroll) {
            if (mScrollAnm.isActive())
                return;

            if (scroll->absY) {
                mfScrollX = scroll->x;
                mfScrollY = scroll->y;
                setScrollOffsetY(mfScrollY);
            } else {
                mfScrollX += scroll->x;
                mScrollAnm.startAnm(mfScrollY, mfScrollY + scroll->y, 15.0f, NULL, NULL);
            }
            onSE(sound::SE_LINE_SCROLL);
        }

        void Base::autoScroll() {
            if (!mScrollAnm.isActive() && (meScrollFlag == SF_ScrollByBS || meScrollFlag == SF_ScrollOn)) {
                f32 dVar4 = mfCursorY + getLineHeight() / 2.0f;
                if (dVar4 < 0.0f) {
                    f32 dVar5 = dVar4 / getLineHeight();
                    int local_28 = dVar5 - 1.0f;
                    mScrollAnm.startAnm(mfScrollY, mfScrollY - local_28 * getLineHeight(), 15, NULL, NULL);
                    onSE(sound::SE_LINE_SCROLL);
                }

                if (dVar4 >= (mRect.top - mRect.bottom) * getScale().y) {
                    int local_28 = (int)((dVar4 - (mRect.top - mRect.bottom) * getScale().y) / getLineHeight()) + 1;
                    mScrollAnm.startAnm(mfScrollY, mfScrollY - local_28 * getLineHeight(), 15, 0, 0);
                    onSE(sound::SE_LINE_SCROLL);
                }
                meScrollFlag = SF_NoScroll;
            }
        }

        void Base::setAtokDictionary(void* atokDict, int atokDictSize, void* apotDict, int apotDictSize, void* nintendoDict, int nintendoDictSize) {
            mpUnfixString->openDictionary(atokDict, atokDictSize, apotDict, apotDictSize, nintendoDict, nintendoDictSize);
        }
        void Base::closeAtokDictionary() {
            mpUnfixString->closeDictionary();
        }

        void Base::confirmInput_() {
            if (mbPredictOn == false) {
                if (!mpString->isKanaFix()) {
                    mpString->getCursorPos();
                    mpString->confirmKana();
                    mpString->getCursorPos();
                }
            } else if (mePredictMode == PM_Atok) {
                if (mpUnfixString->isCandidateSelected() != 0) {
                    s32 candidate = mpUnfixString->getSelectedCandidate();
                    onCommand((INPUT_COMMAND)0x15, &candidate);
                } else {
                    mpUnfixString->confirm(NULL);

                    const wchar_t* confirmed = mpUnfixString->getConfirmedWCString();
                    mpString->getCursorPos();
                    mpString->confirm(confirmed);
                    mpString->getCursorPos();

                    mpUnfixString->enableConfirmedString(false);
                }
            } else {
                const wchar_t* currSelected = mpZiString->getCurrentSelected();
                if (mpZiString->getInputStringLength() != 0) {
                    mpString->getCursorPos();
                    mpString->inputString(currSelected);
                    mpString->getCursorPos();

                    if (meLanguage == CN) {
                        mpZiString->setCurrentWord(currSelected);
                    }
                }
                mpZiString->clearCandidates();
                mbZuSelected = false;
                if (meLanguage == CN) {
                    mpZiString->update();
                }
            }
        }
        void Base::initZiString() {
            mpZiString->clearCandidates();
            mbZuSelected = false;
        }
        void Base::inputInputting_(wchar_t ch) {
            tistring::Decolated* currString = getCurrentString(false);
            if (ch == L'゛' || ch == L'゜') {  // Voiced & semi-voiced sound marks
                onCommand(INPUT_COMMAND_27, NULL);
            } else if (mbPredictOn && mePredictMode == PM_Atok) {
                if (mpUnfixString->isCandidateSelected()) {
                    onCommand(INPUT_COMMAND_6, NULL);
                }
                mpUnfixString->setInputting(ch);
            } else if (mbPredictOn && getPredictMode() == PM_Cn && !mpManager->getCandidateBox()->isInvalid()) {
                if (util::isAlphabet(ch) || (L'1' <= ch && ch <= L'5')) {
                    mpZiString->setInputting(ch);
                } else {
                    if (hasZiPredicted_() && mpZiString->getInputStringLength() != 0 && (meLanguage != CN || !mpZiString->hasCandidate())) {
                        confirmInput_();
                    }
                    mpZiString->setInputting(ch);
                    mpZiString->setSelectedCandidate(-1);
                    return;
                }
            } else {
                currString->setCandidate(ch);
            }
            if (ch != L'\0') {
                onSE(sound::SE_CHAR_INPUT);
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::confirmInputting_(wchar_t ch, bool param_3, u16 letterMode, bool param_5, void* heldKey) {
            tistring::Decolated* currString = getCurrentString(true);
            if (ch == L'\0')
                return;

            if (mbPredictOn && getPredictMode() == PM_Cn && !mpManager->getCandidateBox()->isInvalid()) {
                if (!(util::isAlphabet(ch) || (L'1' <= ch && ch <= L'5'))) {
                    mpString->getCursorPos();
                    mpString->inputChar(ch);
                    mpString->getCursorPos();
                    if (meLanguage == CN && hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                    if (meLanguage == CN) {
                        mpZiString->clearCandidates();
                        mbZuSelected = false;
                        mpZiString->update();
                    } else {
                        confirmInput_();
                    }
                    return;
                }
            }

            if (param_3) {
                mpString->getCursorPos();
                mpString->inputChar(ch);
                mpString->getCursorPos();

                if (meLanguage == CN && hasZiPredicted_()) {
                    mpZiString->setCurrentWord(NULL);
                    mpZiString->update();
                }
            } else {
                if (currString == mpZiString) {
                    if (mpZiString->getInputStringLength() == 0) {
                        mpZiString->changeLetterMode((tistring::WithZi::LetterMode)letterMode);
                        mpZiString->setCellPhoneHoldingkey(heldKey);
                    }
                    if (mpZiString->getInputStringLength() >= 0x20) {
                        onCommand(INPUT_COMMAND_6, NULL);
                        mpZiString->changeLetterMode((tistring::WithZi::LetterMode)letterMode);

                        mpZiString->inputChar(ch);
                        onSE(sound::SE_CHAR_DECIDE);
                        updateCandidateState_();
                        return;
                    }
                } else if (currString == mpUnfixString) {
                    if (param_5 && !mpUnfixString->hasCandidate()) {
                        return;
                    }
                } else if (mbPredictOn && mePredictMode == PM_Atok && currString != mpUnfixString && ch == L' ') {
                    ch = L'　';
                    mpUnfixString->setCandidate(L'\0');
                }

                if (currString == mpString) {
                    mpString->getCursorPos();
                    mpString->inputChar(ch);
                    mpString->getCursorPos();

                    if (meLanguage == CN && hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                } else {
                    currString->inputChar(ch);
                    if (meLanguage == KR) {
                        if (mpManager->getToolBar()->isQwerty()) {
                            currString = mpZiString;
                            wchar_t predictedWord[0x40];
                            mpZiString->getPredicted(0, predictedWord);

                            if (wcslen(predictedWord) >= 2) {
                                predictedWord[1] = L'\0';
                                mpString->getCursorPos();
                                mpString->inputString(predictedWord);
                                mpString->getCursorPos();
                                mpZiString->partialConfirmForKR();
                            }
                        }
                    }
                }
                onSE(sound::SE_CHAR_INPUT);
            }
        }

        void Base::inputCharZi_(wchar_t ch, u32 param_3) {
            if (meLanguage != KR && (param_3 & 3) != 0) {
                ch = util::toWLower(ch);
            }

            bool bVar1 = false;
            if (ch == L' ') {
                bVar1 = true;
            }
            if (meLanguage == CN) {
                if (!(util::isAlphabet(ch) || (L'1' <= ch && ch <= L'5' && mpZiString->getInputStringLength() != 0))) {
                    bVar1 = true;
                }
            } else if (meLanguage == KR) {
                if (util::isAlphabet(ch)) {
                    if (getCurrentString(true) == mpZiString && (param_3 & 2) != 0) {
                        ch = util::reverseLetterCaseW(ch);
                    }
                } else {
                    bVar1 = true;
                }
            }
            if (bVar1) {
                if (hasZiPredicted_()) {
                    confirmInput_();
                }
                mpString->getCursorPos();
                mpString->inputChar(ch);
                mpString->getCursorPos();
                if (meLanguage == CN && hasZiPredicted_()) {
                    mpZiString->setCurrentWord(NULL);
                    mpZiString->update();
                }
                onSE(sound::SE_CHAR_DECIDE);
            } else {
                tistring::WithZi::LetterMode letterMode;
                switch (param_3 & 3) {
                    case 1:
                        letterMode = tistring::WithZi::LETTER_MODE_TITLE;
                        break;
                    case 2:
                        letterMode = tistring::WithZi::LETTER_MODE_UPPER;
                        break;
                    default:
                        letterMode = tistring::WithZi::LETTER_MODE_LOWER;
                        break;
                }
                confirmInputting_(ch, 0, letterMode, 0, NULL);
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::inputCharDefault_(wchar_t ch, u32 param_3) {
            tistring::Decolated* currString = getCurrentString(true);
            if (getCurrentString(false) == mpUnfixString && mpUnfixString->isConverting() == 0 && mpUnfixString->getSelectedCandidate() >= 0) {
                confirmInput_();
            }
            if (meLanguage == KR) {
                if (mpManager->getPCKeyboard()->getTranslateMode() != keyboard::pctype::Base::TM_00) {
                    if (util::isAlphabet(ch) && (param_3 & 2) != 0) {
                        ch = util::reverseLetterCaseW(ch);
                    }
                }
            }
            if (mpString == currString) {
                mpString->getCursorPos();
                mpString->inputChar(ch);
                mpString->getCursorPos();

                if (meLanguage == CN) {
                    if (hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                }
            } else {
                currString->inputChar(ch);
            }
            if (ch == 0x20) {
                onSE(sound::SE_CHAR_DECIDE);
            } else if (ch != 10) {
                onSE(sound::SE_CHAR_INPUT);
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::onClose() {
            onCommand(INPUT_COMMAND_6, NULL);
            CandidateBoxCaller::makeEmptyCandidate();
            dirtyDrawCache();
            dirtyCursorCache();
        }

        tistring::Decolated* Base::getCurrentString(bool allowIsFix) {
            if (!mbPredictOn)
                return mpString;

            if (meLanguage == KR) {
                if (mpManager->getToolBar()->isQwerty()) {
                    if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                        return mpString;
                    }
                } else {
                    if (mpManager->getCellPhoneKeyboard()->getInputMode() != keyboard::cellphonetype::Base::INPUT_MODE_UNK_0) {
                        return mpString;
                    }
                }
            }

            if (meLanguage == CN) {
                if (mpManager->getCandidateBox()->isInvalid() || !mpManager->getCandidateBox()->isActive()) {
                    return mpString;
                }
            }

            switch (mePredictMode) {
                case PM_Atok:
                    if (!mpUnfixString->isFix() || allowIsFix)
                        return mpUnfixString;
                    break;

                default:
                    if (!mpZiString->isFix() || allowIsFix)
                        return mpZiString;
                    break;
            }
            return mpString;
        }

        bool Base::isAtokActive() const {
            if (mbPredictOn == false)  // Yes, `== false` is necessary
                return false;

            return mePredictMode == PM_Atok;
        }

        void Base::onHKBCtrlCode(textinput::HVKCode code, u32 param_3) {
            tistring::Decolated* ptVar2 = getCurrentString(false);
            switch (code) {
                case HVK_UNK_0x02:
                    if (mePredictMode != PM_Atok)
                        break;
                    toggleAtokMode_(0);
                    break;

                case HVK_UNK_0x11:
                    if (mePredictMode == PM_Atok) {
                        if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_01) {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_02);
                        } else if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_02) {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                        }
                        toggleAtokMode_(1);
                    } else if (meLanguage == KR && !mpManager->getPCKeyboard()->getUnkValue2() && mpManager->getPCKeyboard()->getUnkValue3()) {
                        if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                        } else {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_00);
                        }
                    }
                    break;

                case HVK_UNK_0x12:
                    if (mePredictMode == PM_Atok) {
                        if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00 && !mbPredictOn) {
                            if (!mpManager->getPCKeyboard()->getUnkValue2()) {
                                onSE(sound::SE_CHAR_CURSOR_FIX);
                            }
                        } else {
                            toggleAtokMode_(2);
                        }
                    }
                    break;

                case HVK_UNK_0x24:
                    if (mePredictMode == PM_Atok) {
                        toggleAtokMode_(0);
                    } else if (meLanguage == KR || meLanguage == CN) {
                        if (!mpManager->getPCKeyboard()->getUnkValue2() && mpManager->getPCKeyboard()->getUnkValue3()) {
                            if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                                mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                            } else {
                                mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_00);
                            }
                        }
                    } else if (mePredictMode != PM_Off) {
                        if (mpManager->getCandidateBox()->isActive()) {
                            mpManager->startPredictTurnOn(!mbPredictOn);
                        }
                    }
                    break;

                case HVK_UNK_0x01:
                    if (ptVar2 == mpUnfixString) {
                        updateCandidateState_();
                    }
                    break;

                case HVK_UNK_0x09:
                    onCommand(INPUT_COMMAND_7, NULL);
                    onCommand(INPUT_COMMAND_39, NULL);
                    break;

                case HVK_UNK_0x08:
                    onSpaceKeyHWKB(param_3);
                    break;

                case HVK_UNK_0x1D:
                    onCommand(INPUT_COMMAND_44, NULL);
                    break;
                case HVK_UNK_0x1E:
                    onCommand(INPUT_COMMAND_45, NULL);
                    break;
                case HVK_UNK_0x1F:
                    onCommand(INPUT_COMMAND_42, NULL);
                    break;
                case HVK_UNK_0x20:
                    onCommand(INPUT_COMMAND_43, NULL);
                    break;

                case HVK_UNK_0x10:
                    if (mePredictMode != PM_Atok)
                        break;

                    if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_01) {
                        mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_02);
                    } else if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_02) {
                        mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                    } else if (!mpManager->getPCKeyboard()->getUnkValue2()) {
                        mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                    }
                    break;
            }
        }

        void Base::moveCursorUp() {
            if (-(mfCursorY - mfScrollY) >= 0.0f) {
                u32 start, end;
                mpString->getCursorPos(&start, &end);
                if (start == 0 && end == 0) {
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                } else {
                    onSE(sound::SE_CHAR_CURSOR);
                }
                mpString->setCursorPos(0);
            } else {
                f32 rectifiedY = mfCursorY >= 0.0f ? mfCursorY : 0.0f;
                s32 calculatedPos = calcCursorPos(mfCursorX, rectifiedY - getLineHeight() + 1.0f);
                setCursorPos(mpString, calculatedPos);
                onSE(sound::SE_CHAR_CURSOR);
            }
            meScrollFlag = SF_ScrollOn;
        }
        void Base::moveCursorDown() {
            // TODO: Unfakematch
            f32 scrollY;
            f32 offset = mfCursorY;
            scrollY = mfScrollY;
            offset = offset - scrollY;
            offset = -offset;

            if (offset < getCursorOffsetY()) {
                u32 start, end;
                mpString->getCursorPos(&start, &end);
                if (start == mpString->getLength() && end == mpString->getLength()) {
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                } else {
                    onSE(sound::SE_CHAR_CURSOR);
                }
                mpString->setCursorPos(mpString->getLength());
            } else {
                s32 calculatedPos = calcCursorPos(mfCursorX, getLineHeight() + mfCursorY + 1.0f);
                setCursorPos(mpString, calculatedPos);
                onSE(sound::SE_CHAR_CURSOR);
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::onPressUp() {
            tistring::Decolated* currString = getCurrentString(false);

            if (mpZiString == currString)
                return;

            if (mpUnfixString == currString) {
                if (!mpUnfixString->isKanaFix()) {
                    mpUnfixString->confirmKana();
                }
                if (mpUnfixString->isConverting()) {
                    if (!mpManager->getCandidateBox()->isInScroll()) {
                        tistring::Decolated* currString = getCurrentString(false);
                        if (currString == mpUnfixString) {
                            moveCandAtok_(-1);
                            mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        }
                        onSE(sound::SE_CHAR_CURSOR_FIX);
                    }
                } else {
                    if (mpUnfixString->getInputStringLength() != 0) {
                        mpUnfixString->startConverting();
                        updateCandidateState_();
                        moveCandidateToIdx(0);
                        mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        onCommand(INPUT_COMMAND_47, NULL);
                    }
                }
            } else if (currString == mpString) {
                if (meLanguage == KR && !getCurrentString(false)->isKanaFix()) {
                    mpString->getCursorPos();
                    mpString->inputChar(L'\n');
                    mpString->getCursorPos();
                    if (meLanguage == CN && hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();
                updateCandidateState_();
                if (mpUnfixString->getCandidate() != L' ') {
                    moveCursorUp();
                    onCommand(INPUT_COMMAND_47, NULL);
                }
            }
        }
        void Base::onPressDown() {
            tistring::Decolated* currString = getCurrentString(false);

            if (mpZiString == currString)
                return;

            if (mpUnfixString == currString) {
                if (!mpUnfixString->isKanaFix()) {
                    mpUnfixString->confirmKana();
                }
                if (mpUnfixString->isConverting()) {
                    if (!mpManager->getCandidateBox()->isInScroll()) {
                        tistring::Decolated* currString = getCurrentString(false);
                        if (currString == mpUnfixString) {
                            moveCandAtok_(1);
                            mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        }
                        onSE(sound::SE_CHAR_CURSOR_FIX);
                    }
                } else {
                    if (mpUnfixString->getInputStringLength() != 0) {
                        mpUnfixString->startConverting();
                        updateCandidateState_();
                        moveCandidateToIdx(0);
                        mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        onCommand(INPUT_COMMAND_47, NULL);
                    }
                }
            } else if (currString == mpString) {
                if (meLanguage == KR && !getCurrentString(false)->isKanaFix()) {
                    mpString->getCursorPos();
                    mpString->inputChar(L'\n');
                    mpString->getCursorPos();
                    if (meLanguage == CN && hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();
                updateCandidateState_();
                if (mpUnfixString->getCandidate() != L' ') {
                    moveCursorDown();
                    onCommand(INPUT_COMMAND_47, NULL);
                }
            }
        }
        void Base::onPressLeft() {
            tistring::Decolated* currString = getCurrentString(false);
            currString->getCursorPos();

            if (currString == mpString) {
                if (meLanguage == KR) {
                    if (!getCurrentString(false)->isKanaFix()) {
                        mpString->getCursorPos();
                        mpString->inputChar(L'\n');
                        mpString->getCursorPos();
                        if (meLanguage == CN && hasZiPredicted_()) {
                            mpZiString->setCurrentWord(NULL);
                            mpZiString->update();
                        }
                    }
                    currString->getCursorPos();
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();

                updateCandidateState_();
                if (mpUnfixString->getCandidate() == L' ')
                    return;
            }
            if (currString->moveCursorLeft()) {
                onSE(sound::SE_CHAR_CURSOR);
            } else {
                onSE(sound::SE_CHAR_CURSOR_FIX);
            }

            if (currString == mpUnfixString) {
                updateCandidateState_();
            }
            meScrollFlag = SF_ScrollOn;
        }
        void Base::onPressRight() {
            tistring::Decolated* currString = getCurrentString(false);
            currString->getCursorPos();

            if (currString == mpString) {
                if (meLanguage == KR) {
                    if (!getCurrentString(false)->isKanaFix()) {
                        mpString->getCursorPos();
                        mpString->inputChar(L'\n');
                        mpString->getCursorPos();
                        if (meLanguage == CN && hasZiPredicted_()) {
                            mpZiString->setCurrentWord(NULL);
                            mpZiString->update();
                        }
                    }
                    currString->getCursorPos();
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();

                updateCandidateState_();
                if (mpUnfixString->getCandidate() == L' ')
                    return;
            }
            if (currString->moveCursorRight() && mbRightWithSpace) {
                Command0Data cmdData = {L' ', 0, 0, 0};
                onCommand(INPUT_COMMAND_0, &cmdData);
                onSE(sound::SE_CHAR_CURSOR);
            }

            if (currString == mpZiString || currString == mpUnfixString) {
                onSE(sound::SE_CHAR_CURSOR_FIX);
            } else {
                onSE(sound::SE_CHAR_CURSOR);
            }

            if (currString == mpUnfixString) {
                updateCandidateState_();
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::onPressDownHWKB() {
            tistring::Decolated* currString = getCurrentString(false);

            const u32 modifierState = input::HKBManager::getInstance().GetModifierState();

            if (currString == mpString) {
                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();
                updateCandidateState_();

                if (meLanguage == KR && !getCurrentString(false)->isKanaFix()) {
                    mpString->getCursorPos();
                    mpString->inputChar(L'\n');
                    mpString->getCursorPos();
                    if (meLanguage == CN && hasZiPredicted_()) {
                        mpZiString->setCurrentWord(NULL);
                        mpZiString->update();
                    }
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                if (mpUnfixString->getCandidate() != L' ') {
                    moveCursorDown();
                    onCommand(INPUT_COMMAND_47, NULL);
                }
                return;
            }

            if (mpUnfixString == currString) {
                if (!mpUnfixString->isKanaFix()) {
                    mpUnfixString->confirmKana();
                }
                if (mpUnfixString->isConverting()) {
                    if (modifierState & KBD_HID_MOD_SHIFT) {
                        // s16 newIdx = mpUnfixString->getSelectedConverting();
                        mpUnfixString->commitPredicted(mpUnfixString->getSelectedConverting());
                        updateCandidateState_();
                        return;
                    } else if (!mpManager->getCandidateBox()->isInScroll()) {
                        tistring::Decolated* currString = getCurrentString(false);
                        if (currString == mpUnfixString) {
                            moveCandAtok_(+1);
                            mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        }
                        onSE(sound::SE_CHAR_CURSOR_FIX);
                    }
                } else if (mpUnfixString->getInputStringLength() != 0) {
                    mpUnfixString->startConverting();
                    updateCandidateState_();
                    moveCandidateToIdx(0);
                    mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                    onCommand(INPUT_COMMAND_47, NULL);
                }
                return;
            }
            if (mpZiString == currString) {
                return;  // This is required, I guess??
            }
        }
        void Base::onPressLeftHWKB() {
            tistring::Decolated* currString = getCurrentString(false);
            const u32 modifierState = input::HKBManager::getInstance().GetModifierState();

            currString->getCursorPos();

            if (currString == mpString) {
                if (meLanguage == KR) {
                    if (!getCurrentString(false)->isKanaFix()) {
                        mpString->getCursorPos();
                        mpString->inputChar(L'\n');
                        mpString->getCursorPos();
                        if (meLanguage == CN && hasZiPredicted_()) {
                            mpZiString->setCurrentWord(NULL);
                            mpZiString->update();
                        }
                    }
                    currString->getCursorPos();
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();

                updateCandidateState_();
                if (currString->moveCursorLeft()) {
                    onSE(sound::SE_CHAR_CURSOR);
                } else {
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                }
            } else if (currString == mpUnfixString) {
                if (mpManager->getCandidateBox()->isInScroll())
                    return;

                if (mpUnfixString->getCurrentNumPredicted() <= 0) {
                    return;
                }
                if (mpUnfixString->isConverting()) {
                    onPressLeft();
                    return;
                }

                // mpUnfixString->closeDictionary();

                s16 newIdx = mpUnfixString->getSelectedCandidate() - 1;
                if (newIdx < -1) {
                    newIdx = 0;
                } else if (newIdx < 0) {
                    // @bug Maybe? I think it should be +1.
                    newIdx = mpUnfixString->getCurrentNumPredicted() - 1;
                }
                moveCandidateToIdx(newIdx);
                mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                onSE(sound::SE_CHAR_CURSOR_FIX);
            } else if (currString == mpZiString) {
                if (mpManager->getCandidateBox()->isInScroll())
                    return;

                bool optionWasSelected = mbZuSelected;
                mbZuSelected = true;

                if (mpZiString->getCurrentNumPredicted() < 0)
                    return;

                s32 candidateidx = mpZiString->getSelectedCandidate();
                if (optionWasSelected) {
                    candidateidx--;
                }

                if (candidateidx < 0) {
                    candidateidx = mpZiString->getCurrentNumPredicted() - 1;
                }

                moveCandidateToIdx(candidateidx);
                mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                onSE(sound::SE_CHAR_CURSOR_FIX);
            }
            meScrollFlag = SF_ScrollOn;
        }
        void Base::onPressRightHWKB() {
            tistring::Decolated* currString = getCurrentString(false);
            const u32 modifierState = input::HKBManager::getInstance().GetModifierState();

            currString->getCursorPos();

            if (currString == mpString) {
                if (meLanguage == KR) {
                    if (!getCurrentString(false)->isKanaFix()) {
                        mpString->getCursorPos();
                        mpString->inputChar(L'\n');
                        mpString->getCursorPos();
                        if (meLanguage == CN && hasZiPredicted_()) {
                            mpZiString->setCurrentWord(NULL);
                            mpZiString->update();
                        }
                    }
                    currString->getCursorPos();
                }
                if (currString->hasCandidate() || !currString->isKanaFix())
                    return;

                mpManager->getHWKeyboard()->resetQuotes();
                mpUnfixString->resetRelation();

                updateCandidateState_();
                if (currString->moveCursorRight()) {
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                } else {
                    onSE(sound::SE_CHAR_CURSOR);
                }
            } else if (currString == mpUnfixString) {
                if (mpManager->getCandidateBox()->isInScroll())
                    return;

                if (mpUnfixString->getCurrentNumPredicted() <= 0) {
                    return;
                }
                if (mpUnfixString->isConverting()) {
                    currString->moveCursorRight();
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                    updateCandidateState_();
                } else {
                    s16 newIdx = mpUnfixString->getSelectedCandidate() + 1;
                    if (newIdx >= mpUnfixString->getCurrentNumPredicted()) {
                        newIdx = 0;
                    }
                    moveCandidateToIdx(newIdx);
                    mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                    onSE(sound::SE_CHAR_CURSOR_FIX);
                }

            } else if (currString == mpZiString) {
                if (mpManager->getCandidateBox()->isInScroll())
                    return;

                bool optionWasSelected = mbZuSelected;
                mbZuSelected = true;

                if (mpZiString->getCurrentNumPredicted() < 0)
                    return;

                s32 candidateidx = mpZiString->getSelectedCandidate();
                if (optionWasSelected) {
                    candidateidx++;
                }

                if (candidateidx >= mpZiString->getCurrentNumPredicted()) {
                    candidateidx = 0;
                }
                if (candidateidx < 0) {
                    candidateidx = 0;
                }

                moveCandidateToIdx(candidateidx);
                mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                onSE(sound::SE_CHAR_CURSOR_FIX);
            }
            meScrollFlag = SF_ScrollOn;
        }

        void Base::moveCandidateToIdx(s32 idx) {
            if (mbPredictOn) {
                if (mpManager->getCandidateBox()->isInScroll())
                    return;

                if (mePredictMode == PM_Atok) {
                    if (mpUnfixString->getFixedPredictionNum() && !mpUnfixString->isConverting()) {
                        mpUnfixString->confirm(NULL);

                        const wchar_t* confirmed = mpUnfixString->getConfirmedWCString();
                        mpString->getCursorPos();
                        mpString->confirm(confirmed);
                        mpString->getCursorPos();

                        mpUnfixString->enableConfirmedString(false);
                    }
                    mpUnfixString->setSelectedCandidate(idx);
                } else {
                    mpZiString->setSelectedCandidate(idx);
                }
                mpManager->getCandidateBox()->getTextArea()->ChangeSelectedText(idx);

            } else {
                meScrollFlag = SF_ScrollOn;
            }
        }

        void Base::toggleAtokMode_(u8 param_2) {
            bool uVar1;
            if (!mpManager->getToolBar()->isEnableKeytopChange() && !mpManager->getToolBar()->isQwerty()) {
                uVar1 = false;
            } else {
                uVar1 = !mpManager->getPCKeyboard()->getUnkValue2();
            }
            if (!uVar1)
                return;

            bool b3;
            if (mpManager->getCandidateBox()->isActive()) {
                if (mpManager->isPredictTurning())
                    return;

                b3 = !mbPredictOn;
                if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                    b3 = true;
                }
            } else {
                b3 = mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00;
            }

            bool b2 = b3;
            if (b3 && param_2 == 2) {
                b2 = false;
            } else if (!b3 && param_2 == 1) {
                b2 = true;
            }

            if (b2) {
                if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                    mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                }
            } else {
                mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_00);
            }

            if (mpManager->getCandidateBox()->isActive() && mbPredictOn != b2) {
                mpManager->startPredictTurnOn(!mbPredictOn);
            }
        }

        bool Base::isVacancy() const {
            if (mpString->getLength() != 0 || !mpString->isKanaFix())
                return false;

            if (mePredictMode == PM_Atok) {
                if (!mpUnfixString->isFix())
                    return false;

                if (mpString->getLength() != 0)
                    return false;

                if (mpUnfixString->isCandidateSelected())
                    return false;
            } else {
                if (mePredictMode == PM_Kr)
                    return true;

                if (mePredictMode != PM_Off) {
                    if (mpZiString->getLength() != 0)
                        return false;

                    wchar_t currString[0x10];
                    if (mpZiString->getCurrentInput(currString, 0x10) > 0)
                        return false;

                    if (mbCursorSelected | mbZuSelected) {
                        const wchar_t* currSelected = mpZiString->getCurrentSelected();
                        if (currSelected != NULL && currSelected[0] != 0xFFFE)
                            return false;
                    }
                }
            }
            return true;
        }

        void Base::dirtyCacheAll() {
            dirtyCursorCache();
            dirtyDrawCache();
        }

        void Base::notifyChangeMode() {
            if (mePredictMode == PM_Atok) {
                if (!mpManager->getToolBar()->isQwerty() || !mpManager->getPCKeyboard()->isABC() ||
                    mpManager->getPCKeyboard()->getTranslateMode() != keyboard::pctype::Base::TM_00) {
                    if (!mpManager->getToolBar()->isQwerty()) {
                        mpManager->getCellPhoneKeyboard()->getInputMode();
                    }
                }

                if (mpUnfixString->getInputStringLength() == 0) {
                    updateCandidateState_();
                }
            } else {
                if (mePredictMode == PM_Kr) {
                    tistring::WithZi::PredictLanguage koPredictLang;
                    if (mpManager->getToolBar()->isQwerty()) {
                        koPredictLang = tistring::WithZi::PREDICT_LANG_KO_ROMA;
                    } else {
                        koPredictLang = tistring::WithZi::PREDICT_LANG_KO_SYLL;
                    }
                    mpZiString->setPredictLaunguage(koPredictLang);
                } else if (mePredictMode == PM_Cn) {
                    if (mbPredictOn) {
                        mpZiString->setCurrentWord(NULL);
                    }
                }
            }
        }

        void Base::resetContextPredict_() {
            getCurrentString(false);
            if (mpZiString != NULL && meLanguage == CN) {
                mpZiString->setCurrentWord(NULL);
                mpZiString->update();
                updateCandidateState_();
            }
        }

        bool Base::hasZiCandidates_() const {
            if (!mbPredictOn)
                return false;

            if (mePredictMode == PM_Atok)
                return false;

            // NOTE: Probably a getManager() function that does magical
            // const pointer bs
            if (meLanguage == CN) {
                const Manager* manager = mpManager;
                if (manager->getCandidateBox()->isInvalid()) {
                    return false;
                }
            }
            return true;
        }
        void Base::onSpaceKeyHWKB(u32 param_2) {
            tistring::Decolated* currString = getCurrentString(false);
            if (param_2 & 8) {
                if (meLanguage == CN || meLanguage == KR) {
                    if (!mpManager->getPCKeyboard()->getUnkValue2() && mpManager->getPCKeyboard()->getUnkValue3()) {
                        if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_01);
                        } else {
                            mpManager->getPCKeyboard()->setTranslateMode(keyboard::pctype::Base::TM_00);
                        }
                    }
                }
                return;
            }

            if (hasZiCandidates_()) {
                if (hasZiPredicted_()) {
                    if (!(mbCursorSelected | mbZuSelected) && mpManager->getToolBar()->isQwerty()) {
                        if (meLanguage != CN && meLanguage != KR && mbPredictOn && mePredictMode != PM_Atok) {
                            commitZi_();
                        }
                    } else {
                        confirmInput_();
                    }
                    updateCandidateState_();
                }
            } else {
                bool useAtok = !mbPredictOn ? false : mePredictMode == PM_Atok;
                if (useAtok && currString == mpUnfixString) {
                    if (!mpUnfixString->isKanaFix()) {
                        mpUnfixString->confirmKana();
                    }
                    if (mpUnfixString->isConverting()) {
                        if (mpManager->getCandidateBox()->isInScroll())
                            return;

                        if (param_2 & 2) {
                            tistring::Decolated* currString = getCurrentString(false);
                            if (currString == mpUnfixString) {
                                moveCandAtok_(-1);
                                mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                            }
                        } else {
                            tistring::Decolated* currString = getCurrentString(false);
                            if (currString == mpUnfixString) {
                                moveCandAtok_(1);
                                mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                            }
                        }
                        onSE(sound::SE_CHAR_CURSOR_FIX);
                        mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                    } else if (mpUnfixString->getInputStringLength() != 0) {
                        mpUnfixString->startConverting();
                        updateCandidateState_();

                        moveCandidateToIdx(0);
                        mpManager->getCandidateBox()->getTextArea()->ScrollToSelectedText();
                        onCommand(INPUT_COMMAND_47, NULL);
                    }
                    return;
                }
            }

            mDKStream.putSpace(L' ');

            if (hasZiCandidates_()) {
                while (true) {
                    wchar_t ch = mDKStream.getChar();
                    if (DeadKeyStream::isCompatibleFilterEnabled()) {
                        while (!charIsIncompatible(ch)) {
                            ch = mDKStream.getChar();
                        }
                    }
                    if (ch == L'\0')
                        break;
                    inputCharZi_(ch, param_2);
                }
            } else {
                while (true) {
                    wchar_t ch = mDKStream.getChar();
                    if (DeadKeyStream::isCompatibleFilterEnabled()) {
                        while (!charIsIncompatible(ch)) {
                            ch = mDKStream.getChar();
                        }
                    }
                    if (ch == L'\0')
                        break;
                    inputCharDefault_(ch, param_2);
                }
            }
            updateCandidateState_();
        }

        void Base::deselectCandidate() {
            if (!mbPredictOn)
                return;
            if (mePredictMode != PM_Atok)
                return;
            mpUnfixString->setSelectedCandidate(-1);
        }

        void Base::resetRelation() {
            mpManager->getHWKeyboard()->resetQuotes();
            mpUnfixString->resetRelation();
        }

        char textboxPaneName[] = "T_2l_TextBox";
        LayoutByNW4R::LayoutByNW4R(Manager* manager, nw4r::lyt::MultiArcResourceAccessor* resAccessor, const char* layoutBinName,
                                   EventObserver* event, const char* fontName)
            : Base(manager), Layout(resAccessor, layoutBinName, event), unk_0x2C0(textboxPaneName), mpLangDepData(&csLanguageDependencyDataUEJ),
              mpFontName(fontName), mbAbleToUp(false), mbAbleToDown(false), mbVisibleSeparator(false), mpEventHandler(NULL), mFont() {
        }

        LayoutByNW4R::~LayoutByNW4R() {
            if (mpEventHandler != NULL) {
                mpEventHandler->~EventHandler();
                MEMFreeToAllocator(mpAllocator, mpEventHandler);
            }

            for (AnmPane* currPane = (AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes); currPane != NULL;
                 currPane = currPane = (AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes)) {
                nw4r::ut::List_Remove(&mAnmPanes, currPane);
                currPane->destroy(mpAllocator);
            }
        }

        nw4r::lyt::TextBox* LayoutByNW4R::setupTextBox_() {
            nw4r::lyt::TextBox* tb = (nw4r::lyt::TextBox*)mpLayout->GetRootPane()->FindPaneByName(unk_0x2C0);
            tb->SetString(L"");
            setLetterTracking(tb->GetCharSpace());
            setLineLeading(tb->GetLineSpace());
            setFontW(tb->GetFontSize().width);
            setFontH(tb->GetFontSize().height);

            mRect = tb->GetPaneRect(mDrawInfo);
            AdjustPaneMtx(mMtx.mtx, mDrawInfo, tb->GetGlobalMtx());
            return tb;
        }

        void LayoutByNW4R::create(MEMAllocator* allocator, EditBuffer* editBuffer) {
            Base::create(allocator, editBuffer);

            mpEventHandler = new (MEMAllocFromAllocator(allocator, sizeof(EventHandler))) EventHandler(this);
            Layout::createWithEventHandler(allocator, mpEventHandler);
            if (mpFontName == NULL) {
                mpFontName = "RevoIpl_RodinNTLGProM_32_I4.brfnt";
                mFont.SetResource(mpMultiArcResourceAccessor->GetResource(0, mpFontName));
                mFont.SetAlternateChar(0xE06B);
                setFont(mFont);
            } else {
                mpMultiArcResourceAccessor->GetFont(mpFontName)->SetAlternateChar(0xE06B);
                setFont(*mpMultiArcResourceAccessor->GetFont(mpFontName));
            }

            csCharColor = setupTextBox_()->GetTextColor(0);

            setVisible("N_2line", true);
            mpPaneManager->setAllComponentTriggerTarget(false);
            mpPaneManager->setAllBoundingBoxComponentTriggerTarget(true);

            {
                nw4r::lyt::Pane* pane = mpLayout->GetRootPane()->FindPaneByName(mpLangDepData->mainTextBoxName);
                if (pane == NULL) {
                    pane = mpLayout->GetRootPane()->FindPaneByName(getPaneNameB_());
                }
                mpPaneManager->getPaneComponentByPane(pane)->setTriggerTarget(true);
            }

            const char* forceAddName;
            for (u16 i = 0; i < ARRAY_LENGTH(csPaneToAnimation); i++) {
                const PaneToAnimation* currPaneToAnim = &csPaneToAnimation[i];

                AnmPane* pane = NULL;
                switch (currPaneToAnim->type) {
                    case 0:
                        pane = new (MEMAllocFromAllocator(allocator, sizeof(NormalButtonAnmPane)))
                            NormalButtonAnmPane(getPane(currPaneToAnim->paneName), NULL);
                        break;
                }
                nw4r::ut::List_Append(&mAnmPanes, pane);

                forceAddName = currPaneToAnim->forceAddName;
                u16 j;
                u32 count = currPaneToAnim->count;
                for (j = 0; j < count; j++) {
                    int jI = j;
                    // initAnimationsForPane_(allocator, pane, currPaneToAnim, forceAddName, j);
                    void* resource = mpMultiArcResourceAccessor->GetResource(0, currPaneToAnim->pAnims[jI]->fileName);
                    AnimTransformPane* transform = (AnimTransformPane*)getLayout()->CreateAnimTransform(resource, mpMultiArcResourceAccessor);
                    if (forceAddName == NULL) {
                        pane->addAnimation(allocator, currPaneToAnim->pAnims[jI]->id, transform, false, true);
                    } else {
                        pane->forceAddAnimation(allocator, currPaneToAnim->pAnims[jI]->id, transform, forceAddName, false, true);
                    }
                }
            }
            init();
        }

        void LayoutByNW4R::init() {
            Base::init();
            searchAnmPane("P_txtScrll_UP")->changeAnimation(ANIMID_OFF);
            searchAnmPane("P_txtScrll_DOWN")->changeAnimation(ANIMID_OFF);

            mbAbleToUp = false;
            mbAbleToDown = false;
            mRepeatTimerA = 0;
            mRepeatTimerB = 0;
            mRepeatTimerC = 0;
            mRepeatTimerD = 0;
            unk_0x304 = 0;
            mCharColor = csCharColor;

            visibleSeparator(false);

            setupTextBox_();

            mpLayout->Animate();
            mpLayout->CalculateMtx(mDrawInfo);

            const VisiblePane* pane = mpLangDepData->pane;
            for (u16 i = 0; i < pane->showCount; i++) {
                setVisible(pane->showPaneNames[i], true);
            }
            for (u16 i = 0; i < pane->hideCount; i++) {
                setVisible(pane->hidePaneNames[i], false);
            }
        }

        void LayoutByNW4R::visibleSeparator(bool flag) {
            mbVisibleSeparator = flag;
        }

        void LayoutByNW4R::draw() {
            nw4rmanager::Layout::draw();
            muGlobalAlpha = getLayout()->GetRootPane()->GetAlpha();
            AdjustPaneMtx(mMtx.mtx, mDrawInfo, mpLayout->GetRootPane()->FindPaneByName(unk_0x2C0)->GetGlobalMtx());

            Base::draw();
        }

        void LayoutByNW4R::calc() {
            Base::calc();
            nw4rmanager::Layout::calc();

            bool newAbleToUp = false;
            bool newAbleToDown = false;

            if (getPane(mpLangDepData->sepBarPaneName)) {
                setVisible(mpLangDepData->sepBarPaneName, mbVisibleSeparator);
            } else {
                setVisible("N_separateBarAll", mbVisibleSeparator);
            }

            if (!mScrollAnm.isActive()) {
                if (0.0f > mfScrollY) {
                    newAbleToUp = true;
                }
                if (getCursorOffsetY() < mfScrollY) {
                    newAbleToDown = true;
                }

                if (mbAbleToUp != newAbleToUp) {
                    mbAbleToUp = newAbleToUp;
                    if (newAbleToUp) {
                        searchAnmPane("P_txtScrll_UP")->onAnmEvent(nw4rmanager::AnmPane::PE_6);
                        mpPaneManager->searchPaneComponent("P_txtScrll_UP")->init();
                    } else {
                        searchAnmPane("P_txtScrll_UP")->onAnmEvent(nw4rmanager::AnmPane::PE_7);
                    }
                }
                if (mbAbleToDown != newAbleToDown) {
                    mbAbleToDown = newAbleToDown;
                    if (newAbleToDown) {
                        searchAnmPane("P_txtScrll_DOWN")->onAnmEvent(nw4rmanager::AnmPane::PE_6);
                        mpPaneManager->searchPaneComponent("P_txtScrll_DOWN")->init();
                    } else {
                        searchAnmPane("P_txtScrll_DOWN")->onAnmEvent(nw4rmanager::AnmPane::PE_7);
                    }
                }
            }
        }

        void LayoutByNW4R::setLanguage(Language language) {
            Base::setLanguage(language);
            if (language == CN) {
                mpLangDepData = &csLanguageDependencyDataCHN;
            } else if (language == KR) {
                mpLangDepData = &csLanguageDependencyDataKOR;
            } else {
                mpLangDepData = &csLanguageDependencyDataUEJ;
            }

            unk_0x2C0 = getPaneNameB_();
            if (strcmp(unk_0x2C0, textboxPaneName) != 0) {
                setVisible(textboxPaneName, false);
            }

            ((nw4r::lyt::TextBox*)mpLayout->GetRootPane()->FindPaneByName(getPaneNameB_()))->SetString(L"");

            const VisiblePane* pane = mpLangDepData->pane;
            for (u16 i = 0; i < pane->showCount; i++) {
                setVisible(pane->showPaneNames[i], true);
            }
            for (u16 i = 0; i < pane->hideCount; i++) {
                setVisible(pane->hidePaneNames[i], false);
            }

            mpPaneManager->getPaneComponentByPane(mpLayout->GetRootPane()->FindPaneByName(getPaneNameB_()))->setTriggerTarget(true);
            if (getPane("T_title_text") == NULL)
                return;

            nw4r::lyt::TextBox* titleTextBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(getPane("T_title_text"));
            if (getPane(mpLangDepData->titleTextBoxName) == NULL)
                return;

            nw4r::lyt::TextBox* tb2 = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(getPane(mpLangDepData->titleTextBoxName));
            titleTextBox->SetCharSpace(tb2->GetCharSpace());
            titleTextBox->SetLineSpace(tb2->GetLineSpace());
            titleTextBox->SetFontSize(tb2->GetFontSize());
            titleTextBox->SetTranslate(tb2->GetTranslate());
            titleTextBox->SetSize(tb2->GetSize());
        }

        void LayoutByNW4R::updateInputCommon(int chan, u32 trig, u32 hold, u32 release, void* data) {
            updateRepeatInput(trig, hold);
            if ((unk_0x304 & 0x1000) != 0) {
                onCommand(INPUT_COMMAND_1, NULL);
            }
        }

        bool LayoutByNW4R::updateInput(int chan, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
            u32 oldFlags = unk_0x304;
            if (oldFlags & 1) {
                onCommand(INPUT_COMMAND_8, NULL);
            }
            if (oldFlags & 2) {
                onCommand(INPUT_COMMAND_9, NULL);
            }
            if (oldFlags & 8) {
                onCommand(INPUT_COMMAND_10, NULL);
            }
            if (oldFlags & 4) {
                onCommand(INPUT_COMMAND_11, NULL);
            }

            bool ret = Layout::updateInput(chan, x, y, trig, hold, release, data);

            if ((release & 0x800) != 0 && mpString->isOnSustain()) {
                onCommand(INPUT_COMMAND_13, NULL);
            }
            if (!ret && (hold & 0x800) != 0 && mpString->isOnSustain()) {
                nw4r::math::VEC2 pos(x, y);

                if (-y < (mRect.top - mRect.bottom) / 2 + getGlobalLeftTopPos().y) {
                    pos.y = getGlobalLeftTopPos().y - 1.0f;
                } else {
                    pos.y = (mRect.top - mRect.bottom) + getGlobalLeftTopPos().y + 1.0f;
                }
                onCommand(INPUT_COMMAND_POINT_HOLD, &pos);
            }
            return ret;
        }

        bool LayoutByNW4R::updateInput(textinput::input::HKBManager& hkbManager) {
            return Layout::updateInput(hkbManager);
        }

        void LayoutByNW4R::updateRepeatInput(u32 trig, u32 hold) {
            unk_0x304 = trig;
            if (hold & 1) {
                if (--mRepeatTimerC == 0) {
                    unk_0x304 |= 1;
                    mRepeatTimerC = 9;
                }
            } else {
                mRepeatTimerC = 30;
            }

            if (hold & 2) {
                if (--mRepeatTimerD == 0) {
                    unk_0x304 |= 2;
                    mRepeatTimerD = 9;
                }
            } else {
                mRepeatTimerD = 30;
            }

            if (hold & 8) {
                if (--mRepeatTimerA == 0) {
                    unk_0x304 |= 8;
                    mRepeatTimerA = 9;
                }
            } else {
                mRepeatTimerA = 30;
            }

            if (hold & 4) {
                if (--mRepeatTimerB == 0) {
                    unk_0x304 |= 4;
                    mRepeatTimerB = 9;
                }
            } else {
                mRepeatTimerB = 30;
            }

            if (hold & 0x1000) {
                if (--mRepeatTimerE == 0) {
                    unk_0x304 |= 0x1000;
                    mRepeatTimerE = 9;
                }
            } else {
                mRepeatTimerE = 30;
            }
        }

        nw4r::math::VEC2 LayoutByNW4R::getScale() const {
            return mpLayout->GetRootPane()->FindPaneByName(unk_0x2C0)->GetScale();
        }

        void LayoutByNW4R::onCommand(INPUT_COMMAND command, void* data) {
            mpEventObserver->onInput(command, data);
            mpEventObserver->onCommand(command, data);
            Base::onCommand(command, data);

            if (command == INPUT_COMMAND_GET_PREDICT_MODE)
                return;

            u32 maxStringLen = muLimitStringLength;
            u32 local_18;
            u32 auStack_1c;
            if (meLanguage == KR) {
                mpString->getCursorPos(&local_18, &auStack_1c);
                if (local_18 >= maxStringLen && !mpString->isKanaFix()) {
                    mpString->clearKana();
                    onSE(sound::SE_CHAR_DELETE_ERROR);
                }
                if (!mpString->isKanaFix()) {
                    maxStringLen = muLimitStringLength - 1;
                }
            }

            if (maxStringLen < mpString->getLength()) {
                u32 start, end;
                mpString->getCursorPos(&start, &end);
                if (start > maxStringLen || end > maxStringLen) {
                    onSE(sound::SE_CHAR_DELETE_ERROR);
                    Base::onCommand(INPUT_COMMAND_36, &maxStringLen);
                }
            }

            u32 maxLen;
            switch (command) {
                case INPUT_COMMAND_34:
                default:
                    maxLen = maxStringLen;
                    if (maxLen < mpString->getLength()) {
                        if (mpString->getLength() > maxLen) {
                            mpString->getLength();
                        }
                        mpString->setLength(maxLen);
                        mpEventObserver->onOutOfLength();
                        if (command == INPUT_COMMAND_6 || command == INPUT_COMMAND_5 || command == INPUT_COMMAND_0 || command == INPUT_COMMAND_38 ||
                            command == INPUT_COMMAND_21 || command == INPUT_COMMAND_7) {
                            onSE(sound::SE_CHAR_DELETE_ERROR);
                        }
                    }
                case INPUT_COMMAND_32:
                case INPUT_COMMAND_33:
                case INPUT_COMMAND_35:
                    maxLen = isOverRowLimit(muLimitRowNum, mpString->getWCString());
                    u32 local_28 = maxLen;
                    if (maxLen != 0) {
                        if (mpString->getLength() > maxLen) {
                            mpString->getLength();
                        }
                        mpString->setLength(maxLen);
                        mpEventObserver->onOutOfLength();
                        onSE(sound::SE_CHAR_DELETE_ERROR);
                        Base::onCommand(INPUT_COMMAND_36, &local_28);
                        if (meLanguage == KR && !mpString->isKanaFix()) {
                            local_28 = isOverRowLimit(muLimitRowNum, mpString->getWCString());
                            if (local_28 != 0) {
                                mpString->clearKana();
                            }
                        }
                    }
                    break;
            }
        }

        u32 Base::isOverRowLimit(u32 limitRowNum, const wchar_t* string) {
            const wchar_t* currStr = string;
            if (string[0] == L'\0') {
                return 0;
            }

            u32 lineIdx;
            bool kanaAlreadyUsed;
            bool usingKana;
            const wchar_t* strToUse;
            u32 strI;

            u32 cursorStart, cursorEnd;

            f32 currX = getScale().x;
            nw4r::math::VEC2 baseScale = getScale();
            strI = 0;
            lineIdx = 0;
            kanaAlreadyUsed = false;

            muWordWrapCounter = 0;
            mbHyphen = false;

            mpString->getCursorPos(&cursorStart, &cursorEnd);

            while (true) {
                DrawInfo chDrawInfo;

                usingKana = false;
                if (meLanguage == KR && !kanaAlreadyUsed && cursorStart == strI) {
                    kanaAlreadyUsed = true;
                    strToUse = mpString->getKanaBuffer();
                    if (*strToUse != L'\0') {
                        usingKana = true;
                    }
                }
                if (!usingKana) {
                    if (*currStr == L'\0') {
                        break;
                    }
                    strToUse = currStr;
                }
                chDrawInfo.ch = *strToUse;
                calcRect(chDrawInfo);

                f32 xAfterChar = currX + baseScale.x * chDrawInfo.rect.GetWidth();
                if (usingKana) {
                    if (xAfterChar >= baseScale.x * mRect.GetWidth()) {
                        currX = getScale().x;
                        if (++lineIdx >= limitRowNum) {
                            return strI;
                        }
                    } else {
                        currX = xAfterChar;
                    }
                } else {
                    if (doWordWrap(string, strI, currX)) {
                        if (++lineIdx >= limitRowNum) {
                            while (strI < muWordWrapCounter) {
                                f32 advanceW = baseScale.x * chDrawInfo.rect.GetWidth();
                                f32 maxW = baseScale.x * mRect.GetWidth();
                                f32 newX = currX + advanceW;
                                if (newX >= maxW) {
                                    return strI;
                                }

                                chDrawInfo.ch = *++currStr;
                                currX = currX + baseScale.x * chDrawInfo.rect.GetWidth();
                                calcRect(chDrawInfo);
                                strI++;
                            }
                            return muWordWrapCounter - 1;
                        }
                        currX = getScale().x;
                    } else if (xAfterChar >= baseScale.x * mRect.GetWidth()) {
                        currX = getScale().x;
                        if (++lineIdx >= limitRowNum) {
                            return strI;
                        }
                    }

                    if (currStr[0] == L'\n') {
                        currX = getScale().x;

                        if (++lineIdx >= limitRowNum) {
                            return strI;
                        }
                        if (currStr[1] == L'\0') {
                            return 0;
                        }
                    } else {
                        currX = currX + baseScale.x * chDrawInfo.rect.GetWidth();
                    }

                    strI++;
                    currStr++;
                }
            }
            return 0;
        }

        void LayoutByNW4R::onSE(sound::SE seId) {
            mpEventObserver->onSE(seId);
        }

        void LayoutByNW4R::setRootPaneScaleFor16x9() {
            Layout::setRootPaneScaleFor16x9();
            Base::setAspectRatio(false);
        }
        void LayoutByNW4R::setRootPaneScaleFor4x3() {
            Layout::setRootPaneScaleFor4x3();
            Base::setAspectRatio(true);
        }

        void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
            char anmPaneName[17];

            const char* __s1 = paneComponent->getPane()->GetName();
            nw4r::math::VEC2 inputPos;
            inputPos.x = input->x;
            inputPos.y = -input->y;
            if (__s1[0] == 'B') {
                util::replaceChar(anmPaneName, ARRAY_LENGTH(anmPaneName), __s1, 0, 'P');

                if (event == 4 && (input->field_0x0C & 0x800) != 0 && !mpLyt->isInScroll()) {
                    if (mpLyt->isAbleToUp() && util::strcmp("P_txtScrll_UP", anmPaneName)) {
                        CommandReceiver::Scroll cmdData = {};
                        cmdData.y = mpLyt->getLineHeight();
                        mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_24, &cmdData);

                        mpLyt->searchAnmPane(anmPaneName)->onAnmEvent(AnmPane::PE_0);
                    } else if (mpLyt->isAbleToDown() && util::strcmp("P_txtScrll_DOWN", anmPaneName)) {
                        CommandReceiver::Scroll cmdData = {};
                        cmdData.y = -mpLyt->getLineHeight();
                        mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_24, &cmdData);

                        mpLyt->searchAnmPane(anmPaneName)->onAnmEvent(AnmPane::PE_0);
                    }
                }

                if (event == 2 && (input->field_0x10 & 0x800) != 0 && (input->field_0x0C & 0x800) == 0) {
                    if (mpLyt->isAbleToUp() && util::strcmp("P_txtScrll_UP", anmPaneName)) {
                        if (paneComponent->isDragging(input->field_0x00)) {
                            u32 flightDuration = mpLyt->getFlightDuration(input->field_0x00, __s1);
                            if (flightDuration >= 60 && flightDuration % 20 == 0) {
                                CommandReceiver::Scroll cmdData = {};
                                cmdData.y = mpLyt->getLineHeight();
                                mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_24, &cmdData);

                                mpLyt->searchAnmPane(anmPaneName)->onAnmEvent(AnmPane::PE_0);
                            }
                        }
                    } else if (mpLyt->isAbleToDown() && util::strcmp("P_txtScrll_DOWN", anmPaneName)) {
                        if (paneComponent->isDragging(input->field_0x00)) {
                            u32 flightDuration = mpLyt->getFlightDuration(input->field_0x00, __s1);
                            if (flightDuration >= 60 && flightDuration % 20 == 0) {
                                CommandReceiver::Scroll cmdData = {};
                                cmdData.y = -mpLyt->getLineHeight();
                                mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_24, &cmdData);

                                mpLyt->searchAnmPane(anmPaneName)->onAnmEvent(AnmPane::PE_0);
                            }
                        }
                    }
                }

                AnmPane* anmPane = (AnmPane*)mpLyt->searchAnmPane(anmPaneName);
                if (anmPane != NULL) {
                    switch (event) {
                        case 1:
                            anmPane->onAnmEvent(AnmPane::PE_2);
                            break;

                        case 0:
                            if (anmPane->getState() == ANIMID_OFF)
                                break;
                            mpEventObserver->onSE(sound::SE_SELECT);
                            anmPane->onAnmEvent(AnmPane::PE_1);
                            break;
                    }
                }
            } else if (__s1[0] == 'P') {
                AnmPane* anmPane = (AnmPane*)mpLyt->searchAnmPane(__s1);
                if (anmPane != NULL) {
                    switch (event) {
                        case 0:
                            if (anmPane->getState() == ANIMID_OFF)
                                break;
                            mpEventObserver->onSE(sound::SE_SELECT);
                            anmPane->onAnmEvent(AnmPane::PE_1);
                            break;

                        case 1:
                            if (anmPane->getState() == ANIMID_OFF)
                                break;
                            mpEventObserver->onSE(sound::SE_SELECT);
                            anmPane->onAnmEvent(AnmPane::PE_2);
                            break;
                    }
                }
            } else {
                if (util::strcmp(__s1, mpLyt->getPaneNameB_())) {
                    if (event == 4 && (input->field_0x0C & 0x800) != 0) {
                        mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_POINT_TRIG, &inputPos);
                    }
                    if (event == 5 && (input->release & 0x800) != 0) {
                        mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_POINT_RELEASE, &inputPos);
                    }
                    if (event == 2 && (input->field_0x10 & 0x800) != 0) {
                        mpLyt->onCommand(CommandReceiver::INPUT_COMMAND_POINT_HOLD, &inputPos);
                    }
                }
            }
        }

        void NormalButtonAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_6 && mCurrAnimId == ANIMID_OFF) {
                changeAnimation(ANIMID_FADE_IN);
            } else if (paneEvent == PE_7 && mCurrAnimId != ANIMID_OFF) {
                changeAnimation(ANIMID_FADE_OUT);
            } else if (paneEvent == PE_0) {
                changeAnimation(ANIMID_PUSHED);
            }

            switch (mCurrAnimId) {
                case ANIMID_FADE_IN:
                    if (paneEvent == PE_4)
                        changeAnimation(ANIMID_NORMAL);
                    if (paneEvent == PE_1)
                        changeAnimation(ANIMID_FOCUS_IN);
                    break;
                case ANIMID_NORMAL:
                    if (paneEvent == PE_1)
                        changeAnimation(ANIMID_FOCUS_IN);
                    break;
                case ANIMID_FOCUS_IN:
                    if (paneEvent == PE_4)
                        changeAnimation(ANIMID_ROLL_OVER);
                    if (paneEvent == PE_2)
                        changeAnimation(ANIMID_FOCUS_OUT);
                    break;
                case ANIMID_ROLL_OVER:
                    if (paneEvent == PE_2)
                        changeAnimation(ANIMID_FOCUS_OUT);
                    break;
                case ANIMID_FOCUS_OUT:
                    if (paneEvent == PE_4)
                        changeAnimation(ANIMID_NORMAL);
                    if (paneEvent == PE_1)
                        changeAnimation(ANIMID_FOCUS_IN);
                    break;
                case ANIMID_PUSHED:
                    if (paneEvent == PE_4)
                        changeAnimation(ANIMID_ROLL_OVER);
                    if (paneEvent == PE_2)
                        changeAnimation(ANIMID_FOCUS_OUT);
                    break;
                case ANIMID_FADE_OUT:
                    if (paneEvent == PE_4)
                        changeAnimation(ANIMID_OFF);
                    break;
            }
        }

        const char* LayoutByNW4R::getPaneNameB_() const {
            return getPane(mpLangDepData->mainTextBoxName) != NULL ? mpLangDepData->mainTextBoxName : textboxPaneName;
        }
        // void Base::reset
    }  // namespace inputform
}  // namespace textinput
