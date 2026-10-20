#ifndef TEXTINPUT_SIGN_WINDOW_H
#define TEXTINPUT_SIGN_WINDOW_H

#include "keyboard/tiManager.h"
#include "keyboard/tiNw4rManager.h"

#include "keyboard/tiSwData.h"

namespace textinput {
    namespace keyboard {
        namespace signwindow {
            typedef struct {
                u8 pageCount;                                            // 0x0
                const PaneNameToCharCodeInSignMode* paneNameToCharCode;  // 0x4
            } LanguageDependencyData;

            class Base : public KeyboardBase {
            public:
                virtual ~Base() {}                                      // 0x08
                virtual void create(MEMAllocator* allocator) override;  // 0x0C
                virtual void init() override;                           // 0x10
                virtual void onKey(u32 event, void* data) override;     // 0x20
                virtual int getType() override { return 2; }            // 0x24
                virtual void setLanguage(Language language) override {
                    meLanguage = language;
                    init();
                }  // 0x28

                virtual bool isLocked() { return mbIsLocked; }  // 0x38
                virtual void setPage(u8 pageIdx) {
                    mPageIdx = pageIdx;
                    if (mPageIdx >= mpLangDepData->pageCount)
                        mPageIdx = 0;
                }  // 0x3C
                virtual u8 getPage() { return mPageIdx; }  // 0x40
                virtual void movePrevSignPage();           // 0x44
                virtual void moveNextSignPage();           // 0x48
                virtual void close();                      // 0x4C

            protected:
                u8 unk_0x14;                                  // 0x14
                bool mbIsLocked;                              // 0x15
                bool mbOpenFlag;                              // 0x16
                u8 mPageIdx;                                  // 0x17
                const LanguageDependencyData* mpLangDepData;  // 0x18
                MEMAllocator* mpAllocator;                    // 0x1C
                ::textinput::Manager* mpMgr;                  // 0x20
            };

            class EventHandler;

            class LayoutByNW4R : public Base, public nw4rmanager::Layout, public nw4rmanager::AnmObserver {
            public:
                virtual ~LayoutByNW4R();                                                                                            // 0x008
                virtual void create(MEMAllocator* allocator) override;                                                              // 0x00C
                virtual void init() override;                                                                                       // 0x010
                virtual void onKey(u32 event, void* data) override;                                                                 // 0x020
                virtual void movePrevSignPage() override;                                                                           // 0x044
                virtual void moveNextSignPage() override;                                                                           // 0x048
                virtual void close() override;                                                                                      // 0x04C
                virtual void draw() override { nw4rmanager::Layout::draw(); }                                                       // 0x0D4
                virtual void open(KeyboardBase* keyboard, bool openFlag);                                                           // 0x0D8
                virtual bool isActive() { return mbIsActive; }                                                                      // 0x0DC
                virtual void onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) override;  // 0x0E0
                virtual bool updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) override;            // 0x0E4
                virtual bool updateInput(input::HKBManager& hkbManager) override;                                                   // 0x0E8
                virtual void throwReleaseForAll();                                                                                  // 0x0EC
                virtual void resetAnmSignWindow();                                                                                  // 0x0F0
                virtual void setSignKeyTop(u16 currIdx, u16 nextIdx);                                                               // 0x0F4
                virtual void setPageNumber(u16 page);                                                                               // 0x0F8
                virtual void endToClose();                                                                                          // 0x0FC
                virtual void startToInput();                                                                                        // 0x100
                virtual void movePrevSignWindow();                                                                                  // 0x104
                virtual void moveNextSignWindow();                                                                                  // 0x108

            private:
                bool mbIsActive;               // 0xD0
                bool mbInputStarted;           // 0xD1
                EventHandler* mpEventHandler;  // 0xD4
                KeyboardBase* mpKeyboard;      // 0xD8
            };

            class EventHandler : public nw4rmanager::TiEventHandler {
            public:
                EventHandler(LayoutByNW4R* lyt) : mpLyt(lyt) {}
                virtual void onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) override;  // 0x18

            private:
                LayoutByNW4R* mpLyt;  // 0xC
            };

            class AnmPane : public nw4rmanager::AnmPane {
            public:
                AnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer)
                    : nw4rmanager::AnmPane(pane, observer), mCurrAnimId(0), mKeyType(0) {}

                void init() override { mCurrAnimId = 0; };                                                                  // 0x0C
                virtual void changeAnimation(u32 id) override { nw4rmanager::AnmPane::changeAnimation(mCurrAnimId = id); }  // 0x14
                virtual int getKeyType() const { return mKeyType; }                                                         // 0x18

            protected:
                int mCurrAnimId;  // 0x2C
                u32 mKeyType;     // 0x30
            };

            class CellPhoneSignAllAnmPane : public AnmPane {
            public:
                CellPhoneSignAllAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { mKeyType = 0; }
                virtual void init() override { mCurrAnimId = 0; }          // 0x0C
                virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
            };

            class CellPhoneSignScrollAnmPane : public AnmPane {
            public:
                CellPhoneSignScrollAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { mKeyType = 1; }
                virtual void init() override { mCurrAnimId = 0; };         // 0x0C
                virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
            };
            class CellPhoneSignButtonPane : public AnmPane {
            public:
                CellPhoneSignButtonPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { mKeyType = 2; }
                virtual void init() override { mCurrAnimId = 0; };         // 0x0C
                virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
            };
        }  // namespace signwindow
    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_SIGN_WINDOW_H
