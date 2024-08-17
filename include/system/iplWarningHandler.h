#ifndef IPL_WARNING_HANDLER_H
#define IPL_WARNING_HANDLER_H

#include <revolution/types.h>

#include <egg/core.h>

#include "system/iplDialogWindow.h"

namespace ipl {
    class WarningHandler {
        enum Type {
            UNK_WARN_TYPE = 0,
            UNK_DEFAULT_WARN_TYPE
        };

        public:
            WarningHandler(EGG::Heap* pHeap);

            /**
             * @brief Sets the warning type.
             * 
             * @param type The warning type.
             * @param msgId The message ID.
             */
            void set(Type type, u32 msgId);
            /**
             * @brief Update the warning handler.
             */
            void calc();
            /**
             * @brief Draw the warning handler.
             */
            void draw();
            /**
             * @brief Check if the warning handler is available.
             */
            BOOL check();
        
        private:
            Type            mType;      // 0x00
            u32             mMessageID; // 0x04

            DialogWindow*   mpDialog;   // 0x08
    };
}

#endif // IPL_WARNING_HANDLER_H


