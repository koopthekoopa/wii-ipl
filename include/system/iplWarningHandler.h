#ifndef IPL_WARNING_HANDLER_H
#define IPL_WARNING_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

#include "system/iplDialogWindow.h"

namespace ipl {
    class WarningHandler {
        private:
            enum Type {
                NONE = 0,
                DEFAULT
            };

            WarningHandler(EGG::Heap* heap);
            /**
             * @param type The warning type.
             * @param msgId The message ID.
             */
            void set(Type type, u32 msgId);

            void calc();
            void draw();

            BOOL check();

            Type            mType;      // 0x00
            u32             mMessageID; // 0x04

            DialogWindow*   mpDialog;   // 0x08
        
        friend class System;
    };
}

#endif // IPL_WARNING_HANDLER_H


