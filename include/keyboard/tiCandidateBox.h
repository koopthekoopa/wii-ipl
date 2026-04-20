#ifndef TEXTINPUT_CANDIDATE_BOX_H
#define TEXTINPUT_CANDIDATE_BOX_H

// clang-format off
// vtable order
#include "tiHKBManager.h"
#include "tiUtil.h"
#include "tiNw4rManager.h"
#include "tiString.h"
#include "tiTextInputBase.h"
// clang-format on

namespace textinput {
    class Manager;

    namespace candidatebox {
        class Base;
        class LayoutByNW4R;
        class OnOffAnmPane;
        class CandidateScrollAnmPane;
        class CandidateTextAnmPane;
        class PredictWindow;

        enum Animation {
            ANM_Normal,
            ANM_FocusIn,
            ANM_FocusOut,
            ANM_RollOver,
            ANM_Pushed,
            ANM_FadeIn,
            ANM_FadeOut,
            ANM_OnOffPushed,
            ANM_PredictOn,
            ANM_PredictOff,
            ANM_InvalidNormal,
            ANM_InvalidOn,
            ANM_InvalidOff,
            ANM_Last,
        };

        enum KeyType {
            KT_ScrollButton,
            KT_CandidateText,
            KT_OnOffButton,
            KT_Window,
            KT_Last,
        };

        class CandidateBoxCaller {
        public:
            // This candidate thing is a bit different from the dwarf
            class Candidates {
            public:
                Candidates() : mNumCandidate(0) {}

                void resetCandidate();
                void addCandidate(const wchar_t* wcString);
                void updateCandidate();

            public:
                int mNumCandidate;              // 0x00
                wchar_t szwcPredicted[40][64];  // 0x04
            };

            virtual void resetCandidate();
            virtual void addCandidate(const wchar_t* wcString);
            virtual void setCandidateBox(textinput::candidatebox::Base* candidateBox) { mpCandidateBox = candidateBox; }
            virtual void updateCandidate();
            virtual void makeEmptyCandidate();

        private:
            candidatebox::Base* mpCandidateBox;  // 0x04
        };

        class Base : public CommandSender {
        public:
            virtual ~Base();
            virtual void create(MEMAllocator* allocator) override;
            virtual void init() override {}
            virtual void setCommandReceiver(textinput::CommandReceiver*) override;
            virtual void updateFromReceiver(u32, void*) override;
            virtual void resetCandidate();                                          // 0x20
            virtual void addCandidate(const wchar_t*);                              // 0x24
            virtual void updateCandidate();                                         // 0x28
            virtual void draw() {}                                                  // 0x2C
            virtual void turnOn() {}                                                // 0x30
            virtual void turnOff() {}                                               // 0x34
            virtual void makeEmpty() {}                                             // 0x38
            virtual bool isOn() const { return mbOn; }                              // 0x3C
            virtual void onClose() {}                                               // 0x40
            virtual void setOnOff(bool);                                            // 0x44
            virtual void setInvalid(bool invalid) { mbInvalid = invalid; }          // 0x48
            virtual bool isInvalid() const;                                         // 0x4C
            virtual void setLanguage(Language language) { meLanguage = language; }  // 0x50

            bool checkValidation();

        protected:
            Manager* mgr() { return mpManager; }

            CandidateBoxCaller::Candidates* mpCandidates;  // 0x10
            MEMAllocator* mpAllocator;                     // 0x14
            bool mbOn;                                     // 0x18
            bool mbInvalid;                                // 0x19
            Language meLanguage;                           // 0x1C
            Manager* mpManager;                            // 0x20
        };

        class EventHandler : public nw4rmanager::TiEventHandler {
        public:
            virtual void onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) override;  // 0x18

            LayoutByNW4R* mpLayoutByNW4R;  // 0xC
        };

        class UIObj : public gui::EventHandler {
        public:
            class Listener {
            public:
                virtual void onEvent(UIObj*, u32, void*);
            };

            UIObj(u32 id, LayoutByNW4R* layout, Listener* listener) : mId(id), mpManager(layout), mpListener(listener) {}

            virtual ~UIObj() {}
            virtual void onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) {}

            virtual void onEvent(gui::GUIComponent& component, u32 event, void* data) override {
                onGUIEvent(static_cast<gui::PaneComponent&>(component), event, static_cast<nw4rmanager::TiEventHandler::Input*>(data));
            }

            void riseEvent(u32, void*);

            LayoutByNW4R* mgr() { return mpManager; }
            u32 getID() const { return mId; }

        protected:
            u32 mId;                  // 0x08
            LayoutByNW4R* mpManager;  // 0x0C
            Listener* mpListener;     // 0x10
        };

        class UITextArea : public UIObj, public util::AnimObserver {
        public:
            UITextArea(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener);

            virtual void onAnmEvent(AnmEvent event, void*) override;
            virtual void onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) override;

            void Create(nw4rmanager::Layout* layout);
            void SetCandidates(CandidateBoxCaller::Candidates* candidates) { mpCandidates = candidates; }
            void Init();
            void Clear();
            void Calc();
            void Draw(const nw4r::lyt::DrawInfo&);
            void StartScroll(s32);
            void StartScrollToIdx(s32);
            void StartScrollPageToIdx(s32);
            void StartRightPageScroll();
            void StartLeftPageScroll();
            void ScrollToSelectedText();
            void StopScroll();
            void ResetCandidate();
            void RefreshCandidates();
            void ChangeBaseIdx_(s32);
            bool CanLeftScroll() const { return mnBaseIdx > 0; }
            bool CanRightScroll() const { return mnDispEndCompleteIdx < mnCandidateNum - 1; }
            void SetScreenSize(nw4r::ut::Rect&);
            void ChangeSelectedText(s32);
            s32 GetPaneIdx(s32) const;
            s32 GetCandidateIdx(s32) const;

            bool IsScrolling();
            s32 GetDispOffset() const { return mnBaseIdx; }
            s32 GetSelectedPaneIdx() const { return GetPaneIdx(mnSelectedIdx); }
            void SetSelectedText(s32 pane) { mnSelectedIdx = pane; }
            s32 GetSelectedTextIdx() const { return mnSelectedIdx; }
            void SetFocusedText(s32 pane) { mnFocusedIdx = pane; }
            s32 GetFocusedText() { return mnFocusedIdx; }
            f32 GetWidthScale_() const { return 608.0f / mfScreenWidth; }
            f32 GetMargin_() const { return mfScreenWidth > 700.0f ? 10.0f : 20.0f; }
            s32 GetNextPageIdx_(s32 page) const;
            s32 GetPrevPageIdx_(s32 page) const;
            s32 GetDispNum() const;

            // new
            void ApplyFontScale(f32 scale);

        private:
            void CalcPaneLocate_();

            static const int NUM_PANES = 20;

            util::Animation mScrollAnimation;                     // 0x018
            gui::PaneComponent* mpTextBoxPane[NUM_PANES];         // 0x038
            gui::PaneComponent* mpBoundingPane[NUM_PANES];        // 0x088
            gui::PaneComponent* mpTextAreaPane;                   // 0x0D8
            gui::PaneComponent* mpTextsPane;                      // 0x0DC
            CandidateTextAnmPane* mpTextAnmPane[NUM_PANES];       // 0x0E0
            nw4rmanager::AnmPane::AnmState mAnmState[NUM_PANES];  // 0x130
            nw4r::lyt::Size mSize;                                // 0x1D0
            s32 mnSelectedIdx;                                    // 0x1D8
            s32 mnFocusedIdx;                                     // 0x1DC
            s32 mnBaseIdx;                                        // 0x1E0
            f32 mfXOffset;                                        // 0x1E4
            s32 mnCandidateNum;                                   // 0x1E8
            s32 mnDispBeginIdx;                                   // 0x1EC
            s32 mnDispEndIdx;                                     // 0x1F0
            s32 mnDispEndCompleteIdx;                             // 0x1F4
            f32 mfTextWidth;                                      // 0x1F8
            f32 mfScreenWidth;                                    // 0x1FC
            bool mbOnTextArea;                                    // 0x200
            CandidateBoxCaller::Candidates* mpCandidates;         // 0x204
        };

        class UIButton : public UIObj {
        public:
            UIButton(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener);

            virtual void onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) override;

            void Create(nw4rmanager::Layout* layout, const char* s1, const char* s2);
            void Init();

            void SetVisible(bool visible);
            bool IsVisible() const { return mpButtonPane->getPane()->IsVisible(); }

        private:
            gui::PaneComponent* mpButtonPane;         // 0x14
            gui::PaneComponent* mpButtonBoundPane;    // 0x18
            CandidateScrollAnmPane* mpButtonAnmPane;  // 0x1C
        };

        class UIOnOffButton : public UIObj, public nw4rmanager::AnmObserver {
        public:
            UIOnOffButton(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener);

            virtual void onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) override;  // 0x08
            virtual void onGUIEvent(gui::PaneComponent& component, u32 event, nw4rmanager::TiEventHandler::Input* input) override;

            void Create(nw4rmanager::Layout* layout);
            void Init();
            void SetOnOff(bool on);
            void SetLanguage(Language);
            bool IsTurning() const;

        private:
            gui::PaneComponent* mpOnPictPane;    // 0x18
            gui::PaneComponent* mpOnBoundPane;   // 0x1C
            gui::PaneComponent* mpOffPictPane;   // 0x20
            gui::PaneComponent* mpOffBoundPane;  // 0x24
            OnOffAnmPane* mpOnAnmPane;           // 0x28
            OnOffAnmPane* mpOffAnmPane;          // 0x2C
            GXTexObj mOffTexDefault;             // 0x30
            GXTexObj mOffTexJP;                  // 0x50
            GXTexObj mOffTexCN;                  // 0x70
            GXTexObj mOnTexDefault;              // 0x90
            GXTexObj mOnTexCN;                   // 0xB0
        };

        class UITextWindow : public UIObj, public nw4rmanager::AnmObserver {
        public:
            UITextWindow(u32 id, LayoutByNW4R* layout, UIObj::Listener* listener);

            virtual void onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) override;  // 0x08

            void Create(nw4rmanager::Layout* layout, const char* s1);
            void Init();
            void TurnOnOff(bool on);
            void TurnInvalid(bool invalid);
            void SetVisible(bool visible);

            // Not in the dwarf
            void ChangeAnimation(u32);

        private:
            gui::PaneComponent* mpWindowPane;  // 0x18
            PredictWindow* mpWindowAnmPane;    // 0x1C
        };

        // TODO
        class LayoutByNW4R : public Base, public nw4rmanager::Layout, public UIObj::Listener {
        public:
            virtual ~LayoutByNW4R();
            virtual void create(MEMAllocator* allocator) override;
            virtual void init() override;
            virtual void updateCandidate() override;
            virtual void draw() override;
            virtual void turnOn() override;
            virtual void turnOff() override;
            virtual void makeEmpty() override;
            virtual void onClose() override;
            virtual void setOnOff(bool) override;
            virtual void setInvalid(bool) override;
            virtual void setLanguage(Language) override;

            // TODO

            virtual void calc() override;
            virtual void onRightScroll();                                                    // 0x0DC
            virtual void onLeftScroll();                                                     // 0x0E0
            virtual void onRightPageScroll();                                                // 0x0E4
            virtual void onLeftPageScroll();                                                 // 0x0E8
            virtual void onOnOffButton(bool);                                                // 0x0EC
            virtual void changeSelectEmpty();                                                // 0x0F0
            virtual void changeSelectEmpty_compatible();                                     // 0x0F4
            virtual void changeSelect(s32);                                                  // 0x0F8
            virtual void updateDisplay();                                                    // 0x0FC
            virtual u16 getScroll() { return mTextArea.GetDispOffset(); }                    // 0x100
            virtual bool isInScroll();                                                       // 0x104
            virtual void setActive(bool active);                                             // 0x108
            virtual bool isActive() const;                                                   // 0x10C
            virtual void setSelectedTextPane(int pane) { mTextArea.SetSelectedText(pane); }  // 0x110
            virtual void setFocusedTextPane(int pane) { mTextArea.SetFocusedText(pane); }    // 0x114
            virtual int getFocusedTextPane() { return mTextArea.GetFocusedText(); }          // 0x118
            virtual void SetScreenSize() { mTextArea.SetScreenSize(mScreenRect); }           // 0x11C
            virtual void setRootPaneScaleFor16x9() override;                                 // 0x120
            virtual void setRootPaneScaleFor4x3() override;                                  // 0x124
            virtual void cancelStateFocusIn();                                               // 0x128
            virtual void onEvent(UIObj*, u32, void*) override;                               // 0x12C

            void onPressedShift(bool shift);
            void onReleasedShift();
            void startTurnOn(bool);

        private:
            void createAnmPane_(MEMAllocator* allocator);

            EventHandler mEventHandler;
            tistring::Decolated* mpTiString;  // 0x0E0
            UITextArea mTextArea;             // 0x0E4
            UIButton mLeftScroll;
            UIButton mRightScroll;
            UIOnOffButton mOnOffButton;  // 0x32C
            UITextWindow mTextWindow;
            bool mbActive;
        };

        class CandidateTextAnmPane : public nw4rmanager::AnmPane {
        public:
            CandidateTextAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer)
                : nw4rmanager::AnmPane(pane, observer), meState(ANM_Normal) {
                init();
                meKeyType = KT_CandidateText;
            }

            virtual void changeAnimation(u32 id) override {
                meState = static_cast<Animation>(id);
                nw4rmanager::AnmPane::changeAnimation(id);
            }
            virtual void init() override { meState = ANM_Normal; }
            virtual enum Animation getState() const { return meState; }
            virtual enum KeyType getKeyType() const { return meKeyType; }

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10

        protected:
            Animation meState;  // 0x2C
            KeyType meKeyType;  // 0x30
        };

        class CandidateScrollAnmPane : public CandidateTextAnmPane {
        public:
            CandidateScrollAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : CandidateTextAnmPane(pane, observer) {
                meKeyType = KT_ScrollButton;
            }

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        };

        class OnOffAnmPane : public CandidateTextAnmPane {
        public:
            OnOffAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : CandidateTextAnmPane(pane, observer) {
                meKeyType = KT_OnOffButton;
            }

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10

            bool isTurning() const { return meState == ANM_OnOffPushed; }
        };

        class PredictWindow : public CandidateTextAnmPane {
        public:
            PredictWindow(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : CandidateTextAnmPane(pane, observer) { meKeyType = KT_Window; }

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        };
    }  // namespace candidatebox
}  // namespace textinput

#endif  // TEXTINPUT_CANDIDATE_BOX_H
