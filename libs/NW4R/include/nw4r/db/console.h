#ifndef NW4R_DEBUG_CONSOLE_H
#define NW4R_DEBUG_CONSOLE_H

#include <revolution.h>

namespace nw4r {
    namespace db {
        namespace detail {
            class TextWriterBase; // temp

            #define NW4R_CONSOLE_BUFFER_SIZE(width, height)  (sizeof(nw4r::db::detail::ConsoleHead) + ((width) + 1) * (height))
            
            typedef struct ConsoleHead ConsoleHead;
            struct ConsoleHead {
                u8*             textBuf;        // 0x00

                u16             width;          // 0x04
                u16             height;         // 0x06

                u16             priority;       // 0x08
                u16             attr;           // 0x0A

                u16             printTop;       // 0x0C
                u16             printXPos;      // 0x0E

                u16             ringTop;        // 0x10
                s32             ringTopLineCnt; // 0x14
                s32             viewTopLine;    // 0x18

                s16             viewPosX;       // 0x1C
                s16             viewPosY;       // 0x1E
                u16             viewLines;      // 0x20

                bool            isVisible;      // 0x22

                u8              padding_[1];    // 0x23

                TextWriterBase* writer;         // 0x24

                ConsoleHead*    next;           // 0x28
            };
        }
        typedef detail::ConsoleHead* ConsoleHandle;
        
        ConsoleHandle   Console_Create(void* buffer, u16 width, u16 height, u16 viewHeight, u16 prioriry, u16 attr);

        s32             Console_GetTotalLines(ConsoleHandle console);

        void            Console_DrawDirect(ConsoleHandle console);
    }
}

#endif // NW4R_DEBUG_CONSOLE_H


