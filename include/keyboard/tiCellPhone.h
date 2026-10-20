#ifndef TEXTINPUT_CELL_PHONE_H
#define TEXTINPUT_CELL_PHONE_H

#include "keyboard/tiKeyboard.h"
#include "keyboard/tiNw4rManager.h"
#include "keyboard/tiPredictLang.h"
#include "keyboard/tiTextInputBase.h"

namespace textinput {
    namespace keyboard {
        namespace signwindow {
            class LayoutByNW4R;
        }
        namespace cellphonetype {
            typedef struct {
                u16 unk_0x00;              // 0x00
                const KeySet* keySets[5];  // 0x04
            } LanguageDependencyData;

            typedef struct {
                u32 id;
                const char fileName[0x40];
            } AnimationFileForControlKey;

            extern const AnimationFileForControlKey csAninationFileForControlKey[];
            extern const AnimationFileForControlKey csAninationFileForControlKey2[];

            class LayoutByNW4R;

            class Base : public KeyboardBase {
            public:
                enum InputMode {
                    INPUT_MODE_UNK_0 = 0,
                    INPUT_MODE_ABC_LOWER = 1,
                    INPUT_MODE_KATAKANA_JP = 1,
                    INPUT_MODE_ABC_UPPER = 2,
                    INPUT_MODE_NUMERIC = 3,
                    INPUT_MODE_ABC_LOWER_JP = 4,
                };

                // TODO
                virtual void create(MEMAllocator* allocator) override;              // 0x0C
                virtual void init() override;                                       // 0x10
                virtual void updateFromReceiver(u32 command, void* data) override;  // 0x1C
                virtual void onKey(u32, void*) override;                            // 0x20
                virtual int getType() override;                                     // 0x24
                virtual void onActive() override;                                   // 0x34

                virtual void calc();                                           // 0x38
                virtual void draw();                                           // 0x3C
                virtual InputMode getInputMode() const { return mInputMode; }  // 0x40
                virtual bool isLocked() const;                                 // 0x44
                virtual bool isNumeric() const;                                // 0x48
                virtual bool isNumericWithDot() const;                         // 0x4C
                virtual bool isHoldingButton() const;                          // 0x50
                virtual void doNumericMode(bool);                              // 0x54
                virtual void changeInputMode(InputMode);                       // 0x58
                virtual bool isUpperCase();                                    // 0x5C
                virtual void setInputMode(InputMode);                          // 0x60
                virtual void setUpperCaseJP(bool);                             // 0x64
                virtual void setLangKeyActive(bool);                           // 0x68
                virtual void onClose();                                        // 0x6C
                virtual void goSignInputMode();                                // 0x70
                virtual void changePredictLanguage();                          // 0x74
                virtual void setAbcMode(bool);                                 // 0x78
                virtual bool isZiActive();                                     // 0x7C
                virtual bool isAtokActive();                                   // 0x80
                virtual void doInput();                                        // 0x84
                virtual void updateFixMode();                                  // 0x88

                // TODO enum?
                int getInputType() const;

            protected:
                void onCtrlKey_(VKeyCode keycode);
                wchar_t convertToZiCellphoneInput_(wchar_t ziCh);

                int getInputTypeForKeySet(const KeySet* keySet) const;

                int mHeldButtonCharIdx;                       // 0x14
                InputMode mInputMode;                         // 0x18
                bool mbIsLocked;                              // 0x1C
                bool mbIsNumeric;                             // 0x1D
                bool mbIsNumericWithDot;                      // 0x1E
                bool mbIsUpperCase;                           // 0x1F
                bool mbNextIsCapital;                         // 0x20 Unsure about this one
                bool mbPrdcModeOn;                            // 0x21
                const PaneNameToCharCode* mpHeldButtonData;   // 0x24
                const LanguageDependencyData* mpLangDepData;  // 0x28
                MEMAllocator* mpAllocator;                    // 0x2C
                ::textinput::Manager* mpMgr;                  // 0x30
                bool mbLangKeyActive;                         // 0x34
            };

            class EventHandler : public nw4rmanager::TiEventHandler {
            public:
                EventHandler(LayoutByNW4R* lyt) : mpLyt(lyt) {}

                virtual ~EventHandler();
                virtual void onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) override;

            private:
                LayoutByNW4R* mpLyt;  // 0xC
            };

            class CellPhoneAnmPane : public nw4rmanager::AnmPane {
            public:
                CellPhoneAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer)
                    : nw4rmanager::AnmPane(pane, observer), mCurrAnimId(0), mKeyType(KEY_TYPE_NORMAL) {
                    init();
                    changeAnimation(mCurrAnimId);
                }

                virtual void init() override { mCurrAnimId = 0; };         // 0x0C
                virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
                virtual void changeAnimation(u32 id) override;             // 0x14
                virtual int getKeyType() const { return mKeyType; }        // 0x18

            protected:
                int mCurrAnimId;  // 0x2C
                u32 mKeyType;     // 0x30
            };

            class CellPhoneControlAnmPane : public CellPhoneAnmPane {
            public:
                CellPhoneControlAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : CellPhoneAnmPane(pane, observer) {
                    mKeyType = KEY_TYPE_ABC_UPPER;
                }

                virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
            };

            class LayoutByNW4R : public Base, public nw4rmanager::Layout {
            public:
                virtual ~LayoutByNW4R();                                            // 0x08
                virtual void create(MEMAllocator* allocator) override;              // 0x0C
                virtual void init() override;                                       // 0x10
                virtual void setCommandReceiver(CommandReceiver*) override;         // 0x14
                virtual void updateFromReceiver(u32 command, void* data) override;  // 0x1C
                virtual void onClose() override;                                    // 0x6C
                virtual void onKey(u32, void*) override;                            // 0x20
                virtual void setLanguage(Language) override;                        // 0x28
                virtual void update() override;                                     // 0x30
                virtual void onActive() override;                                   // 0x34
                virtual void calc() override;                                       // 0x38
                virtual void draw() override;                                       // 0x3C
                virtual void doNumericMode(bool) override;                          // 0x54
                virtual void changeInputMode(InputMode) override;                   // 0x58
                virtual void setInputMode(InputMode) override;                      // 0x60
                virtual void setUpperCaseJP(bool) override;                         // 0x64
                virtual void setLangKeyActive(bool) override;                       // 0x68
                virtual void goSignInputMode() override;                            // 0x70
                virtual void changePredictLanguage() override;                      // 0x74
                virtual void setAbcMode(bool) override;                             // 0x78

                virtual void setPredictLanguageDialog(predictlang::LayoutByNW4R*);                                        // 0x104
                virtual void setSignWindow(signwindow::LayoutByNW4R* signWindow);                                         // 0x108 // TODO: SIGNWINDOW
                virtual void doNumericWithDotMode(bool);                                                                  // 0x10C
                virtual void setLineFeedButton(bool);                                                                     // 0x110
                virtual void setPredictLanguageButton(bool);                                                              // 0x114
                virtual void setSignWindowButton(bool);                                                                   // 0x118
                virtual bool updateInput(int point, f32 x, f32 y, u32 trig, u32 hold, u32 release, void* data) override;  // 0x11C (0x20 + 0x8C)
                virtual bool updateInput(input::HKBManager& hkbManager) override;                                         // 0x120 (0x24 + 0x8C)
                virtual nw4rmanager::AnmPane* getAnmPane(InputMode mode);                                                 // 0x124
                virtual void throwReleaseForAll();                                                                        // 0x128
                virtual void changeAnimationAllToNormal();                                                                // 0x12C
                virtual void updatePredictLanguage(CommandReceiver::ChangePredictMode*);                                  // 0x130
                virtual void changeKeyTop(const PaneNameToCharCode*);                                                     // 0x134
                virtual void changeSpaceKeyTop(const PaneNameToCharCode*);                                                // 0x138

                void onPressedShift(bool shift);
                void onReleasedShift();
                void resetHoldingButton();

            private:
                void setKeysetTextboxes();

                bool mbLineFeedButtonEnabled;                    // 0x0E0
                GXTexObj mTexObjSpaceBtnJP;                      // 0x0E4
                GXTexObj mTexObjSpaceBtnCN;                      // 0x104
                GXTexObj mTexObjSpaceBtnKR;                      // 0x124
                nw4rmanager::TiEventHandler* mpEventHandler;     // 0x144
                predictlang::LayoutByNW4R* mpPredictLangDialog;  // 0x148
                signwindow::LayoutByNW4R* mpSignWindow;          // 0x14C
            };
        }  // namespace cellphonetype
    }  // namespace keyboard
}  // namespace textinput

#endif  // TEXTINPUT_CELL_PHONE_H
