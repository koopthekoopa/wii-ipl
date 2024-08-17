#ifndef IPL_ERROR_HANDLER_H
#define IPL_ERROR_HANDLER_H

#include <revolution.h>

#include <egg/core.h>

#include "system/iplMessage.h"

#include "layout/iplLayout.h"

namespace ipl {
    class ErrorHandler {
        public:
            enum Type {
                IPL_ERROR_UNK = 0,
                IPL_ERROR_UNK_DEFAULT
            };
            
            enum {
                /* An error has occurred. */
                MESG_ERROR_GENERIC = 0,
                /* The Wii System Memory is damaged. */
                MESG_ERROR_NAND_ERROR,
                /* The system files are corrupted. */
                MESG_ERROR_CONTENT_ERROR,
                /* This channel can't be used. */
                MESG_ERROR_ES_ERROR,
                /* Error:003 unauthorized device has been detected. */
                MESG_ERROR_KEY_ERROR
            };

            /**
             * @param pHeap The work heap.
             */
            ErrorHandler(EGG::Heap* pHeap);

            /**
             * @brief Sets the error type.
             * 
             * @param type The error type.
             * @param msgId The message ID that will be displayed.
             * @param arg1 Unknown. Left as `NULL`.
             * @param arg2 Unknown. Left as `0`.
             * @param arg3 Unknown. Left as `-1`.
             */
            void set(Type type, u32 msgId, const char* arg1 = NULL, int arg2 = 0, int arg3 = -1);
            /**
             * @brief Run the error screen.
             */
            void check();
            /**
             * @brief Update the error screen.
             */
            void calc();
            /**
             * @brief Log the error to the NAND log (`shared2/test2/nanderr.log`)
             */
            void log(const char* type, int code, const char* file, int line);
            /**
             * @brief Draw the error screen.
             */
            void draw();

        private:
            BOOL            mReady;     // 0x00

            Type            mType;      // 0x04

            int             mMessageID; // 0x08

            int             unk_0x0C;
            int             unk_0x10;
            char            unk_0x14[4];

            u8*             mpArcData;  // 0x18
            u32             mArcSize;   // 0x1C

            layout::Object* mpLayout;   // 0x20
    };
}

#endif // IPL_ERROR_HANDLER_H


