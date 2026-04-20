#include "keyboard/tiPredictLang.h"

#include "keyboard/tiLanguageIndependentData.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiUtil.h"

#include <new>

namespace textinput {
    namespace predictlang {

        static const char* COMMON_PD_BUTTON = "P_PRDC_US_US";

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

        static const AnimationFile csAninationFile[] = {
            {ANM_Normal, "fs_prdicSelWidw_a_PRDC_normal.brlan"},      {ANM_FocusIn, "fs_prdicSelWidw_a_PRDC_Focus-IN.brlan"},
            {ANM_FocusOut, "fs_prdicSelWidw_a_PRDC_Focus-OUT.brlan"}, {ANM_Pushed, "fs_prdicSelWidw_a_PRDC_Pushed.brlan"},
            {ANM_FadeIn, "fs_prdicSelWidw_a_PRDC_FADE-IN.brlan"},     {ANM_FadeOut, "fs_prdicSelWidw_a_PRDC_FADE-OUT.brlan"},
            {ANM_RollOver, "fs_prdicSelWidw_a_PRDC_Roll_over.brlan"}, {ANM_ToggleOff, "fs_prdicSelWidw_a_PRDC_toggle-OFF.brlan"},
            {ANM_ToggleOn, "fs_prdicSelWidw_a_PRDC_toggle-ON.brlan"}};

        static const PaneToAnimation csPaneToAnimation[] = {
            {KT_Whole, "N_PRDCkeytop_all", 3, NULL, {&csAninationFile[0], &csAninationFile[4], &csAninationFile[5]}},
            {KT_ChangeButton,
             "P_PRDC_EU_UK",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_EU_Ger",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_EU_Fre",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_EU_Spa",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_EU_Ita",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_EU_Dut",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_US_US",
             7,
             NULL,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_US_Fre",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
            {KT_ChangeButton,
             "P_PRDC_US_Spa",
             7,
             COMMON_PD_BUTTON,
             {&csAninationFile[0], &csAninationFile[1], &csAninationFile[2], &csAninationFile[3], &csAninationFile[6], &csAninationFile[7],
              &csAninationFile[8]}},
        };

        static const char* csszToggleGroup[][8] = {
            {NULL},
            {"P_PRDC_US_US", "P_PRDC_US_Fre", "P_PRDC_US_Spa"},
            {"P_PRDC_EU_UK", "P_PRDC_EU_Ger", "P_PRDC_EU_Fre", "P_PRDC_EU_Spa", "P_PRDC_EU_Ita", "P_PRDC_EU_Dut"},
            {NULL},
            {NULL},
        };

        struct PaneToPredictMode {
            inputform::Base::PredictMode mode;
            const char* pane;
        };

        static const PaneToPredictMode csPaneToPredictMode[] = {
            {inputform::Base::PM_USEn, csszToggleGroup[1][0]}, {inputform::Base::PM_USFr, csszToggleGroup[1][1]},
            {inputform::Base::PM_USSp, csszToggleGroup[1][2]}, {inputform::Base::PM_En, csszToggleGroup[2][0]},
            {inputform::Base::PM_De, csszToggleGroup[2][1]},   {inputform::Base::PM_Fr, csszToggleGroup[2][2]},
            {inputform::Base::PM_Sp, csszToggleGroup[2][3]},   {inputform::Base::PM_It, csszToggleGroup[2][4]},
            {inputform::Base::PM_Nl, csszToggleGroup[2][5]},
        };

        // inlined
        static inputform::Base::PredictMode getPredictModeFromBPaneName(const char* bpaneName) {
            inputform::Base::PredictMode mode = inputform::Base::PM_Off;
            for (u16 i = 0; i < ARRAY_LENGTH(csPaneToPredictMode); i++) {
                if (util::strcmp(csPaneToPredictMode[i].pane, bpaneName)) {
                    return mode = csPaneToPredictMode[i].mode;
                }
            }
            return inputform::Base::PM_End;
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
                const PaneToAnimation& p = csPaneToAnimation[i];
                AnmPane* pane = NULL;
                switch (p.type) {
                    case KT_Whole: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(WholeAnmPane));
                        pane = new (pBtnBuf) WholeAnmPane(getPane(p.paneName), this);
                        break;
                    }
                    case KT_NormalButton: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(NormalButtonAnmPane));
                        pane = new (pBtnBuf) NormalButtonAnmPane(getPane(p.paneName), NULL);
                        break;
                    }
                    case KT_ChangeButton: {
                        void* pBtnBuf = MEMAllocFromAllocator(allocator, sizeof(ChangeButtonAnmPane));
                        pane = new (pBtnBuf) ChangeButtonAnmPane(getPane(p.paneName), NULL, this);
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

        void LayoutByNW4R::init() {
            searchAnmPane("N_PRDCkeytop_all")->changeAnimation(ANM_Normal);
            setVisible("N_PRDCkeytop_all", false);
            mpLayout->Animate(0);
            mpLayout->CalculateMtx(mDrawInfo);
        }

        void LayoutByNW4R::open(inputform::Base::PredictMode predictMode, keyboard::KeyboardBase* keyboard) {
            mpCaller = keyboard;
            changeDestination(meDestination);
            setPredictMode(predictMode);
            mbActive = true;
            mbInput = false;
            setVisible("N_PRDCkeytop_all", true);
            setAllButtonNormal();
            searchAnmPane("N_PRDCkeytop_all")->changeAnimation(ANM_FadeIn);
            mpEventObserver->onSE(sound::SE_LANGUAGE_PAGE_OPEN);
        }

        void LayoutByNW4R::endToOpen() {
            mbInput = true;
            mpPaneManager->init();
        }

        void LayoutByNW4R::startToClose() {
            searchAnmPane("N_PRDCkeytop_all")->changeAnimation(ANM_FadeOut);
            mbInput = false;
        }

        void LayoutByNW4R::endToClose() {
            // TODO - ???
            inputform::Base::PredictMode mode;
            sendCommand(31, &mode);
            mode = mePredictMode;
            sendCommand(29, &mode);
            if (mpCaller != NULL) {
                mpCaller->update();
            }
            mbActive = false;
            setVisible("N_PRDCkeytop_all", false);
        }

        void LayoutByNW4R::changeDestination(Destination destination) {
            meDestination = destination;
            switch (destination) {
                case DST_JP:
                    setVisible("N_PRDCkey_JP", true);
                    setVisible("N_PRDCkey_US", false);
                    setVisible("N_PRDCkey_EU", false);
                    break;
                case DST_US:
                    setVisible("N_PRDCkey_JP", false);
                    setVisible("N_PRDCkey_US", true);
                    setVisible("N_PRDCkey_EU", false);
                    break;
                case DST_EU:
                    setVisible("N_PRDCkey_JP", false);
                    setVisible("N_PRDCkey_US", false);
                    setVisible("N_PRDCkey_EU", true);
                    break;
                case DST_CN:
                    setVisible("N_PRDCkey_JP", false);
                    setVisible("N_PRDCkey_US", true);
                    setVisible("N_PRDCkey_EU", false);
                    break;
                case DST_KR:
                    setVisible("N_PRDCkey_JP", false);
                    setVisible("N_PRDCkey_US", true);
                    setVisible("N_PRDCkey_EU", false);
                    break;
            }
        }

        void LayoutByNW4R::onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) {
            if (util::strcmp("N_PRDCkeytop_all", anmPane->getPane()->GetName())) {
                switch (anim->muID) {
                    case ANM_FadeIn:
                        if (anmEvent == E_1) {
                            getTargetAnmPane(meDestination, mePredictMode)->changeAnimation(ANM_Pushed);
                            endToOpen();
                        }
                        break;
                    case ANM_FadeOut:
                        if (anmEvent == E_1) {
                            endToClose();
                        }
                        break;
                }
            }
        }

        void LayoutByNW4R::setAllButtonToggleOffWithout(const char* paneName) {
            int i = 0;
            const char* candidate = csszToggleGroup[meDestination][0];
            while (candidate != NULL) {
                if (!util::strcmp(candidate, paneName)) {
                    searchAnmPane(candidate)->onAnmEvent(nw4rmanager::AnmPane::PE_5);
                }
                i += 1;
                candidate = csszToggleGroup[meDestination][i];
            }
        }

        void LayoutByNW4R::setAllButtonNormal() {
            int i = 0;
            const char* candidate = csszToggleGroup[meDestination][0];
            while (candidate != NULL) {
                searchAnmPane(candidate)->changeAnimation(ANM_Normal);
                i += 1;
                candidate = csszToggleGroup[meDestination][i];
            }
        }

        nw4rmanager::AnmPane* LayoutByNW4R::getTargetAnmPane(Destination destination, inputform::Base::PredictMode predictMode) {
            for (u16 i = 0; i < ARRAY_LENGTH(csPaneToPredictMode); i++) {
                const PaneToPredictMode& it = csPaneToPredictMode[i];
                if (predictMode == it.mode) {
                    const char* pane = it.pane;
                    if (predictMode != inputform::Base::PM_Off) {
                        return searchAnmPane(pane);
                    }
                }
            }

            return NULL;
        }

        void LayoutByNW4R::setLanguage(Language language) {
            setString("T_PRDC_title", langindependent::cLanguageIndependentString[langindependent::LANG_STRID_LANG_DICT][language]);
            switch (language) {
                case JP:
                    setPredictMode(inputform::Base::PM_Atok);
                    break;
                case USA:
                    setPredictMode(inputform::Base::PM_USEn);
                    break;
                case UK:
                    setPredictMode(inputform::Base::PM_En);
                    break;
                case DE:
                    setPredictMode(inputform::Base::PM_De);
                    break;
                case IT:
                    setPredictMode(inputform::Base::PM_It);
                    break;
                case NL:
                    setPredictMode(inputform::Base::PM_Nl);
                    break;
                case SP:
                    if (meDestination == DST_EU) {
                        setPredictMode(inputform::Base::PM_Sp);
                    } else {
                        setPredictMode(inputform::Base::PM_USSp);
                        setString("T_PRDC_title", L"Diccionario");
                    }
                    break;
                case FR:
                    if (meDestination == DST_EU) {
                        setPredictMode(inputform::Base::PM_Fr);
                    } else {
                        setPredictMode(inputform::Base::PM_USFr);
                        setString("T_PRDC_title", L"Dictionnaire");
                    }
                    break;
                case CN:
                    setPredictMode(inputform::Base::PM_11);
                    break;
                case KR:
                    setPredictMode(inputform::Base::PM_12);
                    break;
            }
        }

        void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
            if (!mpLayoutByNW4R->canBeInputed()) {
                return;
            }
            const char* name = paneComponent->getPane()->GetName();
            if (name[0] == 'B') {
                char tmp[17];
                // open-coded util::replaceChar
                memset(tmp, 0, 17);
                strncpy(tmp, name, strlen(name));
                tmp[0] = 'P';

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
                            pane->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                            break;
                        }
                    }
                }

                if (event == ON_TRIG && (input->field_0x0C & 0x800)) {
                    char tmp[17];
                    // open-coded util::replaceChar
                    memset(tmp, 0, 17);
                    strncpy(tmp, name, strlen(name));
                    tmp[0] = 'P';

                    inputform::Base::PredictMode mode = getPredictModeFromBPaneName(tmp);
                    if (mode != inputform::Base::PM_End) {
                        mpLayoutByNW4R->setPredictMode(mode);
                        mpLayoutByNW4R->startToClose();
                        mpEventObserver->onSE(sound::SE_LANGUAGE_SWITCHING);
                    }
                }
            }
        }

        void WholeAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            switch (meState) {
                case ANM_FadeIn: {
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_Normal);
                    }
                    break;
                }
            }
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

        void ChangeButtonAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
            if (paneEvent == PE_0) {
                changeAnimation(ANM_Pushed);
            }
            if (paneEvent == PE_5 && meState != ANM_Normal) {
                changeAnimation(ANM_ToggleOff);
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
                case ANM_ToggleOff:
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
                    if (paneEvent == PE_3) {
                        mpLayout->setAllButtonToggleOffWithout(getPane()->GetName());
                    }
                    if (paneEvent == PE_4) {
                        changeAnimation(ANM_ToggleOn);
                    }
                    break;
                }
            }
        }

        // HACK: weak function order
        DECOMP_FORCE_ACTIVE(tiPredictLang_cpp, (((CommandSender*)(NULL))->updateFromReceiver(0, NULL), 0))

        void LayoutByNW4R::draw() {
            nw4rmanager::Layout::draw();
        }

        void LayoutByNW4R::setDestination(Destination destination) {
            changeDestination(destination);
        }

        bool LayoutByNW4R::isActive() {
            return mbActive;
        }

    }  // namespace predictlang
}  // namespace textinput
