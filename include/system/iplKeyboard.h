#ifndef IPL_KEYBOARD_H
#define IPL_KEYBOARD_H

#include <revolution/types.h>

#include "system/iplNand.h"

#include "SoftKeyboard.h"

namespace ipl {
    namespace keyboard {
        class Manager;
        class EventObserver : public textinput::EventObserver {
            public:
                virtual void    onCommand(textinput::CommandReceiver::INPUT_COMMAND command, void* data);
                virtual void    onSE(textinput::sound::SE seId);
                virtual void    onOK();
                virtual void    onCancel();
                virtual void    setManager(Manager* manager) { mpKeyboardMgr = manager; }

            private:
                Manager*    mpKeyboardMgr;  // 0x04
        };

        class Manager {
            public:
                typedef enum KeyboardState {
                    STATE_HIDDEN = 0,
                    STATE_APPEARING,
                    STATE_VISIBLE,
                    STATE_DISAPPEARING,
                    STATE_HIDDEN_AFTER_DISAPPEAR
                } KeyboardState;

                typedef enum KeyboardType {
                    DEFAULT = 0,
                    LETTER,
                    PHOTO_LETTER,
                    NUMERIC,
                    NORMAL_WITHOUT_LINEFEED,
                    NORMAL_WITHOUT_LINEFEED_WITH_SIGN,
                    NORMAL_BIGTEXT_WITHOUT_LINEFEED,
                    ONLY_QWERTY_WITHOUT_LINEFEED_AND_SIGN,
                    ONLY_QWERTY_BIGTEXT_WITHOUT_LINEFEED_AND_SIGN,
                    NUMERIC_WITH_DOT,
                    NUMERIC_BIGTEXT_WITH_DOT,
                    NORMAL_BIGTEXT_WITHOUT_LINEFEED_WITH_SIGN,
                    NUMERIC_WITH_SEPERATOR,
                    PREDICT_WITHOUT_LINEFEED,
                } KeyboardType;

                typedef struct KeyboardSetting {
                    KeyboardType    type;           // 0x00
                    const wchar_t*  wcString;       // 0x04
                    u32             stringLimit;    // 0x08
                    u32             rowLimit;       // 0x0C
                } KeyboardSetting;

                typedef struct State {
                    textinput::MemoManager::StateType   type;       // 0x00
                    KeyboardState                       iplType;    // 0x04
                    bool                                pressOK;    // 0x08
                    u8                                  unused_0x09;
                    wchar_t*                            wcString;   // 0x0C
                } State;

                Manager() :
                mpManager(NULL),
                mEvent(),
                mCurrentConChan(0),
                mbActivated(false),
                mpSaveFile(NULL) {}

                virtual void                create(nand::File* file, EGG::Heap* heap);          // 0x08

                virtual void                init();                                             // 0x0C
                virtual void                calc();                                             // 0x10

                virtual void                draw();                                             // 0x14
                virtual void                memoDraw();                                         // 0x18

                virtual void                changeAspectRatio();                                // 0x1C
                virtual void                setKeyboardType(int chan, KeyboardType type);       // 0x20

                virtual void                start(int chan, const KeyboardSetting& setting);    // 0x24

                virtual void                ok();                                               // 0x28
                virtual void                cancel();                                           // 0x2C

                virtual void                doRumble();                                         // 0x30
                virtual State*              getState();                                         // 0x34

                virtual void                setWCString(const wchar_t* wcString);               // 0x38
                virtual void                setLanguage(u32 language);                          // 0x3C

                virtual void                touchFormInDisp(int);                               // 0x40

                virtual void                setConfigure(KeyboardType type);                    // 0x44

                virtual void                doSave();                                           // 0x48

                void                        sendRelease();

                void*                       getZiSystemDic();
                void*                       getZiOemDic();

                void                        activate()      { mbActivated = true; }
                void                        deactivate()    { mbActivated = false; }

                textinput::MemoManager*     memoMgr()   { return mpManager; }
                textinput::MemoInputForm*   memoFrm()   { return (textinput::MemoInputForm*)mpManager->getInputForm(); }

            private:
                textinput::MemoManager*                     mpManager;          // 0x04
                EventObserver                               mEvent;             // 0x08
                State                                       mState;             // 0x10
                u32                                         mCurrentConChan;    // 0x20
                Vec2                                        projCenter;         // 0x24
                bool                                        mbActivated;        // 0x2C
                u8                                          unk_0x2D;
                textinput::extend::savedata::MemoSetting    mSaveData;          // 0x2E
                nand::File*                                 mpSaveFile;         // 0x38
        };
    }
}

#endif // IPL_KEYBOARD_H
