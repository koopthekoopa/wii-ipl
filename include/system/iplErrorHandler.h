#ifndef IPL_ERROR_HANDLER_H
#define IPL_ERROR_HANDLER_H

#include <revolution.h>

#include <egg/core.h>

#include "system/iplMessage.h"

#include "layout/iplLayout.h"

/*** Message IDs for the Error Message ***/

/* An error has occurred. */
#define MESG_ERR_GENERIC    0
/* The Wii System Memory is damaged. */
#define MESG_ERR_NAND       1
/* The system files are corrupted. */
#define MESG_ERR_CONTENT    2
/* This channel can't be used. */
#define MESG_ERR_CHANNEL    3
/* Error:003 unauthorized device has been detected. */
#define MESG_ERR_KEY        4

namespace ipl {
    class ErrorHandler {
        private:
            enum Type {
                NONE = 0,
                DEFAULT
            };

            /** @param heap The work heap. */
            ErrorHandler(EGG::Heap* heap);

            void draw();
            void check();
            void calc();

            /**
             * @param type The error type.
             * @param msgId The message ID that will be displayed.
             * @param arg1 Unknown. Left as `NULL`.
             * @param arg2 Unknown. Left as `0`.
             * @param arg3 Unknown. Left as `-1`.
             */
            void set(Type type, u32 msgId, const char* arg1 = NULL, int arg2 = 0, int arg3 = -1);

            /**
             * @param type The error type.
             * @param result The result it thrown.
             * @param file The source file name.
             * @param line The source file line.
            */
            void log(const char* type, int result, const char* file, int line);

            BOOL            mbReady;    // 0x00

            Type            mType;      // 0x04

            int             mMessageID; // 0x08

            int             unk_0x0C;
            int             unk_0x10;
            char            unk_0x14[4];

            u8*             mpArcData;  // 0x18
            u32             mArcSize;   // 0x1C

            layout::Object* mpLayout;   // 0x20
        
        friend class System;
    };
}

#endif // IPL_ERROR_HANDLER_H


