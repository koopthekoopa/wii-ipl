#include "keyboard/tiSignWindow.h"

// #include "keyboard/tiHKBManager.h"
// #include "keyboard/tiLayoutGather.h"
#include "keyboard/tiLanguageIndependentData.h"
#include "keyboard/tiManager.h"
#include "keyboard/tiUtil.h"

#include <new>

namespace textinput {
    namespace keyboard {
        namespace signwindow {
            enum AnimationId {
                ANIM_ID_NORMAL = 0,
                ANIM_ID_FADEIN,
                ANIM_ID_FOCUSIN,
                ANIM_ID_ROLLOVER,
                ANIM_ID_PUSHED,
                ANIM_ID_SCROLLPREV,
                ANIM_ID_FOCUSOUT,
                ANIM_ID_SCROLLNEXT,
                ANIM_ID_FADEOUT,
            };

            typedef struct {
                AnimationId id;             // 0x00
                const char fileName[0x40];  // 0x04
            } AnimFileForSign;

            typedef struct _PaneToAnimationInSign {
                u32 paneType;                     // 0x00
                char paneName[20];                // 0x04
                u32 animCount;                    // 0x18
                const char* forcedName;           // 0x1C
                const AnimFileForSign* anims[8];  // 0x20
            } PaneToAnimationInSign;

            // clang-format off
            const AnimFileForSign csAninationFileForSign[] = {
                {ANIM_ID_NORMAL,     "fs_signWindow_a_SGN_normal.brlan"},
                {ANIM_ID_FADEIN,     "fs_signWindow_a_SGN_FADE-IN.brlan"},
                {ANIM_ID_FADEOUT,    "fs_signWindow_a_Scroll_FADE-OUT.brlan"},
                {ANIM_ID_FOCUSIN,    "fs_signWindow_a_SGN_Focus-IN.brlan"},
                {ANIM_ID_FOCUSOUT,   "fs_signWindow_a_SGN_Focus-OUT.brlan"},
                {ANIM_ID_ROLLOVER,   "fs_signWindow_a_SGN_Roll_over.brlan"},
                {ANIM_ID_PUSHED,     "fs_signWindow_a_SGN_Pushed.brlan"},
                {ANIM_ID_SCROLLNEXT, "fs_signWindow_a_SGN_scroll_next.brlan"},
                {ANIM_ID_SCROLLPREV, "fs_signWindow_a_SGN_scroll_prev.brlan"},
            };
            const struct { char name[20]; VKeyCode code; } csPaneNameToControlKey[] = {
                {"B_SGNkey_close", VCODE_SGNCLOSE},
                {"B_SGNkey_prev",  VCODE_SGNPREV},
                {"B_SGNkey_next",  VCODE_SGNNEXT},
            };
            const LanguageDependencyData csLanguageDependencyData[] = {
                {4, csSignKeyJP},
                {10, csSignKeyUS},
                {10, csSignKeyUK},
                {10, csSignKeyFR},
                {10, csSignKeyDE},
                {10, csSignKeyIT},
                {10, csSignKeySP},
                {10, csSignKeyNL},
                {4, csSignKeyCN},
                {4, csSignKeyKR},
            };

            const char *csSgnKeys[] = {
                "P_SGNkey_00", "P_SGNkey_01", "P_SGNkey_02", "P_SGNkey_03", "P_SGNkey_04",
                "P_SGNkey_05", "P_SGNkey_06", "P_SGNkey_07", "P_SGNkey_08", "P_SGNkey_09",
                "P_SGNkey_10", "P_SGNkey_11", "P_SGNkey_12", "P_SGNkey_13", "P_SGNkey_14",
                "P_SGNkey_15", "P_SGNkey_16", "P_SGNkey_17", "P_SGNkey_18", "P_SGNkey_19",
            };

            const char *baseSignKey = "P_SGNkey_00";
            const char *baseCloseKey = "P_SGNkey_close";
            PaneToAnimationInSign csPaneToAnimationInSign[] = {
                {0, "N_SGNkeytop_all", 3,         NULL, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2]}},
                {1, "N_SGNkeyall",     3,         NULL, {&csAninationFileForSign[0], &csAninationFileForSign[7], &csAninationFileForSign[8]}},
                {2, "P_SGNkey_00",     7,         NULL, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_01",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_02",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_03",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_04",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_05",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_06",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_07",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_08",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_09",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_10",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_11",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_12",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_13",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_14",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_15",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_16",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_17",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_18",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_19",     7,  baseSignKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_prev",   7, baseCloseKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_next",   7, baseCloseKey, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
                {2, "P_SGNkey_close",  7,         NULL, {&csAninationFileForSign[0], &csAninationFileForSign[1], &csAninationFileForSign[2], &csAninationFileForSign[3], &csAninationFileForSign[4], &csAninationFileForSign[5], &csAninationFileForSign[6]}},
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
            wchar_t getWCharCode(const PaneNameToCharCodeInSignMode* paneNameToCharCode, const char* paneName, u16 pageIdx) {
                for (u16 i = 0; i < 20; i++) {
                    if (util::strcmp(paneNameToCharCode[i].szPaneName, paneName)) {
                        return paneNameToCharCode[i].wc[pageIdx];
                    }
                }
                return L'\0';
            }

            void Base::create(MEMAllocator* alloc) {
                Base::init();
            }
            void Base::init() {
                mPageIdx = 0;
                mbIsLocked = 0;
                mbOpenFlag = false;
                mpLangDepData = &csLanguageDependencyData[getLanguage()];
            }
            void Base::onKey(u32 event, void* data) {
                if (event == 4) {
                    VKeyCode keyCode = getVKeyCode((const char*)data);
                    if (keyCode != CODE_UNK_0x1B) {
                        switch (keyCode) {
                            case VCODE_SGNCLOSE:
                                close();
                                break;
                            case VCODE_SGNPREV:
                                movePrevSignPage();
                                break;
                            case VCODE_SGNNEXT:
                                moveNextSignPage();
                                break;

                            default:
                                break;
                        }
                    } else {
                        wchar_t enteredCharCode = getWCharCode(mpLangDepData->paneNameToCharCode, (char*)data, mPageIdx);
                        if (enteredCharCode != L'\0') {
                            CommandReceiver::Command3Or5Data cmdData = {enteredCharCode, 3, mbOpenFlag, false, false, false, NULL};

                            if (mpMgr->getInputForm()->isAtokActive()) {
                                cmdData.unk_0x4 = 1;
                            }
                            if (meLanguage == KR || meLanguage == CN) {
                                cmdData.unk_0x4 = 1;
                            }
                            sendCommand(5, &cmdData);
                        }
                    }
                }
            }
            void Base::close() {
            }
            void Base::movePrevSignPage() {
                if (mPageIdx == 0) {
                    mPageIdx = mpLangDepData->pageCount - 1;
                } else {
                    mPageIdx--;
                }
            }
            void Base::moveNextSignPage() {
                if (++mPageIdx >= mpLangDepData->pageCount) {
                    mPageIdx = 0;
                }
            }

            LayoutByNW4R::~LayoutByNW4R() {
                mpEventHandler->~EventHandler();
                MEMFreeToAllocator(mpAllocator, mpEventHandler);
                AnmPane* pane = (AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes);
                while (pane != NULL) {
                    nw4r::ut::List_Remove(&mAnmPanes, pane);
                    pane->destroy(mpAllocator);
                    pane = (AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes);
                }
            }
            void LayoutByNW4R::create(MEMAllocator* allocator) {
                mpAllocator = allocator;
                Base::create(allocator);

                mpEventHandler = new (MEMAllocFromAllocator(allocator, sizeof(EventHandler))) EventHandler(this);
                nw4rmanager::Layout::createWithEventHandler(allocator, mpEventHandler);

                mpPaneManager->setAllComponentTriggerTarget(false);
                mpPaneManager->setAllBoundingBoxComponentTriggerTarget(true);

                for (u16 paneI = 0; paneI < ARRAY_LENGTH(csPaneToAnimationInSign); paneI++) {
                    PaneToAnimationInSign* paneToAnim = &csPaneToAnimationInSign[paneI];
                    AnmPane* anmPane = NULL;
                    switch (paneToAnim->paneType) {
                        case 2:
                            anmPane = new (MEMAllocFromAllocator(allocator, sizeof(CellPhoneSignButtonPane)))
                                CellPhoneSignButtonPane(getPane(paneToAnim->paneName), this);
                            break;
                        case 1:
                            anmPane = new (MEMAllocFromAllocator(allocator, sizeof(CellPhoneSignScrollAnmPane)))
                                CellPhoneSignScrollAnmPane(getPane(paneToAnim->paneName), this);
                            break;
                        case 0:
                            anmPane = new (MEMAllocFromAllocator(allocator, sizeof(CellPhoneSignAllAnmPane)))
                                CellPhoneSignAllAnmPane(getPane(paneToAnim->paneName), this);
                            break;
                    }

                    nw4r::ut::List_Append(&mAnmPanes, anmPane);

                    const char* forcedName = paneToAnim->forcedName;
                    u32 animCount = paneToAnim->animCount;
                    for (u16 animI = 0; animI < animCount; animI++) {
                        void* resource = mpMultiArcResourceAccessor->GetResource(0, paneToAnim->anims[animI]->fileName);
                        AnimTransformPane* transform = (AnimTransformPane*)getLayout()->CreateAnimTransform(resource, mpMultiArcResourceAccessor);
                        if (forcedName != NULL) {
                            anmPane->forceAddAnimation(allocator, paneToAnim->anims[animI]->id, transform, forcedName, false, true);
                        } else {
                            anmPane->addAnimation(allocator, paneToAnim->anims[animI]->id, transform, false, true);
                        }
                    }
                }
                init();
            }
            void LayoutByNW4R::init() {
                Base::init();

                searchAnmPane("N_SGNkeytop_all")->changeAnimation(ANIM_ID_NORMAL);
                setVisible("N_SGNkeytop_all", true);

                searchAnmPane("P_SGNkey_prev")->changeAnimation(ANIM_ID_NORMAL);

                searchAnmPane("P_SGNkey_next")->changeAnimation(ANIM_ID_NORMAL);

                setSignKeyTop(mPageIdx, mPageIdx);
                setPageNumber(mPageIdx);

                mpLayout->Animate();
                mpLayout->CalculateMtx(mDrawInfo);
            }

            void LayoutByNW4R::onKey(u32 event, void* data) {
                Base::onKey(event, data);

                const char* boundingBoxName = (const char*)data;
                if (event == 4) {
                    VKeyCode ctrlKeyCode = getVKeyCode(boundingBoxName);
                    if (ctrlKeyCode != CODE_UNK_0x1B) {
                        switch (ctrlKeyCode) {
                            case VCODE_SGNCLOSE:
                                mpEventObserver->onSE(sound::SE_CHAR_DECIDE);
                                break;

                            case VCODE_SGNNEXT:
                            case VCODE_SGNPREV:
                            default:
                                break;
                        }
                    } else {
                        wchar_t charCode = getWCharCode(mpLangDepData->paneNameToCharCode, boundingBoxName, mPageIdx);
                        if (charCode != L'\0' && mpKeyboard->getType() == 0) {
                            sendCommand(39, NULL);
                        }
                    }
                }
            }

            void LayoutByNW4R::open(KeyboardBase* keyboard, bool openFlag) {
                resetAnmSignWindow();
                throwReleaseForAll();
                getPaneManager()->init();

                if (meLanguage == KR || meLanguage == CN) {
                    sendCommand(6, NULL);
                }

                mbIsActive = true;
                mbInputStarted = false;
                mpKeyboard = keyboard;
                initPaneLastDrawReceived();
                mbOpenFlag = openFlag;

                setSignKeyTop(mPageIdx, mPageIdx);
                setPageNumber(mPageIdx);

                searchAnmPane("N_SGNkeytop_all")->onAnmEvent(nw4rmanager::AnmPane::PE_6);

                mpEventObserver->onSE(sound::SE_SYMBOL_PAGE_OPEN);
            }

            void LayoutByNW4R::close() {
                if (mpKeyboard->getType() == 0) {
                    ((pctype::LayoutByNW4R*)mpKeyboard)->getLayout()->GetRootPane()->SetVisible(true);
                }

                searchAnmPane("N_SGNkeytop_all")->onAnmEvent(nw4rmanager::AnmPane::PE_7);
                mbInputStarted = false;
            }

            void LayoutByNW4R::endToClose() {
                if (mpKeyboard != NULL) {
                    mpKeyboard->update();
                }
                mbIsActive = false;
                setVisible("N_SGNkeytop_all", false);
            }

            void LayoutByNW4R::startToInput() {
                mbInputStarted = true;

                if (mpKeyboard->getType() == 0) {
                    ((pctype::LayoutByNW4R*)mpKeyboard)->getLayout()->GetRootPane()->SetVisible(false);
                }
            }

            void LayoutByNW4R::onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) {
                if (util::strcmp("N_SGNkeyall", anmPane->getPane()->GetName())) {
                    if ((anim->muID == ANIM_ID_SCROLLNEXT || anim->muID == ANIM_ID_SCROLLPREV) && anmEvent == nw4rmanager::AnmObserver::E_1) {
                        setSignKeyTop(mPageIdx, mPageIdx);
                    }
                }

                if (util::strcmp("N_SGNkeytop_all", anmPane->getPane()->GetName())) {
                    if (anim->muID == ANIM_ID_FADEOUT && anmEvent == nw4rmanager::AnmObserver::E_1) {
                        endToClose();
                    }
                    if (anim->muID == ANIM_ID_FADEIN && anmEvent == nw4rmanager::AnmObserver::E_1) {
                        startToInput();
                    }
                }

                if (anim->muID == ANIM_ID_SCROLLNEXT || anim->muID == ANIM_ID_SCROLLPREV) {
                    if (anmEvent == E_0) {
                        mbIsLocked = true;
                    }
                    if (anmEvent == E_1) {
                        mbIsLocked = false;
                    }
                }
            }

            void LayoutByNW4R::throwReleaseForAll() {
                AnmPane* currPane;
                for (currPane = (AnmPane*)nw4r::ut::List_GetFirst(&mAnmPanes); currPane != NULL;
                     currPane = (AnmPane*)nw4r::ut::List_GetNext(&mAnmPanes, currPane)) {
                    if (currPane->getKeyType() == 2) {
                        currPane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                    }
                }
            }

            void LayoutByNW4R::resetAnmSignWindow() {
                for (u16 i = 0; i < ARRAY_LENGTH(csPaneToAnimationInSign); i++) {
                    // This cast is (i think) required to generate the weak
                    // AnmPane::init in the right place
                    ((AnmPane*)searchAnmPane(csPaneToAnimationInSign[i].paneName))->init();
                }
            }

            void LayoutByNW4R::setSignKeyTop(u16 currIdx, u16 nextIdx) {
                for (u16 i = 0; i < 20; i++) {
                    char textboxName[0x11];
                    const char* currPaneName = mpLangDepData->paneNameToCharCode[i].szPaneName;
                    memset(textboxName, 0, 0x11);
                    strncpy(textboxName, currPaneName, strlen(currPaneName));
                    textboxName[0] = 'T';

                    wchar_t currTextboxText[2];
                    currTextboxText[0] = mpLangDepData->paneNameToCharCode[i].wc[currIdx];
                    currTextboxText[1] = L'\0';

                    wchar_t nextTextboxText[2];
                    const char* nextPaneName = mpLangDepData->paneNameToCharCode[i].szNextPaneName;
                    nextTextboxText[0] = mpLangDepData->paneNameToCharCode[i].wc[nextIdx];
                    nextTextboxText[1] = L'\0';
                    ((nw4r::lyt::TextBox*)getPane(textboxName))->SetString(currTextboxText);
                    ((nw4r::lyt::TextBox*)getPane(nextPaneName))->SetString(nextTextboxText);
                }

                setString("T_SGNkey_prev", langindependent::cLanguageIndependentString[langindependent::LANG_STRID_PREV][getLanguage()]);
                setString("T_SGNkey_next", langindependent::cLanguageIndependentString[langindependent::LANG_STRID_NEXT][getLanguage()]);
                setString("T_SGNkey_close", langindependent::cLanguageIndependentString[langindependent::LANG_STRID_CLOSE][getLanguage()]);
            }
            void LayoutByNW4R::setPageNumber(u16 page) {
                wchar_t pageNumberText[0x11];
                swprintf(pageNumberText, 0x11, L"%d/%d", page + 1, mpLangDepData->pageCount);
                ((nw4r::lyt::TextBox*)getPane("T_SGN_pageNumber"))->SetString(pageNumberText);
            }

            void LayoutByNW4R::movePrevSignPage() {
                u8 oldPageIdx = mPageIdx;
                if (oldPageIdx == 0) {
                    mPageIdx = mpLangDepData->pageCount - 1;
                } else {
                    mPageIdx = oldPageIdx - 1;
                }

                u8 newPageIdx = mPageIdx;
                setSignKeyTop(oldPageIdx, newPageIdx);
                setPageNumber(newPageIdx);
                movePrevSignWindow();

                mpEventObserver->onSE(sound::SE_15);
            }
            void LayoutByNW4R::moveNextSignPage() {
                u8 oldPageIdx = mPageIdx;
                mPageIdx++;
                if (mPageIdx >= mpLangDepData->pageCount) {
                    mPageIdx = 0;
                }

                u8 newPageIdx = mPageIdx;
                setSignKeyTop(oldPageIdx, newPageIdx);
                setPageNumber(newPageIdx);
                moveNextSignWindow();

                mpEventObserver->onSE(sound::SE_15);
            }
            void LayoutByNW4R::movePrevSignWindow() {
                searchAnmPane("N_SGNkeyall")->onAnmEvent(nw4rmanager::AnmPane::PE_8);
            }
            void LayoutByNW4R::moveNextSignWindow() {
                searchAnmPane("N_SGNkeyall")->onAnmEvent(nw4rmanager::AnmPane::PE_9);
            }

            bool LayoutByNW4R::updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) {
                if (mbInputStarted) {
                    return Layout::updateInput(point, x, y, trig, hold, release, data);
                } else {
                    return false;
                }
            }

            bool LayoutByNW4R::updateInput(input::HKBManager& hkbManager) {
                if (!mbInputStarted)
                    return false;

                input::HKBManager::KeySet triggered = hkbManager.GetTriggeredKeySet();
                if (triggered.IsValid()) {
                    throwReleaseForAll();
                    close();
                    mpEventObserver->onSE(sound::SE_CHAR_DECIDE);
                    return false;

                } else {
                    return Layout::updateInput(hkbManager);
                }
            }

            void EventHandler::onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) {
                const char* boundingName = paneComponent->getPane()->GetName();
                if (mpLyt->isLocked() && event == 4)
                    return;
                if (event == 4 && (input->field_0x0C & 0x800) != 0) {
                    mpLyt->onKey(4, (void*)boundingName);
                }

                if (boundingName[0] == 'B') {
                    char paneName[0x11];
                    memset(paneName, 0, 0x11);
                    strncpy(paneName, boundingName, strlen(boundingName));
                    paneName[0] = 'P';

                    nw4rmanager::AnmPane* pane = mpLyt->searchAnmPane(paneName);
                    if (pane != NULL) {
                        switch (event) {
                            case 4:
                                if ((input->field_0x0C & 0x800) != 0)
                                    pane->onAnmEvent(nw4rmanager::AnmPane::PE_0);
                                break;

                            case 1:
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_2);
                                break;

                            case 0:
                                mpEventObserver->onSE(sound::SE_SELECT);
                                mpLyt->setPaneLastDrawReceived(pane->getPane());
                                pane->onAnmEvent(nw4rmanager::AnmPane::PE_1);
                                break;
                        }
                    }
                }
            }

            void CellPhoneSignAllAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
                if (paneEvent == PE_6) {
                    getPane()->SetVisible(true);
                    changeAnimation(ANIM_ID_FADEIN);
                } else if (paneEvent == PE_7) {
                    changeAnimation(ANIM_ID_FADEOUT);
                } else {
                    switch (mCurrAnimId) {
                        case ANIM_ID_FADEIN:
                            if (paneEvent == PE_4)
                                changeAnimation(ANIM_ID_NORMAL);
                            break;

                        case ANIM_ID_FADEOUT:
                            if (paneEvent == PE_4)
                                getPane()->SetVisible(false);
                            break;
                    }
                }
            }
            void CellPhoneSignScrollAnmPane::onAnmEvent(AnmPaneEvent paneEvent) {
                switch (mCurrAnimId) {
                    case ANIM_ID_NORMAL:
                        if (paneEvent == PE_9)
                            changeAnimation(ANIM_ID_SCROLLPREV);

                        if (paneEvent == PE_8)
                            changeAnimation(ANIM_ID_SCROLLNEXT);
                        break;

                    case ANIM_ID_SCROLLPREV:
                    case ANIM_ID_SCROLLNEXT:
                        if (paneEvent == PE_4)
                            changeAnimation(ANIM_ID_NORMAL);
                        break;
                }
            }
            void CellPhoneSignButtonPane::onAnmEvent(AnmPaneEvent paneEvent) {
                if (paneEvent == PE_0) {
                    changeAnimation(ANIM_ID_PUSHED);
                }
                switch (mCurrAnimId) {
                    case ANIM_ID_NORMAL:
                        if (paneEvent == PE_1)
                            changeAnimation(ANIM_ID_FOCUSIN);
                        break;

                    case ANIM_ID_FOCUSIN:
                        if (paneEvent == PE_4)
                            changeAnimation(ANIM_ID_ROLLOVER);
                        if (paneEvent == PE_2)
                            changeAnimation(ANIM_ID_FOCUSOUT);
                        break;

                    case ANIM_ID_ROLLOVER:
                        if (paneEvent == PE_2)
                            changeAnimation(ANIM_ID_FOCUSOUT);
                        break;

                    case ANIM_ID_FOCUSOUT:
                        if (paneEvent == PE_4)
                            changeAnimation(ANIM_ID_NORMAL);
                        if (paneEvent == PE_1)
                            changeAnimation(ANIM_ID_FOCUSIN);
                        break;

                    case ANIM_ID_PUSHED:
                        if (paneEvent == PE_4)
                            changeAnimation(ANIM_ID_ROLLOVER);
                        if (paneEvent == PE_2)
                            changeAnimation(ANIM_ID_FOCUSOUT);
                        break;
                }
            }

            // void CellPhoneSignAllAnmPane::init() {
            //     mCurrAnimId = 0;
            // }
        }  // namespace signwindow
    }  // namespace keyboard
}  // namespace textinput
