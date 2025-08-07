#ifndef TEXTINPUT_MANAGER_H
#define TEXTINPUT_MANAGER_H

#include <nw4r/lyt.h>

#include <revolution/types.h>
#include <revolution/os.h>

#include <stdio.h>

namespace textinput {
    /* temp */
    class CommandReceiver {
        public:
            typedef enum INPUT_COMMAND {
                INPUT_COMMAND_0 = 0,
            } INPUT_COMMAND;
    };
    namespace sound {
        typedef enum SE {
            SE_0 = 0,
        } SE;
    }
    class EventObserver {
        public:
            virtual void    onInput(CommandReceiver::INPUT_COMMAND, void*) {}
            virtual void    onCommand(CommandReceiver::INPUT_COMMAND, void*) {}

            virtual void    onEvent(nw4r::lyt::Pane* pane, u32 event) {}

            virtual void    onSE(sound::SE id) {}

            virtual void    onOK()             { printf("OK!\n"); }

            virtual void    onCancel()         { printf("Cancel!\n"); }

            virtual void    onOutOfLength()    { printf("OutOfLength\n"); }
    } ;
}

#endif // TEXTINPUT_MANAGER_H
