#include "keyboard/tiCellPhone.h"

#include "keyboard/tiManager.h"
#include "keyboard/tiSignWindow.h"

#include <new>

namespace textinput {
    namespace keyboard {
        namespace cellphonetype {
            typedef struct {
                inputform::Base::PredictMode predictMode;  // 0x0
                bool unk_0x4;                              // 0x4
            } GetPredictModeCmdData;
            typedef struct {
                u32 unk_0x0;  // 0x0
            } Command18Data;
            typedef struct {
                bool unk_0x0;  // 0x0
            } Command19Data;
            typedef struct {
                const char* paneName;
                bool unk_0x4;  // 0x4
                bool unk_0x5;  // 0x5
            } OnKeyData;

            struct ForcedName {
            public:
                ForcedName(const char* forcedName) : mpszName(forcedName) {}

                const char* mpszName;
            };
            typedef struct {
                char name[20];           // 0x00
                const char* forcedName;  // 0x14
            } PaneNameNormalAnimationKey;

            // clang-format off
            const wchar_t* csszPredictLanguage[] = {L"", L"", L"Eng", L"Fra", L"Esp", L"EN", L"DE", L"FR", L"ES", L"IT", L"NL", L"CN", L"KR"};
            const char* csPaneNameNormalKey[] = {
                "B_CPkey_00", "B_CPkey_01", "B_CPkey_02", "B_CPkey_03",
                "B_CPkey_04", "B_CPkey_05", "B_CPkey_06", "B_CPkey_07",
                "B_CPkey_08", "B_CPkey_09", "B_CPkey_10", "B_CPkey_11",
                "B_CPkey_LF", "B_CPkey_DELETE",
                "B_othersBT_JP", "B_othersBT_EU", "B_spaceBT_JP",
                "B_ChngTag_00", "B_ChngTag_01", "B_ChngTag_02", "B_ChngTag_03",
                "B_SGNkey_close", "B_SGNkey_prev", "B_SGNkey_next",
                "B_CPkey_Prdc_JP", "B_prdcModeBT_EU",
            };

            const char *baseCellPhoneKeyName = "W_CPkey_00";
            const char *baseChngTagName = "W_ChngTag_00";
            const char *baseOthersName = "W_othersBT_EU";
            PaneNameNormalAnimationKey csPaneNameNormalAnimationKey[] = {
                {"W_CPkey_00", NULL}, {"W_CPkey_01", baseCellPhoneKeyName}, {"W_CPkey_02", baseCellPhoneKeyName}, {"W_CPkey_03", baseCellPhoneKeyName},
                {"W_CPkey_04", baseCellPhoneKeyName}, {"W_CPkey_05", baseCellPhoneKeyName}, {"W_CPkey_06", baseCellPhoneKeyName}, {"W_CPkey_07", baseCellPhoneKeyName},
                {"W_CPkey_08", baseCellPhoneKeyName}, {"W_CPkey_09", baseCellPhoneKeyName}, {"W_CPkey_10", baseCellPhoneKeyName}, {"W_CPkey_11", baseCellPhoneKeyName},
                {"W_CPkey_LF", baseCellPhoneKeyName}, {"W_CPkey_DELETE", baseCellPhoneKeyName},
                {"W_spaceBT_JP", baseCellPhoneKeyName}, {"W_othersBT_JP", baseOthersName}, {"W_othersBT_EU", NULL},
                {"W_prdcModeBT_EU", NULL},
                {"W_smlCptChngeBT", NULL},
            };
            PaneNameNormalAnimationKey csPaneNameToggleAnimationKey[] = {{"W_ChngTag_00", NULL}, {"W_ChngTag_01", baseChngTagName}, {"W_ChngTag_02", baseChngTagName}, {"W_ChngTag_03", baseChngTagName}};

            const struct { char name[20]; VKeyCode code; } csPaneNameToControlKey[] = {
                {"B_CPkey_LF",      VCODE_RETURN},
                {"B_CPkey_DELETE",  VCODE_DELETE},
                {"B_othersBT_JP",   VCODE_MORE_CHARS},
                {"B_ChngTag_00",    CODE_UNK_0x12},
                {"B_ChngTag_01",    CODE_UNK_0x13},
                {"B_ChngTag_02",    CODE_UNK_0x0B},
                {"B_ChngTag_03",    CODE_UNK_0x0D},
                {"B_othersBT_EU",   VCODE_MORE_CHARS},
                {"B_CPkey_Prdc_JP", CODE_UNK_0x0A},
                {"B_prdcModeBT_EU", CODE_UNK_0x0A},
                {"B_smlCptChngeBT", CODE_UNK_0x17},
                {"B_spaceBT_JP",    CODE_UNK_0x02},
            };
            const AnimationFileForControlKey csAninationFileForControlKey[] = {
                {0, "fs_VK_cellPhone_a_normal.brlan"},
                {1, "fs_VK_cellPhone_a_Focus-IN.brlan"},
                {2, "fs_VK_cellPhone_a_Focus-OUT.brlan"},
                {4, "fs_VK_cellPhone_a_Pushed.brlan"},
                {3, "fs_VK_cellPhone_a_Roll_over.brlan"},
            };
            const AnimationFileForControlKey csAninationFileForControlKey2[] = {
                {0, "fs_VK_cellPhone_a_normal.brlan"},
                {1, "fs_VK_cellPhone_a_Focus-IN.brlan"},
                {2, "fs_VK_cellPhone_a_Focus-OUT.brlan"},
                {4, "fs_VK_cellPhone_a_Pushed.brlan"},
                {5, "fs_VK_cellPhone_a_toggle-ON.brlan"},
                {6, "fs_VK_cellPhone_a_toggle-OFF.brlan"},
            };
            const LanguageDependencyData csLanguageDependencyData[] = {
                {4, { &csKeySetHiragana, &csKeySetKatakana, &csKeySetABCJP, &csKeySetNumber, &csKeySetabcJP}},
                {4, { &csKeySetUSAbc,    &csKeySetUSabc,    &csKeySetUSABC, &csKeySetNumber}},
                {4, { &csKeySetUKAbc,    &csKeySetUKabc,    &csKeySetUKABC, &csKeySetNumber}},
                {4, { &csKeySetFRAbc,    &csKeySetFRabc,    &csKeySetFRABC, &csKeySetNumber}},
                {4, { &csKeySetDEAbc,    &csKeySetDEabc,    &csKeySetDEABC, &csKeySetNumber}},
                {4, { &csKeySetITAbc,    &csKeySetITabc,    &csKeySetITABC, &csKeySetNumber}},
                {4, { &csKeySetSPAbc,    &csKeySetSPabc,    &csKeySetSPABC, &csKeySetNumber}},
                {4, { &csKeySetNLAbc,    &csKeySetNLabc,    &csKeySetNLABC, &csKeySetNumber}},
                {4, { &csKeySetCNPinyin, &csKeySetCNabc,    &csKeySetCNABC, &csKeySetNumber}},
                {4, { &csKeySetHangul,    &csKeySetUSabc,    &csKeySetUSABC, &csKeySetNumber}},
            };
            // clang-format on

            VKeyCode getVKeyCode(const char* paneName) {
                for (u16 i = 0; i < ARRAY_LENGTH(csPaneNameToControlKey); i++) {
                    if (util::strcmp(csPaneNameToControlKey[i].name, paneName)) {
                        return csPaneNameToControlKey[i].code;
                    }
                }
                return CODE_UNK_0x1B;
            }
            const PaneNameToCharCode* getPaneNameToCharCode(const char* paneName, const KeySet* keySet) {
                const PaneNameToCharCode* puVar10 = keySet->pPaneNameToCharCode;
                for (u16 i = 0; i < 12; i++) {
                    if (util::strcmp(puVar10[i].szPaneName, paneName)) {
                        return &puVar10[i];
                    }
                }
                return 0;
            }

            void Base::create(MEMAllocator* alloc) {
                mpAllocator = alloc;
                Base::init();
            }
            void Base::init() {
                mHeldButtonCharIdx = 0;
                mInputMode = INPUT_MODE_UNK_0;
                mpHeldButtonData = 0;
                mbIsLocked = false;
                mbIsNumericWithDot = false;
                mbIsNumeric = false;
                mbIsUpperCase = true;
                mbNextIsCapital = true;
                mbPrdcModeOn = false;
                mpLangDepData = &csLanguageDependencyData[getLanguage()];

                u32 cmd[3] = {};
                sendCommand(3, cmd);
            }
            void Base::calc() {
            }
            void Base::onKey(u32 param_2, void* param_3) {
                bool boolInA;
                // int iVar2;
                VKeyCode code;
                wchar_t wVar4;
                int uVar5;
                wchar_t uVar6;
                const char* pressedPaneName;

                if (mbIsLocked != false) {
                    return;
                }
                pressedPaneName = ((OnKeyData*)param_3)->paneName;
                if (param_2 == 4) {
                    boolInA = ((OnKeyData*)param_3)->unk_0x4;
                    code = getVKeyCode(pressedPaneName);
                    if (code != CODE_UNK_0x1B) {
                        onCtrlKey_(code);
                    } else {
                        if (!isZiActive() || getLanguage() == CN || (getLanguage() == KR && mInputMode != 0) || getInputType() == 1) {
                            if (mpHeldButtonData == 0) {
                                InputMode apparentInputMode = mInputMode;
                                if (getLanguage() == JP && apparentInputMode == INPUT_MODE_ABC_UPPER) {
                                    if (!mbIsUpperCase) {
                                        apparentInputMode = INPUT_MODE_ABC_LOWER_JP;
                                    }
                                } else if (mpLangDepData->keySets[apparentInputMode]->uType == KEY_TYPE_ABC_UPPER && !mbIsUpperCase) {
                                    apparentInputMode = INPUT_MODE_ABC_LOWER;
                                }
                                mpHeldButtonData = getPaneNameToCharCode(pressedPaneName, mpLangDepData->keySets[apparentInputMode]);
                                if (boolInA) {
                                    mHeldButtonCharIdx = 0xf;
                                    while (mpHeldButtonData->wc[mHeldButtonCharIdx] == L'\0') {
                                        mHeldButtonCharIdx--;
                                    }
                                } else {
                                    mHeldButtonCharIdx = 0;
                                }
                            } else {
                                if (boolInA) {
                                    mHeldButtonCharIdx--;
                                } else {
                                    mHeldButtonCharIdx++;
                                }
                                // uVar5 = unk_0x14;
                                if (mHeldButtonCharIdx == 0x10) {
                                    mHeldButtonCharIdx = 0;
                                } else if (mHeldButtonCharIdx < 0) {
                                    mHeldButtonCharIdx = 0xf;
                                    while (mpHeldButtonData->wc[mHeldButtonCharIdx] == L'\0') {
                                        mHeldButtonCharIdx--;
                                    }
                                }
                                if (mpHeldButtonData->wc[mHeldButtonCharIdx] == L'\0') {
                                    mHeldButtonCharIdx = 0;
                                }
                            }
                            if (mpHeldButtonData != NULL) {
                                CommandReceiver::Command3Or5Data cmdData = {};
                                cmdData.ch = mpHeldButtonData->wc[mHeldButtonCharIdx];
                                cmdData.paneNameToCharCode = mpHeldButtonData;

                                if (getInputType() == 1 && mpHeldButtonData->wc[1] != L'0' && mpHeldButtonData->wc[0] != L' ') {
                                    cmdData.unk_0x4 = 1;
                                }
                                if (getLanguage() == KR && mInputMode != INPUT_MODE_UNK_0) {
                                    cmdData.unk_0x4 = 1;
                                }
                                if (getLanguage() == CN && mInputMode != INPUT_MODE_UNK_0) {
                                    cmdData.unk_0x4 = 1;
                                }
                                if (mpHeldButtonData->wc[1] == L'\0') {
                                    if (mbIsNumericWithDot && cmdData.ch == L'*') {
                                        cmdData.ch = L'.';
                                    }
                                    sendCommand(5, &cmdData);
                                    mHeldButtonCharIdx = 0;
                                    mpHeldButtonData = NULL;
                                } else {
                                    if (getLanguage() == JP && cmdData.ch == L' ' && getInputMode() != INPUT_MODE_ABC_LOWER_JP &&
                                        getInputMode() != INPUT_MODE_ABC_UPPER) {
                                        cmdData.ch = L'　';  // Ideographic space U+3000
                                    }
                                    sendCommand(3, &cmdData);
                                }
                            }
                        } else {
                            for (u16 i = 0; i < 12; i++) {
                                if (!util::strcmp(csKeySetNumber.pPaneNameToCharCode[i].szPaneName, pressedPaneName))
                                    continue;

                                wchar_t ch = csKeySetNumber.pPaneNameToCharCode[i].wc[0];
                                CommandReceiver::Command3Or5Data cmdData = {ch, mInputMode, false, false, 0, mpHeldButtonData};

                                bool local_78[1];
                                sendCommand(32, local_78);
                                if (ch == L'0' && getLanguage() != KR) {
                                    if (local_78[0] != '\0') {
                                        sendCommand(6, NULL);
                                    }

                                    CommandReceiver::Command3Or5Data cmdData2 = {L' ', mInputMode, true, false, 0x100, mpHeldButtonData};
                                    sendCommand(5, &cmdData2);
                                    mHeldButtonCharIdx = 0;
                                    mpHeldButtonData = NULL;
                                } else {
                                    cmdData.paneNameToCharCode = getPaneNameToCharCode(pressedPaneName, mpLangDepData->keySets[mInputMode]);

                                    if (mpLangDepData->keySets[mInputMode]->uType == KEY_TYPE_ABC_UPPER && !mbNextIsCapital) {
                                        cmdData.inputMode = 1;
                                        cmdData.paneNameToCharCode = getPaneNameToCharCode(pressedPaneName, mpLangDepData->keySets[1]);
                                    }
                                    cmdData.ch = convertToZiCellphoneInput_(cmdData.ch);
                                    sendCommand(5, &cmdData);
                                }
                            }
                        }
                    }
                }
                if (param_2 == 1 && mpHeldButtonData != NULL && util::strcmp(pressedPaneName, mpHeldButtonData->szPaneName)) {
                    uVar6 = mpHeldButtonData->wc[mHeldButtonCharIdx];
                    if (uVar6 != L'゛' && uVar6 != L'゜') {  // Voiced & semi-voiced sound marks (U+309B & U+309C)
                        if (getLanguage() == 0 && uVar6 == L' ' && getInputMode() != 4 && getInputMode() != 2) {
                            uVar6 = L'　';  // Ideographic space U+3000
                        }

                        CommandReceiver::Command3Or5Data cmdData = {uVar6, INPUT_MODE_UNK_0, false, false, 0x100, mpHeldButtonData};
                        if (getInputType() == 1) {
                            cmdData.unk_0x4 = true;
                        }
                        if (getLanguage() == KR && mInputMode != INPUT_MODE_UNK_0) {
                            cmdData.unk_0x4 = true;
                        }
                        if (getLanguage() == CN && mInputMode != INPUT_MODE_UNK_0) {
                            cmdData.unk_0x4 = true;
                        }
                        sendCommand(5, &cmdData);
                    }
                    mHeldButtonCharIdx = 0;
                    mpHeldButtonData = NULL;
                }
            }
            void Base::onCtrlKey_(VKeyCode code) {
                switch (code) {
                    case VCODE_RETURN:
                        sendCommand(7, NULL);
                        break;
                    case VCODE_DELETE:
                        sendCommand(1, NULL);
                        break;
                    case CODE_UNK_0x12:
                        sendCommand(6, NULL);
                        changeInputMode(INPUT_MODE_UNK_0);
                        break;
                    case CODE_UNK_0x13:
                        sendCommand(6, NULL);
                        changeInputMode(INPUT_MODE_ABC_LOWER);
                        break;
                    case CODE_UNK_0x0B:
                        sendCommand(6, NULL);
                        changeInputMode(INPUT_MODE_ABC_UPPER);
                        break;
                    case CODE_UNK_0x0D:
                        sendCommand(6, NULL);
                        changeInputMode(INPUT_MODE_NUMERIC);
                        break;
                    case VCODE_MORE_CHARS:
                        goSignInputMode();
                        break;
                    case CODE_UNK_0x0A:
                        changePredictLanguage();
                        break;
                    case CODE_UNK_0x17:
                        setAbcMode(!mbIsUpperCase);
                        break;
                }
            }
            void Base::goSignInputMode() {
            }
            void Base::changePredictLanguage() {
            }
            void Base::updateFromReceiver(u32 command, void* data) {
                if (getLanguage() != JP) {
                    if ((int)command == 33) {
                        setAbcMode(1);
                    }
                    if ((int)command == 5 && !((CommandReceiver::Command3Or5Data*)data)->unk_0x5) {
                        setAbcMode(0);
                        mbNextIsCapital = false;
                    }
                }
            }
            void Base::onActive() {
                u8 cmd18[4] = {0, 0, 0, 0};
                sendCommand(18, cmd18);
                if (mInputMode == INPUT_MODE_UNK_0) {
                    Command19Data cmd19 = {1};
                    sendCommand(19, &cmd19);
                }
                if (mInputMode == INPUT_MODE_ABC_LOWER) {
                    Command19Data cmd19 = {0};
                    sendCommand(19, &cmd19);
                }
                if (mInputMode == INPUT_MODE_UNK_0) {
                    sendCommand(6, NULL);
                    changeInputMode(mInputMode);
                }
                updateFixMode();
            }
            void Base::onClose() {
            }

            void Base::changeInputMode(InputMode newMode) {
                mInputMode = newMode;
                if (getLanguage() != JP) {
                    mbIsUpperCase = true;
                    mbNextIsCapital = true;
                }
                if (mpMgr->getCandidateBox() != 0) {
                    mpMgr->getCandidateBox()->checkValidation();
                }

                if (newMode == INPUT_MODE_UNK_0) {
                    Command19Data cmd19 = {1};
                    sendCommand(19, &cmd19);
                }
                if (newMode == INPUT_MODE_ABC_LOWER) {
                    Command19Data cmd19 = {0};
                    sendCommand(19, &cmd19);
                }
                updateFixMode();
                sendCommand(41, NULL);
            }
            bool Base::isZiActive() {
                CommandReceiver::ChangePredictMode local_8 = {};
                sendCommand(31, &local_8);
                if (local_8.bZiEnabled) {
                    if (local_8.unk_0x0 != 1)
                        return 1;
                    return 0;
                } else {
                    return 0;
                }
            }
            bool Base::isAtokActive() {
                textinput::CommandReceiver::ChangePredictMode local_8 = {};
                sendCommand(31, &local_8);

                if (!local_8.bZiEnabled || local_8.unk_0x0 == 1)
                    return 1;
                return 0;
            }
            void Base::setAbcMode(bool upperCase) {
                mbIsUpperCase = upperCase;
                if (upperCase) {
                    mbNextIsCapital = true;
                }
            }
            void Base::doNumericMode(bool numeric) {
                mbIsNumeric = numeric;
                if (numeric) {
                    input::HKBManager::getInstance().SetModifierState(0x100, 0x100);
                    getLanguage();
                    changeInputMode(INPUT_MODE_NUMERIC);
                    if (mpMgr->getToolBar() != NULL) {
                        mpMgr->getToolBar()->setQwerty(false);
                    }
                }
            }

            void Base::updateFixMode() {
                if (mpMgr->getToolBar() != NULL) {
                    if (mpMgr->getToolBar()->isQwerty() != 0) {
                        return;
                    }
                }
                switch (getLanguage()) {
                    default:
                        break;

                    case JP:
                        bool local_18[1] = {};
                        if (mInputMode == INPUT_MODE_ABC_LOWER_JP || mInputMode == INPUT_MODE_ABC_UPPER) {
                            // abcJP or ABCJP
                            local_18[0] = 1;
                        } else {
                            local_18[0] = 0;
                        }
                        sendCommand(20, &local_18);
                        break;
                }
            }

            wchar_t Base::convertToZiCellphoneInput_(wchar_t ziCh) {
                switch (ziCh) {
                    case L'1':
                        return 0xEFF1;
                    case L'2':
                        return 0xEFF2;
                    case L'3':
                        return 0xEFF3;
                    case L'4':
                        return 0xEFF4;
                    case L'5':
                        return 0xEFF5;
                    case L'6':
                        return 0xEFF6;
                    case L'7':
                        return 0xEFF7;
                    case L'8':
                        return 0xEFF8;
                    case L'9':
                        return 0xEFF9;
                    case L'0':
                        return 0xEFFA;
                    default:
                        return ziCh;
                }
            }

            inline int Base::getInputTypeForKeySet(const KeySet* keySet) const {
                if (getLanguage() == KR && keySet->uType == KEY_TYPE_HANGUL) {
                    return 3;
                } else if (getLanguage() == CN && keySet->uType == KEY_TYPE_PINYIN) {
                    return 4;
                } else if (keySet->uType == KEY_TYPE_NUMBER) {
                    return 1;
                } else if (keySet->uType == KEY_TYPE_NORMAL) {
                    switch (getLanguage()) {
                        case JP:
                            return 2;
                        default:
                            return 0;
                    }
                } else {
                    return 0;
                }
            }
            int Base::getInputType() const {
                const KeySet* keySet = mpLangDepData->keySets[mInputMode];
                return getInputTypeForKeySet(keySet);
            }
            void Base::setLangKeyActive(bool isActive) {
                mbLangKeyActive = isActive;
                if (getLanguage() == KR || getLanguage() == CN) {
                    if (isActive) {
                        setInputMode(INPUT_MODE_UNK_0);
                    } else if (getInputMode() == INPUT_MODE_UNK_0) {
                        setInputMode(INPUT_MODE_ABC_LOWER);
                    }
                }
            }
            void Base::setInputMode(InputMode mode) {
            }

            LayoutByNW4R::~LayoutByNW4R() {
                mpEventHandler->~TiEventHandler();
                MEMFreeToAllocator(mpAllocator, mpEventHandler);
                nw4rmanager::AnmPane* pane = (nw4rmanager::AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes);
                while (pane != NULL) {
                    nw4r::ut::List_Remove(&mAnmPanes, pane);
                    pane->destroy(mpAllocator);
                    pane = (nw4rmanager::AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes);
                }
            }
            EventHandler::~EventHandler() {
            }

            void LayoutByNW4R::create(MEMAllocator* alloc) {
                Base::create(alloc);

                mpEventHandler = new (MEMAllocFromAllocator(alloc, sizeof(EventHandler))) EventHandler(this);
                Layout::createWithEventHandler(alloc, mpEventHandler);

                mpPaneManager->setAllComponentTriggerTarget(false);
                mpPaneManager->setAllBoundingBoxComponentTriggerTarget(true);

                for (u16 i = 0; i < ARRAY_LENGTH(csPaneNameNormalAnimationKey); i++) {
                    CellPhoneAnmPane* cellPhonePane = new (MEMAllocFromAllocator(alloc, sizeof(CellPhoneAnmPane)))
                        CellPhoneAnmPane(getPane(csPaneNameNormalAnimationKey[i].name), NULL);
                    nw4r::ut::List_Append(&mAnmPanes, cellPhonePane);

                    const char* forcedName;
                    const PaneNameNormalAnimationKey* normalAnimKey;
                    normalAnimKey = &csPaneNameNormalAnimationKey[i];
                    forcedName = csPaneNameNormalAnimationKey[i].forcedName;
                    for (u16 j = 0; j < ARRAY_LENGTH(csAninationFileForControlKey); j++) {
                        void* animationFile = mpMultiArcResourceAccessor->GetResource(0, csAninationFileForControlKey[j].fileName);
                        AnimTransformPane* transform =
                            (AnimTransformPane*)getLayout()->CreateAnimTransform(animationFile, mpMultiArcResourceAccessor);
                        if (forcedName) {
                            cellPhonePane->forceAddAnimation(alloc, csAninationFileForControlKey[j].id, transform, normalAnimKey->forcedName, false,
                                                             true);
                        } else {
                            cellPhonePane->addAnimation(alloc, csAninationFileForControlKey[j].id, transform, false, true);
                        }
                    }
                }
                for (u16 i = 0; i < ARRAY_LENGTH(csPaneNameToggleAnimationKey); i++) {
                    CellPhoneControlAnmPane* cellPhonePane = new (MEMAllocFromAllocator(alloc, sizeof(CellPhoneControlAnmPane)))
                        CellPhoneControlAnmPane(getPane(csPaneNameToggleAnimationKey[i].name), NULL);
                    nw4r::ut::List_Append(&mAnmPanes, cellPhonePane);

                    const PaneNameNormalAnimationKey* normalAnimKey;
                    const char* forcedName;
                    normalAnimKey = &csPaneNameToggleAnimationKey[i];
                    forcedName = csPaneNameToggleAnimationKey[i].forcedName;
                    for (u16 j = 0; j < ARRAY_LENGTH(csAninationFileForControlKey2); j++) {
                        void* animationFile = mpMultiArcResourceAccessor->GetResource(0, csAninationFileForControlKey2[j].fileName);
                        AnimTransformPane* transform =
                            (AnimTransformPane*)getLayout()->CreateAnimTransform(animationFile, mpMultiArcResourceAccessor);
                        if (forcedName) {
                            cellPhonePane->forceAddAnimation(alloc, csAninationFileForControlKey2[j].id, transform, normalAnimKey->forcedName, false,
                                                             true);
                        } else {
                            cellPhonePane->addAnimation(alloc, csAninationFileForControlKey2[j].id, transform, false, true);
                        }
                    }
                }

                nw4r::lyt::Pane* rootPane = mpLayout->GetRootPane();
                rootPane->FindPaneByName("P_spaceBT_JP")->GetMaterial()->GetTexture(&mTexObjSpaceBtnJP, false);
                rootPane->FindPaneByName("P_spaceBT_CN")->GetMaterial()->GetTexture(&mTexObjSpaceBtnCN, false);
                rootPane->FindPaneByName("P_spaceBT_KR")->GetMaterial()->GetTexture(&mTexObjSpaceBtnKR, false);
                init();
                setLanguage(getLanguage());
            }

            inline void LayoutByNW4R::setKeysetTextboxes() {
                for (int i = 0; i < 4; i++) {
                    char textboxName[0x11];
                    memset(textboxName, 0, 0x11);

                    const char* anmKeyName = csPaneNameToggleAnimationKey[i].name;
                    strncpy(textboxName, anmKeyName, strlen(anmKeyName));
                    textboxName[0] = 'T';

                    nw4r::lyt::TextBox* paneT = (nw4r::lyt::TextBox*)getPane(textboxName);
                    nw4r::lyt::Pane* paneB = getPane(csPaneNameToggleAnimationKey[i].name);
                    if (mpLangDepData->keySets[i] == NULL) {
                        paneB->SetVisible(false);
                    } else {
                        paneB->SetVisible(true);
                        paneT->SetString(mpLangDepData->keySets[i]->szKeySetName);
                    }
                }
            }

            void LayoutByNW4R::init() {
                Base::init();

                getAnmPane(INPUT_MODE_UNK_0)->changeAnimation(0);
                getAnmPane(INPUT_MODE_ABC_LOWER)->changeAnimation(0);
                getAnmPane(INPUT_MODE_ABC_UPPER)->changeAnimation(0);
                getAnmPane(INPUT_MODE_NUMERIC)->changeAnimation(0);
                getAnmPane(mInputMode)->changeAnimation(5);
                setLineFeedButton(1);
                doNumericMode(0);
                setPredictLanguageButton(1);
                setSignWindowButton(1);
                setVisible("W_ChngTag_00", true);
                setVisible("W_ChngTag_01", true);
                setVisible("W_ChngTag_02", true);
                setVisible("W_ChngTag_03", true);

                setKeysetTextboxes();

                if (getLanguage() == JP) {
                    setVisible("W_prdcModeBT_EU", false);
                    setVisible("W_othersBT_EU", false);
                    setVisible("W_smlCptChngeBT", true);
                    setVisible("W_othersBT_JP", true);
                    setVisible("W_CPkey_Prdc_JP", true);
                    setVisible("W_spaceBT_JP", true);
                    setVisible("W_CPkey_09", true);
                    setVisible("W_CPkey_11", true);
                } else if (getLanguage() == CN) {
                    setVisible("W_prdcModeBT_EU", true);
                    setVisible("W_othersBT_EU", true);
                    setVisible("W_smlCptChngeBT", false);
                    setVisible("W_othersBT_JP", false);
                    setVisible("W_CPkey_Prdc_JP", false);
                    setVisible("W_spaceBT_JP", true);
                    setVisible("W_CPkey_09", true);
                    setVisible("W_CPkey_11", false);
                    setPredictLanguageButton(false);
                } else if (getLanguage() == KR) {
                    setVisible("W_prdcModeBT_EU", true);
                    setVisible("W_othersBT_EU", true);
                    setVisible("W_smlCptChngeBT", false);
                    setVisible("W_othersBT_JP", false);
                    setVisible("W_CPkey_Prdc_JP", false);
                    setVisible("W_spaceBT_JP", true);
                    setVisible("W_CPkey_09", false);
                    setVisible("W_CPkey_11", false);
                    setPredictLanguageButton(false);
                } else {
                    setVisible("W_prdcModeBT_EU", true);
                    setVisible("W_othersBT_EU", true);
                    setVisible("W_smlCptChngeBT", false);
                    setVisible("W_othersBT_JP", false);
                    setVisible("W_CPkey_Prdc_JP", false);
                    setVisible("W_spaceBT_JP", false);
                    setVisible("W_CPkey_09", false);
                    setVisible("W_CPkey_11", false);
                }
                changeInputMode(mInputMode);
                setLangKeyActive(true);

                textinput::CommandReceiver::ChangePredictMode changePredictModeData = {};
                sendCommand(31, &changePredictModeData);
                updatePredictLanguage(&changePredictModeData);
                initPaneLastDrawReceived();
                mpLayout->Animate(false);
                mpLayout->CalculateMtx(mDrawInfo);
                nw4r::lyt::Pane* pane1 = mpLayout->GetRootPane()->FindPaneByName("P_spaceBT_JP");
                nw4r::lyt::Pane* pane2 = mpLayout->GetRootPane()->FindPaneByName("P_HENKAN_JP");
                pane1->SetVisible(true);
                pane2->SetVisible(false);
            }
            void LayoutByNW4R::draw() {
                Layout::draw();
            }
            void LayoutByNW4R::calc() {
                Layout::calc();

                nw4r::lyt::Pane* pane1 = mpLayout->GetRootPane()->FindPaneByName("P_spaceBT_JP");
                nw4r::lyt::Pane* pane2 = mpLayout->GetRootPane()->FindPaneByName("P_HENKAN_JP");
                if (mpMgr->getInputForm()->canConvert()) {
                    pane1->SetVisible(false);
                    pane2->SetVisible(true);
                } else {
                    pane1->SetVisible(true);
                    pane2->SetVisible(false);
                }
            }
            void LayoutByNW4R::update() {
            }
            void LayoutByNW4R::onKey(u32 param_2, void* param_3) {
                Base::onKey(param_2, param_3);

                if (mbIsLocked)
                    return;
                const char* __s2 = ((OnKeyData*)param_3)->paneName;
                if (param_2 != 4)
                    return;

                VKeyCode code = getVKeyCode(__s2);
                if (code == CODE_UNK_0x1B)
                    return;

                switch (code) {
                    case CODE_UNK_0x0B:
                    case CODE_UNK_0x0D:
                    case CODE_UNK_0x12:
                    case CODE_UNK_0x13:
                        mpEventObserver->onSE(sound::SE_KETAI_MODE_SWITCHING);
                        break;

                    case CODE_UNK_0x17:
                        if (!mbIsUpperCase) {
                            mpEventObserver->onSE(sound::SE_CHAR_LOWER);
                        } else {
                            mpEventObserver->onSE(sound::SE_CHAR_LARGER);
                        }
                        break;

                    case CODE_UNK_0x02:
                        if (mpMgr->getInputForm()->canConvert()) {
                            sendCommand(0x28, NULL);
                        } else {
                            u32 local_28[4] = {0x200000, 0, 0x10000, 0};
                            sendCommand(0, local_28);
                        }
                        break;

                    default:
                        break;
                }
            }

            void LayoutByNW4R::onActive() {
                Command18Data local_10 = {};
                Command19Data inputMode1;
                Command19Data inputMode0;

                sendCommand(18, &local_10);
                if (mInputMode == INPUT_MODE_UNK_0) {
                    inputMode0 = (Command19Data){true};
                    sendCommand(19, &inputMode0);
                }
                if (mInputMode == INPUT_MODE_ABC_LOWER) {
                    inputMode1 = (Command19Data){false};
                    sendCommand(19, &inputMode1);
                }
                if (mInputMode == INPUT_MODE_UNK_0) {
                    sendCommand(6, NULL);
                    changeInputMode(mInputMode);
                }
                updateFixMode();
                Layout::init();
            }

            void LayoutByNW4R::onClose() {
                initPaneLastDrawReceived();
                changeAnimationAllToNormal();
            }

            void LayoutByNW4R::updateFromReceiver(u32 command, void* data) {
                Base::updateFromReceiver(command, data);

                switch (command) {
                    case 29:
                        updatePredictLanguage((CommandReceiver::ChangePredictMode*)data);
                        break;
                }
            }

            void LayoutByNW4R::changeInputMode(InputMode newMode) {
                Base::changeInputMode(newMode);
                if (getLanguage() == JP) {
                    if (!mbIsUpperCase && newMode == INPUT_MODE_ABC_UPPER) {
                        newMode = INPUT_MODE_ABC_LOWER_JP;
                    }
                    switch (newMode) {
                        case INPUT_MODE_UNK_0:
                        case INPUT_MODE_ABC_LOWER:
                            setVisible("W_smlCptChngeBT", false);
                            setVisible("W_CPkey_09", true);
                            setVisible("P_CPkey_dakuten", true);
                            setVisible("W_smlCptChngeBT", false);
                            break;
                        case INPUT_MODE_ABC_UPPER:
                        case INPUT_MODE_ABC_LOWER_JP:
                            setVisible("W_smlCptChngeBT", true);
                            setVisible("W_CPkey_09", false);
                            setVisible("P_CPkey_dakuten", false);
                            setVisible("W_smlCptChngeBT", true);
                            break;

                        case INPUT_MODE_NUMERIC:
                            setVisible("W_smlCptChngeBT", false);
                            setVisible("W_CPkey_09", true);
                            setVisible("P_CPkey_dakuten", false);
                            setVisible("W_smlCptChngeBT", false);
                            break;
                    }
                } else {
                    setVisible("P_CPkey_dakuten", false);
                }

                changeKeyTop(mpLangDepData->keySets[newMode]->pPaneNameToCharCode);
                initPaneLastDrawReceived();
            }
            void LayoutByNW4R::changeKeyTop(const PaneNameToCharCode* paneNameToCharCodes) {
                for (u16 i = 0; i < 12; i++) {
                    char textPaneName[0x11];
                    util::replaceChar(textPaneName, 0x11, paneNameToCharCodes[i].szPaneName, 0, 'T');
                    nw4r::lyt::TextBox* textBox = nw4r::ut::DynamicCast<nw4r::lyt::TextBox*>(mpLayout->GetRootPane()->FindPaneByName(textPaneName));
                    if (textBox != NULL) {
                        textBox->SetString(paneNameToCharCodes[i].szPaneDisp);
                    }
                }
                changeSpaceKeyTop(paneNameToCharCodes);
            }
            void LayoutByNW4R::changeSpaceKeyTop(const PaneNameToCharCode* paneNameToCharCodes) {
                if (getLanguage() == JP)
                    return;

                char spaceKeyTextPaneName[0x11];
                util::replaceChar(spaceKeyTextPaneName, 0x11, paneNameToCharCodes[10].szPaneName, 0, 'T');
                nw4r::lyt::TextBox* spaceKey = (nw4r::lyt::TextBox*)mpLayout->GetRootPane()->FindPaneByName(spaceKeyTextPaneName);

                if (paneNameToCharCodes[10].wc[0] == 0xE057) {  // Custom space character I think
                    if (!mbPrdcModeOn) {
                        spaceKey->SetString(csSpaceZero);
                    } else {
                        spaceKey->SetString(csSpace);
                    }
                }
            }

            nw4rmanager::AnmPane* LayoutByNW4R::getAnmPane(InputMode mode) {
                switch (mode) {
                    case INPUT_MODE_ABC_UPPER:
                        return searchAnmPane(csPaneNameToggleAnimationKey[2].name);
                    case INPUT_MODE_NUMERIC:
                        return searchAnmPane(csPaneNameToggleAnimationKey[3].name);
                    case INPUT_MODE_UNK_0:
                        return searchAnmPane(csPaneNameToggleAnimationKey[0].name);
                    case INPUT_MODE_ABC_LOWER:
                        return searchAnmPane(csPaneNameToggleAnimationKey[1].name);
                    default:
                        return NULL;
                }
            }

            void LayoutByNW4R::throwReleaseForAll() {
                for (CellPhoneAnmPane* pane = (CellPhoneAnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes); pane != NULL;
                     pane = (CellPhoneAnmPane*)nw4r::ut::List_GetNext(&mAnmPanes, pane)) {
                    if (pane->getKeyType() == 0) {
                        pane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                    }
                }
            }
            void LayoutByNW4R::changeAnimationAllToNormal() {
                for (CellPhoneAnmPane* pane = (CellPhoneAnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes); pane != NULL;
                     pane = (CellPhoneAnmPane*)nw4r::ut::List_GetNext(&mAnmPanes, pane)) {
                    if (pane->getKeyType() == 0) {
                        pane->changeAnimation(nw4rmanager::AnmPane::PE_0);
                    }
                }
            }
            void LayoutByNW4R::setLanguage(Language newLang) {
                meLanguage = newLang;
                nw4r::lyt::Pane* rootPane = mpLayout->GetRootPane();
                if (newLang == JP) {
                    rootPane->FindPaneByName("P_spaceBT_JP")->GetMaterial()->SetTexture(0, mTexObjSpaceBtnJP);
                } else if (newLang == CN) {
                    rootPane->FindPaneByName("P_spaceBT_JP")->GetMaterial()->SetTexture(0, mTexObjSpaceBtnCN);
                } else if (newLang == KR) {
                    rootPane->FindPaneByName("P_spaceBT_JP")->GetMaterial()->SetTexture(0, mTexObjSpaceBtnKR);
                }
                if (mpLayout != NULL) {
                    init();
                    initPaneLastDrawReceived();
                }
            }
            void LayoutByNW4R::changePredictLanguage() {
                throwReleaseForAll();

                GetPredictModeCmdData predictModeCmdData = {};
                sendCommand(31, &predictModeCmdData);

                mpPredictLangDialog->open(predictModeCmdData.predictMode, this);
            }
            void LayoutByNW4R::updatePredictLanguage(CommandReceiver::ChangePredictMode* changePredictMode) {
                if (getLanguage() == JP)
                    return;

                if (!changePredictMode->bZiEnabled) {
                    setVisible("N_prdc_EU_ON", false);
                    setVisible("N_prdc_EU_OFF", true);
                    mbPrdcModeOn = false;
                } else {
                    setVisible("N_prdc_EU_ON", true);
                    setVisible("N_prdc_EU_OFF", false);
                    mbPrdcModeOn = true;
                }
                nw4r::lyt::TextBox* pic = (nw4r::lyt::TextBox*)getPane("N_prdc_EU_lang");
                pic->SetString(csszPredictLanguage[changePredictMode->unk_0x0]);
                changeSpaceKeyTop(mpLangDepData->keySets[mInputMode]->pPaneNameToCharCode);
            }

            void LayoutByNW4R::setAbcMode(bool upperCase) {
                Base::setAbcMode(upperCase);

                if (getLanguage() == JP) {
                    InputMode inputMode = INPUT_MODE_ABC_UPPER;
                    if (!mbIsUpperCase)
                        inputMode = INPUT_MODE_ABC_LOWER_JP;

                    changeKeyTop(mpLangDepData->keySets[inputMode]->pPaneNameToCharCode);
                    mpEventObserver->onSE(sound::SE_18);
                } else if (mpLangDepData->keySets[mInputMode]->uType == KEY_TYPE_ABC_UPPER) {
                    InputMode inputMode = INPUT_MODE_UNK_0;
                    if (!mbIsUpperCase)
                        inputMode = INPUT_MODE_ABC_LOWER;

                    changeKeyTop(mpLangDepData->keySets[inputMode]->pPaneNameToCharCode);
                }
            }
            void LayoutByNW4R::goSignInputMode() {
                bool isNumeric = false;
                if (mInputMode == INPUT_MODE_NUMERIC)
                    isNumeric = true;
                mpSignWindow->open(this, isNumeric);
                throwReleaseForAll();
            }

            void LayoutByNW4R::doNumericMode(bool isNumeric) {
                mbIsNumeric = isNumeric;
                if (isNumeric) {
                    input::HKBManager::getInstance().SetModifierState(0x100, 0x100);
                    getLanguage();
                    changeInputMode(INPUT_MODE_NUMERIC);
                    if (mpMgr->getToolBar() != NULL) {
                        mpMgr->getToolBar()->setQwerty(false);
                    }
                }
                if (isNumeric) {
                    setVisible("W_smlCptChngeBT", !isNumeric);
                    setVisible("W_CPkey_09", !isNumeric);
                    setVisible("P_CPkey_dakuten", !isNumeric);
                    setVisible("W_smlCptChngeBT", !isNumeric);
                    setVisible("W_prdcModeBT_EU", !isNumeric);
                    setVisible("W_othersBT_EU", !isNumeric);
                    setVisible("W_spaceBT_JP", !isNumeric);
                    setVisible("W_smlCptChngeBT", !isNumeric);
                    setVisible("W_othersBT_JP", !isNumeric);
                    setVisible("W_CPkey_Prdc_JP", !isNumeric);
                    setVisible("W_CPkey_09", !isNumeric);
                    setVisible("W_CPkey_11", !isNumeric);
                    setVisible("W_ChngTag_00", !isNumeric);
                    setVisible("W_ChngTag_01", !isNumeric);
                    setVisible("W_ChngTag_02", !isNumeric);
                    setVisible("W_ChngTag_03", !isNumeric);
                }
            }
            void LayoutByNW4R::doNumericWithDotMode(bool isNumericWithDot) {
                doNumericMode(isNumericWithDot);
                setString("T_CPkey_11", L".");
                setVisible("W_CPkey_11", isNumericWithDot);
                mbIsNumericWithDot = true;
            }
            void LayoutByNW4R::setLineFeedButton(bool lineFeedButtonEnabled) {
                mbLineFeedButtonEnabled = lineFeedButtonEnabled;
                setVisible("W_CPkey_LF", mbLineFeedButtonEnabled);
            }
            void LayoutByNW4R::setPredictLanguageButton(bool prdcLangButtonEnabled) {
                setVisible("W_prdcModeBT_EU", prdcLangButtonEnabled);
            }
            void LayoutByNW4R::setSignWindowButton(bool signWindowButtonEnabled) {
                if (!signWindowButtonEnabled) {
                    setVisible("W_othersBT_EU", signWindowButtonEnabled);
                    setVisible("W_othersBT_JP", signWindowButtonEnabled);
                } else {
                    setVisible("W_othersBT_EU", false);
                    setVisible("W_othersBT_JP", false);
                    if (getLanguage() == JP) {
                        setVisible("W_othersBT_JP", true);
                    } else {
                        setVisible("W_othersBT_EU", true);
                    }
                }
            }
            void LayoutByNW4R::setInputMode(InputMode newMode) {
                if (mpLangDepData->keySets[mInputMode] == NULL) {
                    newMode = INPUT_MODE_NUMERIC;
                }
                changeInputMode(newMode);
                getAnmPane(INPUT_MODE_UNK_0)->changeAnimation(0);
                getAnmPane(INPUT_MODE_ABC_LOWER)->changeAnimation(0);
                getAnmPane(INPUT_MODE_ABC_UPPER)->changeAnimation(0);
                getAnmPane(INPUT_MODE_NUMERIC)->changeAnimation(0);
                getAnmPane(mInputMode)->changeAnimation(5);
                mpLayout->Animate();
                mpLayout->CalculateMtx(mDrawInfo);
            }
            void LayoutByNW4R::setUpperCaseJP(bool isUpperCaseJP) {
                if (getLanguage() == JP) {
                    mbIsUpperCase = isUpperCaseJP;
                }
            }
            bool LayoutByNW4R::updateInput(input::HKBManager& hkbManager) {
                if (mpMgr->getToolBar()->isEnableKeytopChange()) {
                    if (hkbManager.GetTriggeredKeySet().IsValid()) {
                        if (mpHeldButtonData != NULL) {
                            OnKeyData data = {};
                            data.paneName = mpHeldButtonData->szPaneName;
                            onKey(1, &data);
                        }
                        changeAnimationAllToNormal();
                        mpMgr->getToolBar()->setQwertyWithSE(true);
                        if (!mpMgr->getPCKeyboard()->isABC()) {
                            mpMgr->getPCKeyboard()->setABC(true);
                        }
                    }
                } else {
                    input::HKBManager::KeySet keySet = hkbManager.GetTriggeredKeySet();
                    while (keySet.IsValid()) {
                        nw4rmanager::AnmPane* anmPane = NULL;
                        u8 key = keySet.GetKey();
                        wchar_t wchar = keySet.GetWChar();
                        switch (key) {
                            case 0x28:
                            case 0x58:
                                if ((hkbManager.GetModifierState() & 4) != 0)
                                    break;

                                anmPane = searchAnmPane("W_CPkey_LF");
                                break;
                            default:
                                anmPane = searchAnmPane(wchar);
                                break;
                        }
                        if (anmPane != NULL) {
                            anmPane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                        }
                        ++keySet;
                    }

                    keySet = hkbManager.GetRepeatedKeySet();
                    while (keySet.IsValid()) {
                        nw4rmanager::AnmPane* anmPane = NULL;
                        u8 key = keySet.GetKey();
                        wchar_t wchar = keySet.GetWChar();
                        switch (key) {
                            case 0x2A:
                                if ((hkbManager.GetModifierState() & 4) != 0)
                                    break;
                            case 0x4C:
                                anmPane = searchAnmPane("W_CPkey_DELETE");
                                break;
                        }
                        if (anmPane != NULL) {
                            anmPane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                        }
                        ++keySet;
                    }
                }
                return false;
            }

            void LayoutByNW4R::setLangKeyActive(bool langKeyActive) {
                mbLangKeyActive = langKeyActive;
                if (getLanguage() == KR || getLanguage() == CN) {
                    if (langKeyActive) {
                        setInputMode(INPUT_MODE_UNK_0);
                    } else {
                        if (getInputMode() == INPUT_MODE_UNK_0) {
                            setInputMode(INPUT_MODE_ABC_LOWER);
                        }
                    }
                }
                if (getLanguage() == KR || getLanguage() == CN) {
                    setVisible("W_ChngTag_00", langKeyActive);
                    setVisible("T_ChngTag_00", langKeyActive);
                }
            }

            void LayoutByNW4R::resetHoldingButton() {
                mpHeldButtonData = NULL;
                mHeldButtonCharIdx = 0;
            }

            void CellPhoneAnmPane::changeAnimation(u32 id) {
                mCurrAnimId = id;
                nw4rmanager::AnmPane::changeAnimation(id == 7 ? 2 : id);
            }
            void CellPhoneAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
                switch (mCurrAnimId) {
                    case 0:
                        if (paneEvent == PE_1) {
                            changeAnimation(1);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(7);
                        }
                        break;
                    case 1:
                        if (paneEvent == PE_4) {
                            changeAnimation(3);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(2);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(4);
                        }
                        break;
                    case 3:
                        if (paneEvent == PE_2) {
                            changeAnimation(2);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(4);
                        }
                        break;
                    case 2:
                        if (paneEvent == PE_4) {
                            changeAnimation(0);
                        }
                        if (paneEvent == PE_1) {
                            changeAnimation(1);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(7);
                        }
                        break;
                    case 4:
                        if (paneEvent == PE_4) {
                            changeAnimation(3);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(2);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(4);
                        }
                        break;
                    case 7:
                        if (paneEvent == PE_4) {
                            changeAnimation(0);
                        }
                        if (paneEvent == PE_1) {
                            changeAnimation(1);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(7);
                        }
                }
            }

            void CellPhoneControlAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
                if (paneEvent == PE_5 && mCurrAnimId != 6) {
                    if (mCurrAnimId == 5) {
                        changeAnimation(6);
                        return;
                    }
                    if (mCurrAnimId != 0 && mCurrAnimId != 2) {
                        changeAnimation(2);
                        return;
                    }
                }
                if (paneEvent == PE_0) {
                    changeAnimation(4);
                    return;
                }

                switch (mCurrAnimId) {
                    case 0:
                        if (paneEvent == PE_1) {
                            changeAnimation(1);
                        }
                        break;
                    case 1:
                        if (paneEvent == PE_4) {
                            changeAnimation(3);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(2);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(4);
                        }
                        break;
                    case 3:
                        if (paneEvent == PE_2) {
                            changeAnimation(2);
                        }
                        if (paneEvent == PE_0) {
                            changeAnimation(4);
                        }
                        break;
                    case 2:
                        if (paneEvent == PE_4) {
                            changeAnimation(0);
                        }
                        break;
                    case 6:
                        if (paneEvent == PE_4) {
                            changeAnimation(0);
                        }
                        if (paneEvent == PE_1) {
                            changeAnimation(1);
                        }
                        break;
                    case 4:
                        if (paneEvent == PE_4) {
                            changeAnimation(5);
                        }
                        break;
                }
            }

            bool isKeyPane(const char* paneName) {
                for (int i = 0; i < 12; i++) {
                    if (util::strcmp(paneName, csPaneNameNormalKey[i])) {
                        return true;
                    }
                }
                return false;
            }
            void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
                CellPhoneAnmPane* pane;
                const char* paneName = paneComponent->getPane()->GetName();
                char acStack_3c[0x11];
                char acStack_50[0x11];

                if (paneName[0] == 'B') {
                    util::replaceChar(acStack_3c, 0x11, paneName, 0, 'W');
                    pane = (CellPhoneAnmPane*)mpLyt->searchAnmPane(acStack_3c);
                    if (pane != NULL) {
                        switch (event) {
                            case nw4rmanager::AnmPane::PE_4:
                                if ((input->field_0x0C & 0x800) == 0) {
                                    if ((input->field_0x0C & 0x400) == 0)
                                        break;
                                    if (!isKeyPane(paneName))
                                        break;
                                }

                                if (pane->getKeyType() == 1) {
                                    nw4r::ut::List& paneList = mpLyt->getAnmPaneList();
                                    CellPhoneAnmPane* currPane;
                                    for (currPane = (CellPhoneAnmPane*)nw4r::ut::List_GetNext(&paneList, NULL); currPane != NULL;
                                         currPane = (CellPhoneAnmPane*)nw4r::ut::List_GetNext(&paneList, currPane)) {
                                        if (currPane != pane && ((CellPhoneAnmPane*)currPane)->getKeyType() == 1) {
                                            currPane->onAnmEvent(nw4rmanager::AnmPane::PE_5);
                                        }
                                    }
                                }
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                                break;

                            case nw4rmanager::AnmPane::PE_1:
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                                break;

                            case nw4rmanager::AnmPane::PE_0:
                                mpEventObserver->onSE(sound::SE_SELECT);
                                mpLyt->setPaneLastDrawReceived(pane->getPane());
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                                break;
                        }
                    }
                }

                // TODO: This is a thing.
                OnKeyData local_54 = {};
                local_54.paneName = paneName;
                if (event == 4) {
                    if ((input->field_0x0C & 0x800) != 0) {
                        local_54.unk_0x4 = 0;
                        mpLyt->onKey(4, &local_54);
                    } else {
                        if ((input->field_0x0C & 0x400) != 0) {
                            if (isKeyPane(paneName)) {
                                local_54.unk_0x4 = true;
                                mpLyt->onKey(4, &local_54);
                                paneComponent->setFlightDuration(input->field_0x00, 0);
                            }
                        }
                    }
                }
                if (event == nw4rmanager::AnmPane::PE_1) {
                    mpLyt->onKey(1, &local_54);
                }
                if (event == nw4rmanager::AnmPane::PE_2 && (input->field_0x10 & 0x800) != 0 && (input->field_0x0C & 0x800) == 0 &&
                    (util::strcmp(csPaneNameNormalKey[13], paneName) || util::strcmp(csPaneNameNormalKey[16], paneName)) &&
                    paneComponent->isDragging(input->field_0x00) != 0) {
                    u32 flightDuration = mpLyt->getFlightDuration(input->field_0x00, paneName);
                    if (flightDuration >= 30 && flightDuration % 9 == 0) {
                        util::replaceChar(acStack_50, 0x11, paneName, 0, 'W');
                        nw4rmanager::AnmPane* pane = mpLyt->searchAnmPane(acStack_50);
                        pane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                        mpLyt->onKey(4, &local_54);
                    }
                }
                if (event == nw4rmanager::AnmPane::PE_2 && mpLyt->getFlightDuration(input->field_0x00, paneName) == 0x5a) {
                    local_54.unk_0x5 = true;
                    mpLyt->onKey(1, &local_54);
                }
            }

            bool LayoutByNW4R::updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
                return nw4rmanager::Layout::updateInput(point, x, y, trig, hold, release, data);
            }

            // Header-defined?
            void Base::doInput() {
            }
            bool Base::isUpperCase() {
                return mbIsUpperCase;
            }
            bool Base::isHoldingButton() const {
                return mpHeldButtonData != NULL;
            }
            bool Base::isNumericWithDot() const {
                return mbIsNumericWithDot;
            }
            bool Base::isNumeric() const {
                return mbIsNumeric;
            }
            bool Base::isLocked() const {
                return mbIsLocked;
            }
            int Base::getType() {
                return 1;
            }

            void LayoutByNW4R::setSignWindow(signwindow::LayoutByNW4R* signWindow) {
                mpSignWindow = signWindow;
            }
            void LayoutByNW4R::setPredictLanguageDialog(predictlang::LayoutByNW4R* predictLangDialog) {
                mpPredictLangDialog = predictLangDialog;
            }
            void LayoutByNW4R::setCommandReceiver(CommandReceiver* cmdRecv) {
                CommandSender::setCommandReceiver(cmdRecv);
                init();
            }
            void Base::setUpperCaseJP(bool isUpperCaseJP) {
            }
            void Base::draw() {
            }
            // CellPhoneControlAnmPane::~CellPhoneControlAnmPane() {
            // }
        }  // namespace cellphonetype
    }  // namespace keyboard
}  // namespace textinput
