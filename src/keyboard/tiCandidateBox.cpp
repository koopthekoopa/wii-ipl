#include "keyboard/tiCandidateBox.h"

#include "keyboard/tiManager.h"

#include <new>

namespace textinput {
    namespace candidatebox {

        static const char* COMMON_TEXT_ANIM = "T_prdc_Text_00";
        static const char* COMMON_SCROLL_ANIM = "P_prdc_scrl_Left";

        // name made up, no dwarf (?)
        struct AnimationFile {
            u32 id;
            char fileName[0x40];
        };

        // name made up, no dwarf (?)
        struct PaneToAnimation {
            s32 type;
            char paneName[20];
            u32 count;
            const char* forceAddName;
            const AnimationFile* pAnims[8];
        };

        // NOTE: Typo (Foucus)
        static const AnimationFile csAninationFile[] = {
            {ANM_Normal, "fs_VK_predictInput_a_normal.brlan"},
            {ANM_FocusIn, "fs_VK_predictInput_a_Foucus_IN.brlan"},
            {ANM_FocusOut, "fs_VK_predictInput_a_Focus_OUT.brlan"},
            {ANM_Pushed, "fs_VK_predictInput_a_Pushed.brlan"},
            {ANM_FadeIn, "fs_VK_predictInput_a_Fade_IN.brlan"},
            {ANM_FadeOut, "fs_VK_predictInput_a_Fade_OUT.brlan"},
            {ANM_RollOver, "fs_VK_predictInput_a_Roll_over.brlan"},
            {ANM_OnOffPushed, "fs_VK_predictInput_a_OnOffButton_Pushed.brlan"},
            {ANM_PredictOn, "fs_VK_predictInput_a_predict_ON.brlan"},
            {ANM_PredictOff, "fs_VK_predictInput_a_predict_OFF.brlan"},
            {ANM_InvalidOn, "fs_VK_predictInput_a_invalidMode_ON.brlan"},
            {ANM_InvalidNormal, "fs_VK_predictInput_a_invalidMode_normal.brlan"},
            {ANM_InvalidOff, "fs_VK_predictInput_a_invalidMode_OFF.brlan"},
        };

        extern const PaneToAnimation csPaneToAnimation[] = {
            {KT_CandidateText, "N_predictInput", 1, NULL, {&csAninationFile[0]}},
            {KT_ScrollButton,
             "P_prdc_scrl_Left",
             7,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6]}},
            {KT_ScrollButton,
             "P_prdc_scrl_Rght",
             7,
             COMMON_SCROLL_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_00",
             5,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_01",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_02",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_03",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_04",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_05",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_06",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_07",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_08",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_09",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_10",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_11",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_12",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_13",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_14",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_15",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_16",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_17",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_18",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_CandidateText,
             "T_prdc_Text_19",
             5,
             COMMON_TEXT_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6]}},
            {KT_OnOffButton,
             "P_OnBtn",
             8,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6], &csAninationFile[7]}},
            {KT_OnOffButton,
             "P_OffBtn",
             8,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6], &csAninationFile[7]}},
            {KT_Window,
             "W_predictWindow",
             6,
             NULL,
             {&csAninationFile[0], &csAninationFile[8], &csAninationFile[9], &csAninationFile[10], &csAninationFile[11], &csAninationFile[12]}},
        };

        void CandidateBoxCaller::Candidates::addCandidate(const wchar_t* wcString) {
            wcsncpy(szwcPredicted[mNumCandidate], wcString, ARRAY_LENGTH(szwcPredicted[0]));
            mNumCandidate++;
        }

        void CandidateBoxCaller::Candidates::resetCandidate() {
            mNumCandidate = 0;
        }

        void CandidateBoxCaller::Candidates::updateCandidate() {
            for (u32 i = 0; i < mNumCandidate; i++) {
                // U+0020 Space, U+3000 Ideographic Space
                if (szwcPredicted[i][0] == L' ' || szwcPredicted[i][0] == L'　') {
                    // U+E057 Private Use Area
                    szwcPredicted[i][0] = 0xE057;
                }
            }
        }

        void CandidateBoxCaller::resetCandidate() {
            if (mpCandidateBox != NULL) {
                mpCandidateBox->resetCandidate();
            }
        }

        void CandidateBoxCaller::addCandidate(const wchar_t* wcString) {
            if (mpCandidateBox != NULL) {
                mpCandidateBox->addCandidate(wcString);
            }
        }

        void CandidateBoxCaller::updateCandidate() {
            if (mpCandidateBox != NULL) {
                mpCandidateBox->updateCandidate();
            }
        }

        void CandidateBoxCaller::makeEmptyCandidate() {
            if (mpCandidateBox != NULL) {
                mpCandidateBox->makeEmpty();
            }
        }

        Base::~Base() {
            if (mpCandidates != NULL) {
                MEMFreeToAllocator(mpAllocator, mpCandidates);
                mpCandidates = NULL;
            }
        }

        void Base::create(MEMAllocator* allocator) {
            mpAllocator = allocator;
            void* buf = MEMAllocFromAllocator(mpAllocator, sizeof(CandidateBoxCaller::Candidates));
            mpCandidates = new (buf) CandidateBoxCaller::Candidates();
            memset(mpCandidates, 0, sizeof(CandidateBoxCaller::Candidates));
        }

        void Base::setCommandReceiver(textinput::CommandReceiver* rcv) {
            CommandSender::setCommandReceiver(rcv);
            init();
        }

        void Base::resetCandidate() {
            if (mpCandidates != NULL) {
                mpCandidates->resetCandidate();
            }
        }

        void Base::addCandidate(const wchar_t* wcString) {
            if (mpCandidates != NULL) {
                mpCandidates->addCandidate(wcString);
            }
        }

        void Base::updateCandidate() {
            // NONMATCHING
            if (mpCandidates != NULL) {
                mpCandidates->updateCandidate();
            }
        }

        void Base::setOnOff(bool on) {
            mbOn = on;
            // TODO - ???
            struct {
                int arg1;
                bool arg2;
            } unknown;
            sendCommand(31, &unknown);
            unknown.arg2 = on;
            sendCommand(29, &unknown);
        }

        void Base::updateFromReceiver(u32 cmd, void* data) {
            // TODO - enum
            if ((int)cmd == 34) {
                setInvalid(*reinterpret_cast<bool*>(data));
            }
            if ((int)cmd == 35) {
                *reinterpret_cast<bool*>(data) = isInvalid();
            }
        }

        bool Base::checkValidation() {
            bool ok = true;
            if (meLanguage == KR) {
                if (mpManager->getToolBar()->isQwerty() || mpManager->getCellPhoneKeyboard()->getInputType() != keyboard::pctype::Base::IT_03) {
                    ok = false;
                }
            } else if (meLanguage == CN) {
                if (mpManager->getToolBar()->isQwerty()) {
                    if (mpManager->getPCKeyboard()->getTranslateMode() == keyboard::pctype::Base::TM_00) {
                        ok = false;
                    }
                } else {
                    if (mpManager->getCellPhoneKeyboard()->getInputType() != keyboard::pctype::Base::IT_04) {
                        ok = false;
                    }
                }
            } else {
                if (!mpManager->getToolBar()->isQwerty() && mpManager->getCellPhoneKeyboard()->getInputType() == keyboard::pctype::Base::IT_01) {
                    ok = false;
                }
            }

            setInvalid(!ok);
            return ok;
        }

        LayoutByNW4R::~LayoutByNW4R() {
            mpTiString->~Decolated();
            MEMFreeToAllocator(mpAllocator, mpTiString);
            CandidateTextAnmPane* it = static_cast<CandidateTextAnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes));
            while (it != NULL) {
                nw4r::ut::List_Remove(&mAnmPanes, it);
                it->destroy(mpAllocator);
                it = static_cast<CandidateTextAnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes));
            }
        }

        void LayoutByNW4R::create(MEMAllocator* allocator) {
            mpAllocator = allocator;
            void* buf = MEMAllocFromAllocator(allocator, sizeof(CandidateBoxCaller::Candidates));
            mpCandidates = new (buf) CandidateBoxCaller::Candidates();
            memset(mpCandidates, 0, sizeof(CandidateBoxCaller::Candidates));
            Layout::createWithEventHandler(allocator, &mEventHandler);
            void* strBuf = MEMAllocFromAllocator(allocator, sizeof(tistring::Decolated));
            mpTiString = new (strBuf) tistring::Decolated(0x40);
            mpTiString->create(allocator);
            mpPaneManager->setAllComponentTriggerTarget(false);
            mpPaneManager->create();
            createAnmPane_(allocator);

            mTextArea.Create(this);
            mTextArea.SetCandidates(mpCandidates);
            mTextArea.Init();
            mOnOffButton.Create(this);
            mOnOffButton.Init();
            mLeftScroll.Create(this, "P_prdc_scrl_Left", "B_prdc_scrl_Left");
            mRightScroll.Create(this, "P_prdc_scrl_Rght", "B_prdc_scrl_Rght");
            mLeftScroll.Init();
            mRightScroll.Init();
            mTextWindow.Create(this, "W_predictWindow");
            init();
        }

        void LayoutByNW4R::createAnmPane_(MEMAllocator* allocator) {
            for (u16 i = 0; i < ARRAY_LENGTH(csPaneToAnimation); i++) {
                const PaneToAnimation& p = csPaneToAnimation[i];
                CandidateTextAnmPane* pane = NULL;
                switch (p.type) {
                    case KT_ScrollButton: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(CandidateScrollAnmPane));
                        pane = new (pBtnBuf) CandidateScrollAnmPane(getPane(p.paneName), NULL);
                        break;
                    }
                    case KT_CandidateText: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(CandidateTextAnmPane));
                        pane = new (pBtnBuf) CandidateTextAnmPane(getPane(p.paneName), NULL);
                        break;
                    }
                    case KT_OnOffButton: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(OnOffAnmPane));
                        pane = new (pBtnBuf) OnOffAnmPane(getPane(p.paneName), &mOnOffButton);
                        break;
                    }

                    case KT_Window: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(PredictWindow));
                        pane = new (pBtnBuf) PredictWindow(getPane(p.paneName), &mTextWindow);
                        break;
                    }
                }

                nw4r::ut::List_Append(&mAnmPanes, pane);

                for (u16 j = 0; j < p.count; j++) {
                    void* pResource = mpMultiArcResourceAccessor->GetResource(0, p.pAnims[j]->fileName);
                    AnimTransformPane* transform =
                        static_cast<AnimTransformPane*>(getLayout()->CreateAnimTransform(pResource, mpMultiArcResourceAccessor));

                    if (p.forceAddName == NULL) {
                        pane->addAnimation(allocator, p.pAnims[j]->id, transform, false, true);
                    } else {
                        pane->forceAddAnimation(allocator, p.pAnims[j]->id, transform, p.forceAddName, false, true);
                    }
                }
            }
        }

        void LayoutByNW4R::init() {
            searchAnmPane("N_predictInput")->changeAnimation(ANM_Normal);
            Base::setInvalid(false);
            setActive(true);
            setOnOff(false);
            mDrawInfo.SetInvisiblePaneCalculateMtx(true);
            mTextArea.Init();
            mTextArea.SetScreenSize(mScreenRect);
            mOnOffButton.SetLanguage(meLanguage);
            mTextWindow.Init();
            mpLayout->Animate(0);
            mpLayout->CalculateMtx(mDrawInfo);
            if (meLanguage == KR) {
                mTextWindow.SetVisible(false);
                getPane("W_OnOff_Area")->SetVisible(false);
            } else if (meLanguage == CN) {
                setOnOff(true);
                mTextWindow.SetVisible(true);
                // Potentially an inline
                if (isInvalid()) {
                    mTextWindow.ChangeAnimation(ANM_InvalidNormal);
                } else {
                    mTextWindow.ChangeAnimation(ANM_Normal);
                }
                getPane("W_OnOff_Area")->SetVisible(false);
            } else {
                getPane("W_OnOff_Area")->SetVisible(true);
            }
        }

        void LayoutByNW4R::draw() {
            getPane("N_prdc_Texts")->SetVisible(false);
            nw4rmanager::Layout::draw();
            getPane("N_prdc_Texts")->SetVisible(true);
            if (!isInvalid()) {
                mTextArea.Draw(mDrawInfo);
            }
        }

        void LayoutByNW4R::calc() {
            nw4rmanager::Layout::calc();
            mTextArea.Calc();
            if (mbAnimOn) {
                getPane("N_prdc_Texts")->Animate(0);
                getPane("N_prdc_Texts")->CalculateMtx(mDrawInfo);
            }
        }

        void LayoutByNW4R::setLanguage(Language language) {
            Base::setLanguage(language);
            init();
            // Maybe inlines, maybe not
            nw4r::math::VEC3 pos = searchAnmPane("W_predictWindow")->getPane()->GetTranslate();
            if (meLanguage == CN || meLanguage == KR) {
                Base::checkValidation();
                // Potentially an inline
                if (isInvalid()) {
                    mTextWindow.ChangeAnimation(ANM_InvalidNormal);
                } else {
                    mTextWindow.ChangeAnimation(ANM_Normal);
                }
                pos.x = 242.0f;

            } else {
                pos.x = 202.0f;
            }

            searchAnmPane("W_predictWindow")->getPane()->SetTranslate(pos);
            if (meLanguage == CN) {
                mTextArea.ApplyFontScale(1.2f);
            } else if (meLanguage == KR) {
                mTextArea.ApplyFontScale(1.3f);
            } else {
                mTextArea.ApplyFontScale(1.0f);
            }
        }

        void LayoutByNW4R::onOnOffButton(bool arg) {
            mTextWindow.TurnOnOff(!isOn());
            if (isOn()) {
                searchAnmPane("P_OnBtn")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                if (arg) {
                    mpEventObserver->onSE(sound::SE_PREDICT_OFF);
                }
            } else {
                searchAnmPane("P_OffBtn")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                searchAnmPane("P_prdc_scrl_Left")->changeAnimation(ANM_Normal);
                searchAnmPane("P_prdc_scrl_Rght")->changeAnimation(ANM_Normal);
                if (arg) {
                    mpEventObserver->onSE(sound::SE_PREDICT_ON);
                }
            }
        }

        void LayoutByNW4R::turnOn() {
            setOnOff(false);
            onOnOffButton(false);
            setOnOff(true);
        }

        void LayoutByNW4R::turnOff() {
            setOnOff(true);
            onOnOffButton(false);
            setOnOff(false);
        }

        void LayoutByNW4R::makeEmpty() {
            mTextArea.Clear();
            mgr()->getInputForm()->setCursorSelectFlg(false);
        }

        void LayoutByNW4R::changeSelectEmpty() {
            mgr()->getInputForm()->setCursorSelectFlg(false);
            mgr()->getInputForm()->deselectCandidate();
            setSelectedTextPane(-1);
            setFocusedTextPane(-1);
        }

        void LayoutByNW4R::changeSelectEmpty_compatible() {
            mgr()->getInputForm()->setCursorSelectFlg(false);
            sendCommand(0x17, NULL);
            setSelectedTextPane(-1);
            setFocusedTextPane(-1);
        }

        void LayoutByNW4R::changeSelect(s32 pane) {
            mgr()->getInputForm()->setCursorSelectFlg(true);
            u32 p = (u16)pane;
            sendCommand(0x16, &p);
            setSelectedTextPane(pane);
            setFocusedTextPane(pane);
        }

        void LayoutByNW4R::startTurnOn(bool on) {
            if (isInScroll()) {
                return;
            }
            if (!searchAnmPane("W_predictWindow")->isInAnimation() && isOn() != on) {
                mTextWindow.TurnOnOff(on);

                if (!on) {
                    searchAnmPane("P_OnBtn")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                    mpEventObserver->onSE(sound::SE_PREDICT_OFF);
                } else {
                    searchAnmPane("P_OffBtn")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                    searchAnmPane("P_prdc_scrl_Left")->changeAnimation(ANM_Normal);
                    searchAnmPane("P_prdc_scrl_Rght")->changeAnimation(ANM_Normal);
                    mpEventObserver->onSE(sound::SE_PREDICT_ON);
                }
            }
        }

        void LayoutByNW4R::setOnOff(bool on) {
            if (meLanguage == CN) {
                on = true;
            }
            Base::setOnOff(on);
            mOnOffButton.SetOnOff(on);
            if (!on) {
                mTextWindow.SetVisible(false);
                mTextArea.Clear();
            }
        }

        void LayoutByNW4R::updateCandidate() {
            mTextArea.StopScroll();
            Base::updateCandidate();
            gui::PaneComponent* p = mpPaneManager->searchPaneComponent(isOn() ? "B_OnBtn" : "B_OffBtn");
            if (p != NULL) {
                p->lockInitialize(true);
            }
            nw4rmanager::Layout::init();
            changeSelectEmpty();
            if (p != NULL) {
                p->lockInitialize(false);
            }
            mTextArea.ResetCandidate();
            mTextArea.RefreshCandidates();
            updateDisplay();
        }

        void LayoutByNW4R::updateDisplay() {
            if (isInvalid()) {
                mLeftScroll.SetVisible(false);
                mRightScroll.SetVisible(false);
                return;
            }

            if (!mTextArea.CanLeftScroll()) {
                mLeftScroll.SetVisible(false);
            } else if (!mLeftScroll.IsVisible()) {
                mLeftScroll.SetVisible(true);
            }

            if (!mTextArea.CanRightScroll()) {
                mRightScroll.SetVisible(false);
            } else if (!mRightScroll.IsVisible()) {
                mRightScroll.SetVisible(true);
            }
        }

        void LayoutByNW4R::onRightScroll() {
            if (mTextArea.CanRightScroll()) {
                mTextArea.StartScroll(1);
                mpEventObserver->onSE(sound::SE_LINE_SCROLL);
            }
        }

        void LayoutByNW4R::onLeftScroll() {
            if (mTextArea.CanLeftScroll()) {
                mTextArea.StartScroll(-1);
                mpEventObserver->onSE(sound::SE_LINE_SCROLL);
            }
        }

        void LayoutByNW4R::onRightPageScroll() {
            if (mTextArea.CanRightScroll()) {
                mTextArea.StartRightPageScroll();
                mpEventObserver->onSE(sound::SE_LINE_SCROLL);
            }
        }

        void LayoutByNW4R::onLeftPageScroll() {
            if (mTextArea.CanLeftScroll()) {
                mTextArea.StartLeftPageScroll();
                mpEventObserver->onSE(sound::SE_LINE_SCROLL);
            }
        }

        void LayoutByNW4R::onClose() {
            Base::onClose();
            initPaneLastDrawReceived();
            cancelStateFocusIn();
        }

        void LayoutByNW4R::cancelStateFocusIn() {
            for (int i = 0; i < ARRAY_LENGTH(csPaneToAnimation); i++) {
                CandidateTextAnmPane* p = static_cast<CandidateTextAnmPane*>(searchAnmPane(csPaneToAnimation[i].paneName));
                if (p != NULL) {
                    switch (p->getKeyType()) {
                        case KT_CandidateText:
                            switch (p->getState()) {
                                case ANM_FocusIn:
                                case ANM_RollOver:
                                case ANM_Pushed:  // TODO - why?
                                    p->changeAnimation(ANM_FocusOut);
                                    break;
                            }
                            break;
                        case KT_ScrollButton:
                            switch (p->getState()) {
                                case ANM_FocusIn:
                                case ANM_RollOver:
                                    p->changeAnimation(ANM_FocusOut);
                                    break;
                            }
                            break;
                        case KT_OnOffButton:
                            switch (p->getState()) {
                                case ANM_FocusIn:
                                case ANM_RollOver:
                                    p->changeAnimation(ANM_FocusOut);
                                    break;
                            }
                            break;
                    }
                }
            }
        }

        void LayoutByNW4R::setInvalid(bool invalid) {
            if (invalid == mbInvalid) {
                // Potentially an inline
                if (invalid) {
                    mTextWindow.ChangeAnimation(ANM_InvalidNormal);
                } else {
                    mTextWindow.ChangeAnimation(ANM_Normal);
                }
            } else {
                Base::setInvalid(invalid);
                mTextWindow.TurnInvalid(invalid);
            }
        }

        void LayoutByNW4R::setActive(bool active) {
            mbActive = active;
            if (meLanguage == CN || meLanguage == KR) {
                mpManager->getPCKeyboard()->setLangKeyActive(active);
                mpManager->getCellPhoneKeyboard()->vt_0x68(active);
            }
        }

        void LayoutByNW4R::onEvent(UIObj* obj, u32 id, void* data) {
            int tmp;

            switch (id) {
                case 0:
                    mpEventObserver->onSE(static_cast<sound::SE>(reinterpret_cast<int>(data)));
                    break;
                case 0x100:
                    updateDisplay();
                    break;
                case 0x101:
                    if (getFocusedTextPane() != 0xFFFF) {
                        mgr()->getInputForm()->setCursorSelectFlg(false);
                        s32 arg = (u16)getFocusedTextPane();
                        mpEventObserver->onSE(sound::SE_CHAR_DECIDE);
                        sendCommand(0x15, &arg);
                    }
                    break;
                case 0x102:
                    tmp = reinterpret_cast<int>(data);
                    if (tmp >= 0) {
                        changeSelect(tmp);
                    } else {
                        changeSelectEmpty_compatible();
                    }
                    break;
                case 0x300:
                    setOnOff(true);
                    mpPaneManager->init();
                    searchAnmPane("P_prdc_scrl_Left")->changeAnimation(ANM_Normal);
                    searchAnmPane("P_prdc_scrl_Rght")->changeAnimation(ANM_Normal);
                    if (mbInvalid) {
                        searchAnmPane("W_predictWindow")->changeAnimation(ANM_InvalidOn);
                    }
                    break;
                case 0x301:
                    changeSelectEmpty_compatible();
                    setOnOff(false);
                    mpPaneManager->init();
                    break;
                case 0x400:
                    mpPaneManager->init();
                    break;
            }
        }

        void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
            // no-op
        }

        void CandidateTextAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0) {
                changeAnimation(ANM_Pushed);
            } else if (paneEvent == PE_5) {
                changeAnimation(ANM_Normal);
            } else {
                switch (meState) {
                    case ANM_Normal:
                        if (paneEvent == PE_1) {
                            changeAnimation(ANM_FocusIn);
                        }
                        break;
                    case ANM_FocusIn:
                        if (paneEvent == PE_4) {
                            changeAnimation(ANM_RollOver);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(ANM_FocusOut);
                        }
                        break;
                    case ANM_RollOver:
                        if (paneEvent == PE_2) {
                            changeAnimation(ANM_FocusOut);
                        }
                        break;
                    case ANM_FocusOut:
                        if (paneEvent == PE_4) {
                            changeAnimation(ANM_Normal);
                        }
                        if (paneEvent == PE_1) {
                            changeAnimation(ANM_FocusIn);
                        }
                        break;
                    case ANM_Pushed:
                        if (paneEvent == PE_4) {
                            changeAnimation(ANM_RollOver);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(ANM_FocusOut);
                        }
                        break;
                }
            }
        }

        void CandidateScrollAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0 && meState != ANM_FadeOut) {
                changeAnimation(ANM_Pushed);
            }
            if (paneEvent == PE_6 && meState == ANM_FadeOut) {
                changeAnimation(ANM_FadeIn);
            }
            if (paneEvent == PE_7 && meState != ANM_FadeOut) {
                changeAnimation(ANM_FadeOut);
            }

            switch (meState) {
                case ANM_Normal:
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                case ANM_FocusIn:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_RollOver);
                    }
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                case ANM_RollOver:
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                case ANM_FocusOut:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                case ANM_Pushed:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_RollOver);
                    }
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                case ANM_FadeIn:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    break;
                case ANM_FadeOut:
                    break;
            }
        }

        void OnOffAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0) {
                changeAnimation(ANM_OnOffPushed);
            } else {
                switch (meState) {
                    case ANM_Normal:
                        if (paneEvent == PE_1) {
                            changeAnimation(ANM_FocusIn);
                        }
                        break;
                    case ANM_FocusIn:
                        if (paneEvent == PE_4) {
                            changeAnimation(ANM_RollOver);
                        }
                        if (paneEvent == PE_2) {
                            changeAnimation(ANM_FocusOut);
                        }
                        break;
                    case ANM_RollOver:
                        if (paneEvent == PE_2) {
                            changeAnimation(ANM_FocusOut);
                        }
                        break;
                    case ANM_FocusOut:
                        if (paneEvent == PE_4) {
                            changeAnimation(ANM_Normal);
                        }
                        if (paneEvent == PE_1) {
                            changeAnimation(ANM_FocusIn);
                        }
                        break;
                    case ANM_Pushed:
                        break;
                }
            }
        }

        void PredictWindow::onAnmEvent(AnmPaneEvent paneEvent) {
            switch (meState) {
                case ANM_InvalidOn:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_InvalidNormal);
                    }
                    break;
                case ANM_InvalidOff:
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    break;
            }
        }

        void LayoutByNW4R::setRootPaneScaleFor16x9() {
            nw4rmanager::Layout::setRootPaneScaleFor16x9();
            SetScreenSize();
        }

        void LayoutByNW4R::setRootPaneScaleFor4x3() {
            nw4rmanager::Layout::setRootPaneScaleFor4x3();
            SetScreenSize();
        }

        UITextArea::UITextArea(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener)
            : UIObj(id, layout, listener), mnSelectedIdx(-1), mnFocusedIdx(-1), mnBaseIdx(0), mfXOffset(0.0f), mnCandidateNum(0), mnDispBeginIdx(0),
              mnDispEndIdx(0), mnDispEndCompleteIdx(0), mfTextWidth(0.0f), mfScreenWidth(640.0f), mbOnTextArea(false), mpCandidates(NULL) {
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextBoxPane[i] = NULL;
                mpBoundingPane[i] = NULL;
                mpTextAnmPane[i] = NULL;
            }
            mpTextAreaPane = NULL;
            mpTextsPane = NULL;
        }

// HACK: Is there a way to automatically get the compiler to not pool this?
#pragma push
#pragma pool_data off
        void UITextArea::Create(nw4rmanager::Layout* layout) {
            // These could have been static...
            const char* textPanes[NUM_PANES] = {
                "T_prdc_Text_00", "T_prdc_Text_01", "T_prdc_Text_02", "T_prdc_Text_03", "T_prdc_Text_04", "T_prdc_Text_05", "T_prdc_Text_06",
                "T_prdc_Text_07", "T_prdc_Text_08", "T_prdc_Text_09", "T_prdc_Text_10", "T_prdc_Text_11", "T_prdc_Text_12", "T_prdc_Text_13",
                "T_prdc_Text_14", "T_prdc_Text_15", "T_prdc_Text_16", "T_prdc_Text_17", "T_prdc_Text_18", "T_prdc_Text_19",
            };

            const char* textBoundings[NUM_PANES] = {
                "B_prdc_Text_00", "B_prdc_Text_01", "B_prdc_Text_02", "B_prdc_Text_03", "B_prdc_Text_04", "B_prdc_Text_05", "B_prdc_Text_06",
                "B_prdc_Text_07", "B_prdc_Text_08", "B_prdc_Text_09", "B_prdc_Text_10", "B_prdc_Text_11", "B_prdc_Text_12", "B_prdc_Text_13",
                "B_prdc_Text_14", "B_prdc_Text_15", "B_prdc_Text_16", "B_prdc_Text_17", "B_prdc_Text_18", "B_prdc_Text_19",
            };

            gui::PaneManager* mgr = layout->getPaneManager();
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextBoxPane[i] = mgr->searchPaneComponent(textPanes[i]);
                mpBoundingPane[i] = mgr->searchPaneComponent(textBoundings[i]);
                mpTextAnmPane[i] = static_cast<CandidateTextAnmPane*>(layout->searchAnmPane(textPanes[i]));
                mpBoundingPane[i]->setListener(this);
            }
            mpTextAreaPane = mgr->searchPaneComponent("N_prdcTextArea");
            mpTextsPane = mgr->searchPaneComponent("N_prdc_Texts");
            mSize = mpTextBoxPane[0]->getTextPane()->GetFontSize();
            mpTextAreaPane->setListener(this);
        }
#pragma pop

        void UITextArea::Init() {
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextBoxPane[i]->getTextPane()->SetString(L"", 0);
                mpBoundingPane[i]->setTriggerTarget(true);
            }
            mfTextWidth = 0.0f;
        }

        void UITextArea::Calc() {
            mScrollAnimation.calc();
            if (mScrollAnimation.isActive()) {
                mfXOffset = mScrollAnimation.getValue();
            }
            CalcPaneLocate_();
        }

        s32 UITextArea::GetDispNum() const {
            if (mnCandidateNum > 0) {
                return mnDispEndIdx - mnDispBeginIdx + 1;
            }
            return 0;
        }

        static f32 calcStringWidth(const wchar_t* text, nw4r::lyt::TextBox* pTextBox) {
            // NW4R_ASSERT(pTextBox);
            if (text == NULL) {
                return 0.0f;
            }

            const nw4r::ut::Font* f = pTextBox->GetFont();
            f32 fontSizeWidth = pTextBox->GetFontSize().width;
            f32 charSpace = pTextBox->GetCharSpace();
            f32 acc = 0.0f;
            for (int i = 0; text[i] != L'\0'; i++) {
                acc += charSpace;
                acc += f->GetCharWidth(text[i]);
            }
            return acc * (fontSizeWidth / f->GetWidth()) + 0.01f;
        }

        static f32 calcStringWidth(nw4r::lyt::TextBox* pTextBox) {
            if (pTextBox == NULL) {
                return 0.0f;
            }
            return calcStringWidth(pTextBox->GetString(), pTextBox);
        }

        void UITextArea::CalcPaneLocate_() {
            // NONMATCHING - only regswaps, hopefully
            // The calcStringWidth inline may be partially responsible,
            // so looking into the smaller functions utilizing that inline
            // might be simpler (GetNextPageIdx / GetPrevPageIdx)
            f32 widthScale = GetWidthScale_();
            f32 margin = GetMargin_();
            f32 xOffset = mfXOffset;

            f32 areaPaneXOffset = mpTextAreaPane->getPane()->GetTranslate().x;
            f32 areaPaneWidth = mpTextAreaPane->getPane()->GetSize().width;
            s32 selectedIdx = GetSelectedTextIdx();

            for (int i = 0; i < (int)NUM_PANES; i++) {
                nw4r::lyt::TextBox* textPane = mpTextBoxPane[i]->getTextPane();
                nw4r::lyt::Bounding* boundPane = mpBoundingPane[i]->getBoundPane();
                nw4r::lyt::Size sz1 = textPane->GetSize();
                textPane->SetString(L"");
                textPane->SetVisible(false);
                boundPane->SetSize(nw4r::lyt::Size(0.0f, sz1.height));
            }

            int i = NUM_PANES;
            int offsetIdx;
            if (mpTextsPane->isVisible()) {
                offsetIdx = mnBaseIdx;
            } else {
                offsetIdx = 0;
            }

            while (xOffset > 0.0f) {
                if (offsetIdx == 0) {
                    break;
                }
                offsetIdx--;
                i--;
                if (i < 0) {
                    i = NUM_PANES - 1;
                }

                nw4r::lyt::TextBox* textPane = mpTextBoxPane[i]->getTextPane();
                nw4r::lyt::Bounding* boundPane = mpBoundingPane[i]->getBoundPane();

                textPane->SetString(mpCandidates->szwcPredicted[offsetIdx]);
                textPane->SetVisible(true);
                nw4r::lyt::Size sz2 = textPane->GetSize();
                f32 stringWidth = calcStringWidth(textPane);
                textPane->SetSize(nw4r::lyt::Size(stringWidth, sz2.height));
                boundPane->SetSize(nw4r::lyt::Size(stringWidth * widthScale, sz2.height));

                xOffset -= margin;
                xOffset -= stringWidth * widthScale;

                stringWidth *= widthScale;
                f32 x = stringWidth / 2.0f + (areaPaneXOffset + xOffset);
                textPane->SetTranslate(nw4r::math::VEC2(x, 0.0f));
                boundPane->SetTranslate(nw4r::math::VEC2(x, 0.0f));

                if (offsetIdx == selectedIdx) {
                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                } else {
                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                }
            }
            mnDispBeginIdx = offsetIdx;

            i = 0;
            if (mpTextsPane->isVisible()) {
                offsetIdx = mnBaseIdx;
            } else {
                offsetIdx = mnCandidateNum;
            }
            xOffset = mfXOffset;

            while (xOffset < areaPaneWidth) {
                if (offsetIdx == mnCandidateNum) {
                    break;
                }
                nw4r::lyt::TextBox* textPane = mpTextBoxPane[i]->getTextPane();
                nw4r::lyt::Bounding* boundPane = mpBoundingPane[i]->getBoundPane();

                textPane->SetString(mpCandidates->szwcPredicted[offsetIdx]);
                textPane->SetVisible(true);
                nw4r::lyt::Size sz2 = textPane->GetSize();
                f32 stringWidth = calcStringWidth(textPane);
                textPane->SetSize(nw4r::lyt::Size(stringWidth, sz2.height));
                boundPane->SetSize(nw4r::lyt::Size(stringWidth * widthScale, sz2.height));

                stringWidth *= widthScale;
                f32 x = stringWidth / 2.0f + (areaPaneXOffset + xOffset);
                textPane->SetTranslate(nw4r::math::VEC2(x, 0.0f));
                boundPane->SetTranslate(nw4r::math::VEC2(x, 0.0f));

                if (offsetIdx == selectedIdx) {
                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                }
                xOffset += margin;
                xOffset += stringWidth;
                offsetIdx++;
                if (xOffset <= 0.0f) {
                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_5);
                }
                i++;
                if (i >= (int)NUM_PANES) {
                    i = 0;
                }
            }

            for (int i = 0; i < NUM_PANES; i++) {
                if (!mpTextBoxPane[i]->getTextPane()->IsVisible()) {
                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_5);
                }
            }

            mnDispEndIdx = offsetIdx - 1;

            // TODO - weird
            bool same = true;
            if (!(xOffset - margin <= areaPaneWidth) && !(GetDispNum() == 1)) {
                same = false;
            }
            mnDispEndCompleteIdx = same ? mnDispEndIdx : mnDispEndIdx - 1;
            mfTextWidth = xOffset;
        }

        void UITextArea::ChangeSelectedText(s32 arg) {
            s32 idx = GetPaneIdx(mnSelectedIdx);
            if (idx >= 0) {
                mpTextAnmPane[idx]->onAnmEvent(nw4rmanager::AnmPane::PE_2);
            }

            idx = GetPaneIdx(arg);
            if (idx >= 0) {
                mpTextAnmPane[idx]->onAnmEvent(nw4rmanager::AnmPane::PE_1);
            }
            mnSelectedIdx = arg;
        }

        void UITextArea::Clear() {
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextBoxPane[i]->getTextPane()->SetString(L"", 0);
            }
        }

        void UITextArea::ResetCandidate() {
            mnFocusedIdx = -1;
            mnSelectedIdx = -1;
            mfXOffset = 0.0f;
            mnDispBeginIdx = 0;
            mnDispEndIdx = 0;
            ChangeBaseIdx_(0);
        }

        void UITextArea::SetScreenSize(nw4r::ut::Rect& rect) {
            mfScreenWidth = rect.GetWidth();
        }

        void UITextArea::RefreshCandidates() {
            (void)GetWidthScale_();
            (void)GetMargin_();
            mnCandidateNum = mpCandidates->mNumCandidate;
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextAnmPane[i]->changeAnimation(ANM_Normal);
            }
            mnSelectedIdx = -1;
            mnFocusedIdx = -1;
            mfXOffset = 0.0f;
            CalcPaneLocate_();
        }

        void UITextArea::Draw(const nw4r::lyt::DrawInfo& drawInfo) {
            // NONMATCHING
            s32 selected = GetSelectedPaneIdx();
            if (!IsScrolling()) {
                for (u32 i = 0; i < NUM_PANES; i++) {
                    if (i == selected || mpTextAnmPane[i]->getState() == ANM_FocusOut) {
                        mpTextBoxPane[i]->getPane()->SetVisible(false);
                    }
                }
            }

            nw4r::ut::Rect r = mpTextAreaPane->getPane()->GetPaneRect(drawInfo);
            // TODO - These vectors are zero-initialized using GPRs first...
            nw4r::math::VEC3 v1;
            nw4r::math::VEC3 v2;
            v1.x = r.left;
            v1.y = r.top;
            v2.x = r.right;
            v2.y = r.bottom;
            MTXMultVec(mpTextAreaPane->getTextPane()->GetGlobalMtx(), v1, v1);
            MTXMultVec(mpTextAreaPane->getTextPane()->GetGlobalMtx(), v2, v2);
            u32 left, top, wd, ht;
            GXGetScissor(&left, &top, &wd, &ht);
            // TODO - These floats need to be stored to the stack
            f32 f3 = v1.x + mfScreenWidth / 2.0f;
            f3 += f3 * (640.0f / mfScreenWidth - 1.0f);
            f32 f2 = (640.0f / mfScreenWidth) * (v2.x - v1.x);
            GXSetScissor(f3, top, f2, ht);
            mpTextsPane->getPane()->Draw(drawInfo);
            if (!IsScrolling()) {
                GXSetScissor(left, top, (f2 + f3) - left, ht);
                for (u32 i = 0; i < NUM_PANES; i++) {
                    if (i == selected || mpTextAnmPane[i]->getState() == ANM_FocusOut) {
                        mpTextBoxPane[i]->getPane()->SetVisible(true);
                        mpTextBoxPane[i]->getPane()->Draw(drawInfo);
                    }
                }
            }
            GXSetScissor(left, top, wd, ht);
        }

        s32 UITextArea::GetNextPageIdx_(s32 idx) const {
            // NONMATCHING - only regswaps, hopefully
            f32 areaPaneWidth = mpTextAreaPane->getPane()->GetSize().width;

            nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
            f32 widthScale = GetWidthScale_();
            f32 margin = GetMargin_();
            f32 negMargin = -margin;

            int i = idx;
            while (negMargin <= areaPaneWidth) {
                if (i == mnCandidateNum) {
                    return -1;
                }
                f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[i], textBox);
                negMargin += margin + textWidth * widthScale;
                i++;
            }
            if (i - 1 == idx) {
                i++;
            }
            return i - 1;
        }

        s32 UITextArea::GetPrevPageIdx_(s32 idx) const {
            // NONMATCHING - only regswaps, hopefully
            f32 areaPaneWidth = mpTextAreaPane->getPane()->GetSize().width;

            nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
            f32 widthScale = GetWidthScale_();
            f32 margin = GetMargin_();
            f32 negMargin = -margin;

            int i = idx - 1;
            while (negMargin <= areaPaneWidth) {
                if (i < 0) {
                    return 0;
                }
                f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[i], textBox);
                negMargin += margin + textWidth * widthScale;
                i--;
            }
            if (i + 2 == idx) {
                i--;
            }
            return i + 2;
        }

        void UITextArea::StartScroll(s32 steps) {
            // NONMATCHING - only regswaps, hopefully
            f32 acc = 0.0f;
            f32 widthScale = GetWidthScale_();
            f32 margin = GetMargin_();
            if (steps < 0) {
                nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
                for (int i = 0; steps < i; i--) {
                    f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[mnBaseIdx + i - 1], textBox);
                    acc -= margin + textWidth * widthScale;
                }
            } else {
                nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
                for (int i = 0; i < steps; i++) {
                    f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[mnBaseIdx + i], textBox);
                    acc += margin + textWidth * widthScale;
                }
            }

            mScrollAnimation.startAnm(this, 0.0f, -acc, 15.0f, this);
        }

        void UITextArea::StartScrollToIdx(s32 idx) {
            // NONMATCHING - only regswaps, hopefully
            f32 acc = 0.0f;
            f32 widthScale = GetWidthScale_();
            f32 margin = GetMargin_();
            if (idx > mnBaseIdx) {
                nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
                for (int i = mnBaseIdx; i < idx; i++) {
                    f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[i], textBox);
                    acc -= margin + textWidth * widthScale;
                }
            } else if (idx < mnBaseIdx) {
                nw4r::lyt::TextBox* textBox = mpTextBoxPane[0]->getTextPane();
                for (int i = mnBaseIdx - 1; i >= idx; i--) {
                    f32 textWidth = calcStringWidth(mpCandidates->szwcPredicted[i], textBox);
                    acc += margin + textWidth * widthScale;
                }
            }

            s32 diff = idx - mnBaseIdx;
            mScrollAnimation.startAnm(this, mfXOffset, acc, 15.0f, reinterpret_cast<void*>(diff));
        }

        void UITextArea::StartRightPageScroll() {
            if (mfXOffset > 0.0f) {
                StartScrollToIdx(mnBaseIdx);
            } else if (!(mfXOffset < 0.0f)) {
                s32 idx = GetNextPageIdx_(mnBaseIdx);
                if (idx >= 0) {
                    StartScrollToIdx(idx);
                }
            }
        }

        void UITextArea::StartLeftPageScroll() {
            if (mfXOffset < 0.0f) {
                StartScrollToIdx(mnBaseIdx);
            } else if (!(mfXOffset > 0.0f)) {
                s32 idx = GetPrevPageIdx_(mnBaseIdx);
                StartScrollToIdx(idx);
            }
        }

        void UITextArea::StartScrollPageToIdx(s32 idx) {
            if (idx > mnBaseIdx) {
                int i = mnBaseIdx;
                int next;
                while (true) {
                    int tmp = GetNextPageIdx_(i);
                    if (tmp < 0 || tmp > idx) {
                        break;
                    }
                    i = tmp;
                }
                StartScrollToIdx(i);
            } else if (idx < mnBaseIdx) {
                int i = mnBaseIdx;
                while (idx < i) {
                    i = GetPrevPageIdx_(i);
                }
                StartScrollPageToIdx(i);
            }
        }

        void UITextArea::StopScroll() {
            mScrollAnimation.stop();
        }

        bool UITextArea::IsScrolling() {
            return mScrollAnimation.isActive();
        }

        void UITextArea::ScrollToSelectedText() {
            if (mnSelectedIdx >= 0 && !IsScrolling()) {
                if (mnBaseIdx > mnSelectedIdx) {
                    StartScrollPageToIdx(mnSelectedIdx);
                } else if (mnDispEndCompleteIdx < mnSelectedIdx) {
                    StartScrollPageToIdx(mnSelectedIdx);
                }
            }
        }

        void UITextArea::ChangeBaseIdx_(s32 idx) {
            for (u32 i = 0; i < NUM_PANES; i++) {
                mpTextAnmPane[i]->storeAnmState(&mAnmState[i]);
                nw4rmanager::AnmPane::AnmState blankState = {};
                mpTextAnmPane[i]->init();
                mpTextAnmPane[i]->restoreAnmState(&blankState);
            }
            mnBaseIdx = idx;
            mfXOffset = 0.0f;
            mnFocusedIdx = -1;
        }

        // HACK: Inline...
        inline s32 UITextArea::GetPaneIdx(s32 arg) const {
            if (arg < mnDispBeginIdx) {
                return -1;
            } else if (arg > mnDispEndIdx) {
                return -1;
            } else {
                s32 ret;
                if (arg < mnBaseIdx) {
                    ret = NUM_PANES - (mnBaseIdx - arg);
                } else {
                    ret = arg - mnBaseIdx;
                }

                while (ret < 0) {
                    ret += NUM_PANES;
                }

                while (ret >= NUM_PANES) {
                    ret -= NUM_PANES;
                }
                return ret;
            }
        }

        s32 UITextArea::GetCandidateIdx(s32 arg) const {
            s32 i = mnBaseIdx + arg;
            while (i < mnDispBeginIdx) {
                i += NUM_PANES;
            }
            while (mnDispEndIdx < i) {
                i -= NUM_PANES;
            }
            return i;
        }

        void UITextArea::onAnmEvent(AnmEvent ev, void* data) {
            if (ev == AE_1) {
                s32 dat = reinterpret_cast<s32>(data);
                if (mnBaseIdx + dat < 0) {
                    ChangeBaseIdx_(0);
                } else {
                    ChangeBaseIdx_(mnBaseIdx + dat);
                }
                UIObj::riseEvent(0x100, reinterpret_cast<void*>(0));
            }
        }

        void UITextArea::onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) {
            // TODO event enum?
            if (mgr()->isInScroll() && event != 1 && event != 0) {
                return;
            }
            if (!mgr()->searchAnmPane("W_predictWindow")->isInAnimation() || event == 1) {
                if (!mgr()->isInvalid()) {
                    switch (event) {
                        case 4:
                            if (input->field_0x0C == 0x800) {
                                s32 idx = GetSelectedPaneIdx();
                                if (mnFocusedIdx >= 0 && idx >= 0) {
                                    mpTextBoxPane[idx]->init();
                                    mpBoundingPane[idx]->init();
                                    mpTextAnmPane[idx]->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                                    riseEvent(0x101, reinterpret_cast<void*>(0));
                                }
                            }
                            break;
                        case 0:
                            if (&component == mpTextAreaPane) {
                                mbOnTextArea = true;
                                for (int i = 0; i < NUM_PANES; i++) {
                                    mpTextBoxPane[i]->init();
                                    mpBoundingPane[i]->init();
                                }
                                ChangeSelectedText(-1);
                            } else if (mnFocusedIdx < 0 && mbOnTextArea) {
                                for (int i = 0; i < NUM_PANES; i++) {
                                    if (mpBoundingPane[i] == &component) {
                                        s32 candidate = GetCandidateIdx(i);
                                        riseEvent(0x102, reinterpret_cast<void*>(candidate));
                                        mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                                        riseEvent(0, reinterpret_cast<void*>(4));
                                        return;
                                    }
                                }
                            }
                            break;
                        case 1:
                            if (&component == mpTextAreaPane) {
                                mbOnTextArea = false;
                                for (int i = 0; i < NUM_PANES; i++) {
                                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                                }
                            }

                            if (mnFocusedIdx >= 0) {
                                mnFocusedIdx = -1;
                                riseEvent(0x102, reinterpret_cast<void*>(-1));
                                for (int i = 0; i < NUM_PANES; i++) {
                                    mpTextBoxPane[i]->init();
                                    mpBoundingPane[i]->init();
                                    mpTextAnmPane[i]->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                                }
                            }
                            break;
                    }
                }
            }
        }

        void UITextArea::ApplyFontScale(f32 scale) {
            for (int i = 0; i < NUM_PANES; i++) {
                mpTextBoxPane[i]->getTextPane()->SetFontSize(nw4r::lyt::Size(mSize.width * scale, mSize.height * scale));
            }
        }

        void UIObj::riseEvent(u32 id, void* data) {
            if (mpListener != NULL) {
                mpListener->onEvent(this, id, data);
            }
        }

        UITextWindow::UITextWindow(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener)
            : UIObj(id, layout, listener), mpWindowPane(NULL), mpWindowAnmPane(NULL) {
        }

        void UITextWindow::Create(nw4rmanager::Layout* layout, const char* s1) {
            gui::PaneManager* mgr = layout->getPaneManager();
            mpWindowPane = mgr->searchPaneComponent(s1);
            mpWindowAnmPane = static_cast<PredictWindow*>(layout->searchAnmPane(s1));
        }

        void UITextWindow::Init() {
            mpWindowAnmPane->changeAnimation(ANM_PredictOff);
        }

        void UITextWindow::TurnOnOff(bool on) {
            if (on) {
                SetVisible(true);
                mpWindowAnmPane->changeAnimation(ANM_PredictOn);
            } else {
                mpWindowAnmPane->changeAnimation(ANM_PredictOff);
            }
        }

        void UITextWindow::TurnInvalid(bool invalid) {
            if (invalid) {
                mpWindowAnmPane->changeAnimation(ANM_InvalidOn);
            } else {
                mpWindowAnmPane->changeAnimation(ANM_InvalidOff);
            }
        }

        void UITextWindow::SetVisible(bool visible) {
            mpWindowPane->getPane()->SetVisible(visible);
            if (!visible) {
                if (mpManager->isInvalid()) {
                    mpWindowAnmPane->changeAnimation(ANM_InvalidNormal);
                } else {
                    mpWindowAnmPane->changeAnimation(ANM_Normal);
                }
            }
        }

        void UITextWindow::ChangeAnimation(u32 arg) {
            mpWindowAnmPane->changeAnimation(arg);
        }

        void UITextWindow::onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) {
            if (anim->muID == 0 && anmEvent == E_1) {
                riseEvent(0x400, reinterpret_cast<void*>(0));
            }
        }

        UIButton::UIButton(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener)
            : UIObj(id, layout, listener), mpButtonPane(NULL), mpButtonBoundPane(NULL), mpButtonAnmPane(NULL) {
        }

        void UIButton::Create(nw4rmanager::Layout* layout, const char* s1, const char* s2) {
            gui::PaneManager* mgr = layout->getPaneManager();
            mpButtonPane = mgr->searchPaneComponent(s1);
            mpButtonBoundPane = mgr->searchPaneComponent(s2);
            mpButtonAnmPane = static_cast<CandidateScrollAnmPane*>(layout->searchAnmPane(s1));
            mpButtonBoundPane->setListener(this);
        }

        void UIButton::Init() {
            mpButtonBoundPane->setTriggerTarget(true);
        }

        void UIButton::SetVisible(bool visible) {
            mpButtonPane->getPane()->SetVisible(visible);
            mpButtonBoundPane->getPane()->SetVisible(visible);
            if (visible) {
                mpButtonBoundPane->init();
            } else {
                mpButtonAnmPane->changeAnimation(ANM_Normal);
            }
        }

        void UIButton::onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) {
            // TODO event enum?
            if (mgr()->isInScroll() && event != 1 && event != 0) {
                return;
            }
            if (!mgr()->searchAnmPane("W_predictWindow")->isInAnimation() || event == 1) {
                if (!mgr()->isInvalid()) {
                    switch (event) {
                        case 4:
                            if (input->field_0x0C == 0x800) {
                                mpButtonAnmPane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                                if (getID() == 1) {
                                    mgr()->onLeftPageScroll();
                                } else if (getID() == 2) {
                                    mgr()->onRightPageScroll();
                                }
                            }
                            break;
                        case 2:
                            if (input->field_0x10 == 0x800 && !(input->field_0x0C & 0x800) &&
                                component.getFlightDuration(input->field_0x00) % 20 != 0) {
                                mpButtonAnmPane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                                if (getID() == 1) {
                                    mgr()->onLeftPageScroll();
                                } else if (getID() == 2) {
                                    mgr()->onRightPageScroll();
                                }
                            }
                            break;
                        case 1:
                            mpButtonAnmPane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                            break;
                        case 0:
                            mpButtonAnmPane->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                            riseEvent(0, reinterpret_cast<void*>(4));
                            break;
                    }
                }
            }
        }

        UIOnOffButton::UIOnOffButton(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener)
            : UIObj(id, layout, listener), mpOnPictPane(NULL), mpOnBoundPane(NULL), mpOffPictPane(NULL), mpOffBoundPane(NULL), mpOnAnmPane(NULL),
              mpOffAnmPane(NULL) {
        }

        void UIOnOffButton::Create(nw4rmanager::Layout* layout) {
            gui::PaneManager* mgr = layout->getPaneManager();
            mpOnPictPane = mgr->searchPaneComponent("P_OnBtn");
            mpOnBoundPane = mgr->searchPaneComponent("B_OnBtn");
            mpOnAnmPane = static_cast<OnOffAnmPane*>(layout->searchAnmPane("P_OnBtn"));
            mpOffPictPane = mgr->searchPaneComponent("P_OffBtn");
            mpOffBoundPane = mgr->searchPaneComponent("B_OffBtn");
            mpOffAnmPane = static_cast<OnOffAnmPane*>(layout->searchAnmPane("P_OffBtn"));

            layout->getLayout()->GetRootPane()->FindPaneByName("P_OffBtn")->GetMaterial()->GetTexture(&mOffTexDefault, 0);
            layout->getLayout()->GetRootPane()->FindPaneByName("P_JPOffBtn")->GetMaterial()->GetTexture(&mOffTexJP, 0);
            layout->getLayout()->GetRootPane()->FindPaneByName("P_CNOffBtn")->GetMaterial()->GetTexture(&mOffTexCN, 0);
            layout->getLayout()->GetRootPane()->FindPaneByName("P_OnBtn")->GetMaterial()->GetTexture(&mOnTexDefault, 0);
            layout->getLayout()->GetRootPane()->FindPaneByName("P_CNOnBtn")->GetMaterial()->GetTexture(&mOnTexCN, 0);

            mpOffBoundPane->setListener(this);
            mpOnBoundPane->setListener(this);
        }

        void UIOnOffButton::Init() {
            mpOnBoundPane->setTriggerTarget(true);
            mpOffBoundPane->setTriggerTarget(true);
        }

        void UIOnOffButton::SetLanguage(Language lang) {
            if (lang == JP) {
                mpOffPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOffTexJP);
                mpOnPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOnTexDefault);
            } else if (lang == CN) {
                mpOffPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOffTexCN);
                mpOnPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOnTexCN);
            } else {
                mpOffPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOffTexDefault);
                mpOnPictPane->getPictPane()->GetMaterial()->SetTexture(0, mOnTexDefault);
            }
        }

        void UIOnOffButton::SetOnOff(bool on) {
            mpOnAnmPane->changeAnimation(ANM_Normal);
            mpOffAnmPane->changeAnimation(ANM_Normal);
            if (on) {
                mpOnPictPane->getPane()->SetVisible(true);
                mpOnBoundPane->getPane()->SetVisible(true);
                mpOffPictPane->getPane()->SetVisible(false);
                mpOffBoundPane->getPane()->SetVisible(false);
            } else {
                mpOnPictPane->getPane()->SetVisible(false);
                mpOnBoundPane->getPane()->SetVisible(false);
                mpOffPictPane->getPane()->SetVisible(true);
                mpOffBoundPane->getPane()->SetVisible(true);
            }
        }

        void UIOnOffButton::onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) {
            if (anmPane == mpOnAnmPane) {
                if (anim->muID == 7 && anmEvent == E_1) {
                    riseEvent(0x301, reinterpret_cast<void*>(0));
                }
            } else if (anmPane == mpOffAnmPane) {
                if (anim->muID == 7 && anmEvent == E_1) {
                    riseEvent(0x300, reinterpret_cast<void*>(0));
                }
            }
        }

        void UIOnOffButton::onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) {
            // TODO event enum?
            if (mgr()->isInScroll() && event != 1 && event != 0) {
                return;
            }
            if (!mgr()->searchAnmPane("W_predictWindow")->isInAnimation() || event == 1) {
                OnOffAnmPane* p;
                if (&component == mpOnBoundPane) {
                    p = mpOnAnmPane;
                } else {
                    p = mpOffAnmPane;
                }
                switch (event) {
                    case 4:
                        if (input->field_0x0C & 0x800) {
                            mgr()->onOnOffButton(true);
                        }
                        break;
                    case 1:
                        p->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                        break;
                    case 0:
                        p->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                        riseEvent(0, reinterpret_cast<void*>(4));
                        break;
                }
            }
        }

        bool UIOnOffButton::IsTurning() const {
            if (mpOnAnmPane->isTurning() || mpOffAnmPane->isTurning()) {
                return true;
            }
            return false;
        }

    }  // namespace candidatebox
}  // namespace textinput
