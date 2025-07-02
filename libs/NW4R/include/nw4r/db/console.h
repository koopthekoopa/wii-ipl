#ifndef NW4R_DB_CONSOLE_H
#define NW4R_DB_CONSOLE_H

#include <revolution/types.h>

#include <nw4r/ut/TextWriter.h>

namespace nw4r {
    namespace db {
        namespace detail {
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
                u16             printTopUsed;   // 0x10

                u16             ringTop;        // 0x12
                s32             ringTopLineCnt; // 0x14

                s32             viewTopLine;    // 0x18
                s16             viewPosX;       // 0x1C
                s16             viewPosY;       // 0x1E
                u16             viewLines;      // 0x20

                u8              isVisible;      // 0x22
                u8              padding_[1];    // 0x23

                ut::TextWriter* writer;         // 0x24

                ConsoleHead*    next;           // 0x28
            };
        }

        typedef enum ConsoleOutputType {
            CONSOLE_OUTPUT_NONE = 0,
            CONSOLE_OUTPUT_TERMINAL	= (1 << 0),
            CONSOLE_OUTPUT_DISPLAY = (1 << 1),
            CONSOLE_OUTPUT_ALL = CONSOLE_OUTPUT_TERMINAL | CONSOLE_OUTPUT_DISPLAY
        } ConsoleOutputType;

        typedef detail::ConsoleHead* ConsoleHandle;
        
        ConsoleHandle   Console_Create(void* buffer, u16 width, u16 height, u16 viewHeight, u16 prioriry, u16 attr);

        void            Console_DrawDirect(ConsoleHandle console);

        void            Console_VFPrintf(ConsoleOutputType type, ConsoleHandle console, const char* format, va_list vlist);

        inline void Console_VPrintf(ConsoleHandle console, const char* format, va_list vlist) {
            Console_VFPrintf(CONSOLE_OUTPUT_ALL, console, format, vlist);
        }

        void            Console_Printf(ConsoleHandle console, const char* format, ...);

        s32             Console_GetTotalLines(ConsoleHandle console);

        inline u16 Console_GetViewHeight(ConsoleHandle console) {
            return console->viewLines;
        }

        inline s32 Console_GetViewBaseLine(ConsoleHandle console) {
            return console->viewTopLine;
        }

        inline s16 Console_GetPositionX(ConsoleHandle console) {
            return console->viewPosX;
        }

        inline s16 Console_GetPositionY(ConsoleHandle console) {
            return console->viewPosY;
        }

        inline s32 Console_GetBufferHeadLine(ConsoleHandle console) {
            return console->ringTopLineCnt;
        }

        inline bool Console_SetVisible(ConsoleHandle console, bool isVisible) {
            bool before = console->isVisible;
            console->isVisible = isVisible;
            return before;
        }

        inline void Console_SetPosition(ConsoleHandle console, s32 x, s32 y) {
            console->viewPosX = x;
            console->viewPosY = y;
        }

        inline s32 Console_SetViewBaseLine(ConsoleHandle console, s32 line) {
            s32 before = console->viewTopLine;
            console->viewTopLine = line;
            return before;
        }

        inline s32 Console_ShowLatestLine(ConsoleHandle console) {
            s32 baseLine = Console_GetTotalLines(console) - Console_GetViewHeight(console);
            if (baseLine < 0) {
                baseLine = 0;
            }

            Console_SetViewBaseLine(console, baseLine);

            return baseLine;
        }
    }
}

#endif // NW4R_DB_CONSOLE_H
