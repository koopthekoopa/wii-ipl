#ifndef TEXTINPUT_PREDICT_LANG_H
#define TEXTINPUT_PREDICT_LANG_H

#include "tiInputForm.h"
#include "tiKeyboard.h"
#include "tiNw4rManager.h"
#include "tiTextInputBase.h"

namespace textinput {
    class Manager;

    namespace predictlang {
        class LayoutByNW4R;

        class Base : public CommandSender {
        public:
            virtual void create(MEMAllocator* allocator) override { mpAllocator = allocator; }
            virtual void setPredictMode(inputform::Base::PredictMode mode) { mePredictMode = mode; }

        protected:
            inputform::Base::PredictMode mePredictMode;  // 0x10
            MEMAllocator* mpAllocator;                   // 0x14
            Manager* mpManager;                          // 0x18
        };

        class AnmPane;
        class EventHandler;

        class LayoutByNW4R : public Base, public nw4rmanager::Layout, public nw4rmanager::AnmObserver {
        public:
            virtual ~LayoutByNW4R();
            virtual void create(MEMAllocator* allocator) override;
            virtual void init() override;
            virtual void draw() override;

            virtual void open(inputform::Base::PredictMode predictMode, keyboard::KeyboardBase* keyboard);
            virtual void endToOpen();
            virtual void startToClose();
            virtual void endToClose();
            virtual bool isActive();
            virtual bool canBeInputed() { return mbInput; }

            virtual void onChangeAnmState(AnmEvent anmEvent, nw4rmanager::AnmPane* anmPane, nw4rmanager::Anim* anim) override;

            virtual void setAllButtonToggleOffWithout(const char* paneName);
            virtual void setAllButtonNormal();
            virtual void setDestination(Destination destination);
            virtual void setLanguage(Language language);
            virtual void changeDestination(Destination destination);

            virtual nw4rmanager::AnmPane* getTargetAnmPane(Destination destination, inputform::Base::PredictMode predictMode);

        private:
            bool mbActive;                     // 0xC8
            bool mbInput;                      // 0xC9
            EventHandler* mpEventHandler;      // 0xCC
            Destination meDestination;         // 0xD0
            keyboard::KeyboardBase* mpCaller;  // 0xD4
        };

        class EventHandler : public nw4rmanager::TiEventHandler {
        public:
            EventHandler(LayoutByNW4R* layout) : mpLayoutByNW4R(layout) {}

            virtual void onTiEvent(gui::PaneComponent* paneComponent, u32 event, Input* input) override;

        private:
            LayoutByNW4R* mpLayoutByNW4R;  // 0xC
        };

        enum Animation {
            ANM_Normal,
            ANM_FocusIn,
            ANM_FocusOut,
            ANM_RollOver,
            ANM_Pushed,
            ANM_FadeIn,
            ANM_FadeOut,
            ANM_ToggleOn,
            ANM_ToggleOff,

            ANM_Last,
        };

        enum KeyType {
            KT_NormalButton,
            KT_ChangeButton,
            KT_Whole,
            KT_Last,
        };

        class AnmPane : public nw4rmanager::AnmPane {
        public:
            AnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : nw4rmanager::AnmPane(pane, observer), meState(ANM_Normal) {}

            virtual void changeAnimation(u32 id) override {
                meState = static_cast<Animation>(id);
                nw4rmanager::AnmPane::changeAnimation(id);
            }
            virtual void init() override { meState = ANM_Normal; }
            virtual enum KeyType getKeyType() const { return meKeyType; }

        protected:
            Animation meState;  // 0x2C
            KeyType meKeyType;  // 0x30
        };

        class WholeAnmPane : public AnmPane {
        public:
            WholeAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { meKeyType = KT_Whole; }
            virtual ~WholeAnmPane() {}

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        };

        class NormalButtonAnmPane : public AnmPane {
        public:
            NormalButtonAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer) : AnmPane(pane, observer) { meKeyType = KT_NormalButton; }
            virtual ~NormalButtonAnmPane() {}

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        };
        class ChangeButtonAnmPane : public AnmPane {
        public:
            ChangeButtonAnmPane(nw4r::lyt::Pane* pane, nw4rmanager::AnmObserver* observer, LayoutByNW4R* layout)
                : AnmPane(pane, observer), mpLayout(layout) {
                meKeyType = KT_ChangeButton;
            }
            virtual ~ChangeButtonAnmPane() {}

            virtual void onAnmEvent(AnmPaneEvent paneEvent) override;  // 0x10
        private:
            LayoutByNW4R* mpLayout;  // 0x34
        };
    }  // namespace predictlang
}  // namespace textinput

#endif  // TEXTINPUT_PREDICT_LANG_H
