#include "keyboard/tiToolBar.h"

#include "keyboard/tiHKBManager.h"
#include "keyboard/tiLanguageIndependentData.h"
#include "keyboard/tiLayoutGather.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiUtil.h"

#include <new>

namespace textinput {

    namespace toolbar {

        static const char* COMMON_BUTTON_ANIM = "P_BT_cancel";
        static const char* COMMON_CHG_ANIM = "P_kyChng_QWERTY";

        // name made up, no dwarf (?)
        struct AnimationFile {
            u32 id;
            char fileName[0x40];
        };

        // name made up, no dwarf (?)
        struct PaneToAnimation {
            s32 type;
            const char* paneName;
            u32 count;
            const char* forceAddName;
            const AnimationFile* pAnims[12];
        };

        static const AnimationFile csAninationFile[] = {
            {0, "fs_VK_toolbar_a_normal.brlan"},     {1, "fs_VK_toolbar_a_Focus-IN.brlan"}, {2, "fs_VK_toolbar_a_Focus-OUT.brlan"},
            {3, "fs_VK_toolbar_a_Roll_over.brlan"},  {4, "fs_VK_toolbar_a_Pushed.brlan"},   {5, "fs_VK_toolbar_a_toggle-ON.brlan"},
            {6, "fs_VK_toolbar_a_toggle-OFF.brlan"},
        };

        // @bug: Are the [7]s not out of bounds? The counts are 7 too so it's probably fine...
        static const PaneToAnimation csPaneToAnimation[] = {
            {0, "P_BT_cancel", 5, NULL, {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4]}},
            {0,
             "P_BT_confirm",
             5,
             COMMON_BUTTON_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4]}},
            {1,
             "P_kyChng_QWERTY",
             7,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6], &csAninationFile[7]}},
            {1,
             "P_kyChng_CP",
             7,
             COMMON_CHG_ANIM,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[4], &csAninationFile[5],
              &csAninationFile[6], &csAninationFile[7]}},
        };

        void Base::setQwerty(bool qwerty) {
            if (getLanguage() == KR && mgr()->getCellPhoneKeyboard() != NULL && !mgr()->getCellPhoneKeyboard()->isNumeric()) {
                qwerty = true;
            }
            mQwerty = qwerty;
            if (mgr()->getInputForm() != NULL) {
                mgr()->getInputForm()->notifyChangeMode();
            }
        }

        LayoutByNW4R::~LayoutByNW4R() {
            mpEventHandler->~EventHandler();
            MEMFreeToAllocator(mpAllocator, mpEventHandler);
            AnmPane* it = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes));
            while (it != NULL) {
                nw4r::ut::List_Remove(&mAnmPanes, it);
                it->destroy(mpAllocator);
                it = static_cast<AnmPane*>(nw4r::ut::List_GetFirst(&mAnmPanes));
            }
        }

        void LayoutByNW4R::create(MEMAllocator* allocator) {
            Base::create(allocator);
            void* eventBuf = MEMAllocFromAllocator(allocator, sizeof(EventHandler));
            mpEventHandler = new (eventBuf) EventHandler(this);
            Layout::createWithEventHandler(allocator, mpEventHandler);
            mpPaneManager->setAllComponentTriggerTarget(false);
            mpPaneManager->setAllBoundingBoxComponentTriggerTarget(true);

            for (u16 i = 0; i < ARRAY_LENGTH(csPaneToAnimation); i++) {
                const PaneToAnimation &p = csPaneToAnimation[i];
                AnmPane* pane = NULL;
                switch (p.type) {
                    case 0: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(NormalButtonAnmPane));
                        pane = new (pBtnBuf) NormalButtonAnmPane(getPane(p.paneName), NULL);
                        break;
                    }
                    case 1: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(ToggleButtonAnmPane));
                        pane = new (pBtnBuf) ToggleButtonAnmPane(getPane(p.paneName), NULL);
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
            init();
        }

        void LayoutByNW4R::setOKButtonVisible(bool visible) {
            setVisible("P_BT_confirm", visible);
        }

        void LayoutByNW4R::setCancelButtonVisible(bool visible) {
            setVisible("P_BT_cancel", visible);
        }

        void LayoutByNW4R::setOKButtonCaption(const wchar_t* caption) {
            setString("T_BT_confirm", caption);
        }

        void LayoutByNW4R::setCancelButtonCaption(const wchar_t* caption) {
            setString("T_BT_cancel", caption);
        }

        void LayoutByNW4R::init() {
            Base::init();
            Layout::init();
            searchAnmPane("P_kyChng_CP")->changeAnimation(0);
            searchAnmPane("P_kyChng_QWERTY")->changeAnimation(0);
            enableKeytopChange(true);
            setQwerty(isQwerty());  // okay
            searchAnmPane("P_BT_confirm")->changeAnimation(0);
            searchAnmPane("P_BT_cancel")->changeAnimation(0);
            setOKButtonCaption(langindependent::cLanguageIndependentString[langindependent::LANG_STRID_OK][getLanguage()]);
            setCancelButtonCaption(langindependent::cLanguageIndependentString[langindependent::LANG_STRID_CANCEL][getLanguage()]);
            setCancelButtonVisible(true);
            setOKButtonVisible(true);
            initPaneLastDrawReceived();
            mpLayout->Animate(0);
            mpLayout->CalculateMtx(mDrawInfo);
        }

        void LayoutByNW4R::cancelStateFocusIn() {
            for (int i = 0; i < ARRAY_LENGTH(csPaneToAnimation); i++) {
                AnmPane* pane = static_cast<AnmPane*>(searchAnmPane(csPaneToAnimation[i].paneName));
                if (pane != NULL) {
                    switch (pane->getState()) {
                        case ANM_FocusIn:
                        case ANM_RollOver: {
                            pane->changeAnimation(ANM_FocusOut);
                            break;
                        }
                        case ANM_Pushed: {
                            switch (pane->getKeyType()) {
                                case KT_NormalButton: {
                                    pane->changeAnimation(ANM_FocusOut);
                                    break;
                                }
                                case KT_ShiftCaps: {
                                    pane->changeAnimation(ANM_ToggleOn);
                                    break;
                                }
                            }
                            break;
                        }
                        case ANM_ToggleOnFocusIn:
                        case ANM_ToggleOnPushed: {
                            pane->changeAnimation(ANM_ToggleOnFocusOut);
                            break;
                        }
                    }
                }
            }
        }

        void LayoutByNW4R::onOK() {
            mpEventObserver->onOK();
            mpEventObserver->onSE(sound::SE_CHAR_DECIDE);
            cancelStateFocusIn();
            mpPaneManager->init();
            initPaneLastDrawReceived();
            mgr()->getPCKeyboard()->onClose();
            mgr()->getCellPhoneKeyboard()->onClose();
            mgr()->getCandidateBox()->onClose();
        }

        void LayoutByNW4R::onCancel() {
            mpEventObserver->onCancel();
            mpEventObserver->onSE(sound::SE_CHAR_DECIDE);
            cancelStateFocusIn();
            mpPaneManager->init();
            initPaneLastDrawReceived();
            mgr()->getPCKeyboard()->onClose();
            mgr()->getCellPhoneKeyboard()->onClose();
            mgr()->getCandidateBox()->onClose();
        }

        void LayoutByNW4R::setLanguage(Language language) {
            Base::setLanguage(language);
            init();
        }

        void LayoutByNW4R::setQwertyWithSE(bool qwerty) {
            if (qwerty != isQwerty()) {
                if (qwerty) {
                    mpEventObserver->onSE(sound::SWITCH_TO_KEYBOARD);
                } else {
                    mpEventObserver->onSE(sound::SWITCH_TO_KETAI);
                }
            }
            setQwerty(qwerty);
        }

        void LayoutByNW4R::setQwerty(bool qwerty) {
            if (qwerty) {
                Animation state = static_cast<AnmPane*>(searchAnmPane("P_kyChng_CP"))->getState();
                if (state != ANM_Normal && state != ANM_ToggleOff) {
                    searchAnmPane("P_kyChng_CP")->changeAnimation(ANM_ToggleOff);
                }
                searchAnmPane("P_kyChng_QWERTY")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
            } else {
                Animation state = static_cast<AnmPane*>(searchAnmPane("P_kyChng_QWERTY"))->getState();
                if (state != ANM_Normal && state != ANM_ToggleOff) {
                    searchAnmPane("P_kyChng_QWERTY")->changeAnimation(ANM_ToggleOff);
                }
                searchAnmPane("P_kyChng_CP")->onAnmEvent(nw4rmanager::AnmPane::PE_0);
            }

            if (getLanguage() == KR && mgr()->getCellPhoneKeyboard() != NULL && !mgr()->getCellPhoneKeyboard()->isNumeric()) {
                qwerty = true;
            }
            mQwerty = qwerty;
            if (mgr()->getInputForm() != NULL) {
                mgr()->getInputForm()->notifyChangeMode();
            }
        }

        void LayoutByNW4R::enableKeytopChange(bool enable) {
            if (meLanguage == KR) {
                enable = false;
            }
            mbIsEnableQwertyChg = enable;
            setVisible("P_kyChng_QWERTY", enable);
            setVisible("P_kyChng_CP", enable);
            setVisible("P_keyChange", enable);
        }

        nw4r::lyt::Pane* LayoutByNW4R::getUpArea() {
            return mpLayout->GetRootPane()->FindPaneByName("N_UP");
        }

        nw4r::lyt::Pane* LayoutByNW4R::getDownArea() {
            return mpLayout->GetRootPane()->FindPaneByName("N_DOWN");
        }

        void NormalButtonAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0) {
                changeAnimation(ANM_Pushed);
            }
            switch (meState) {
                case ANM_Normal: {
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                }
                case ANM_FocusIn: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_RollOver);
                    }
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                }
                case ANM_RollOver: {
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                }
                case ANM_FocusOut: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                }
                case ANM_Pushed: {
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

        void ToggleButtonAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0 && (meState != ANM_ToggleOn && meState != ANM_Pushed)) {
                changeAnimation(ANM_Pushed);
            }
            switch (meState) {
                case ANM_Normal: {
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                }
                case ANM_FocusIn: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_RollOver);
                    }
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                }
                case ANM_RollOver: {
                    if (paneEvent == PE_2) {
                        changeAnimation(ANM_FocusOut);
                    }
                    break;
                }
                case ANM_FocusOut: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                }
                case ANM_Pushed: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_ToggleOn);
                    }
                    break;
                }
                case ANM_ToggleOff: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    if (paneEvent == PE_1) {
                        changeAnimation(ANM_FocusIn);
                    }
                    break;
                }
            }
        }

        void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
            const char* name = paneComponent->getPane()->GetName();
            if (name[0] == 'B') {
                char tmp[17];
                util::replaceChar(tmp, sizeof(tmp), name, 0, 'P');
                AnmPane* pane = static_cast<AnmPane*>(mpLayoutByNW4R->searchAnmPane(tmp));
                if (pane != NULL) {
                    switch (event) {
                        case ON_TRIG: {
                            if ((input->field_0x0C & 0x800)) {
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                            }
                            break;
                        }
                        case ON_LEFT: {
                            pane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                            break;
                        }
                        case ON_POINT: {
                            mpEventObserver->onSE(sound::SE_SELECT);
                            mpLayoutByNW4R->setPaneLastDrawReceived(pane->getPane());
                            pane->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                            break;
                        }
                    }
                }
                if (event == ON_TRIG && (input->field_0x0C & 0x800)) {
                    if (util::strcmp(tmp, "P_BT_confirm")) {
                        mpLayoutByNW4R->onOK();
                    } else if (util::strcmp(tmp, "P_BT_cancel")) {
                        mpLayoutByNW4R->onCancel();
                    } else if (util::strcmp(tmp, "P_kyChng_QWERTY")) {
                        if (!mpLayoutByNW4R->isQwerty()) {
                            mpLayoutByNW4R->searchAnmPane("P_kyChng_CP")->changeAnimation(6);
                        }
                        mpLayoutByNW4R->setQwertyWithSE(true);
                    } else if (util::strcmp(tmp, "P_kyChng_CP")) {
                        if (mpLayoutByNW4R->isQwerty()) {
                            mpLayoutByNW4R->searchAnmPane("P_kyChng_QWERTY")->changeAnimation(6);
                        }
                        mpLayoutByNW4R->setQwertyWithSE(false);
                    }
                }
            }
        }

        void LayoutByNW4R::draw() {
            Layout::draw();
        }

    }  // namespace toolbar

}  // namespace textinput
