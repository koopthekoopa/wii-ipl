#include <nw4r/db/console.h>
#include <nw4r/db/directPrint.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

#pragma sym on

namespace nw4r {
    namespace db {
        static OSMutex          sMutex;

        static u8               sStrBuf[1024];

        static ConsoleHandle    sConsoleList;

        static bool             sInitialized = false;

        static inline u8* GetTextPtr_(ConsoleHandle console, u16 line, u16 xPos) {
            return console->textBuf + xPos + (console->width + 1) * line;
        }

        static inline u32 CodeWidth_(const u8* p) {
            return *p >= 0x81 ? sizeof(wchar_t) : sizeof(char);
        }

        static inline u32 GetTabSize_(ConsoleHandle console) {
            s32 tab = (console->attr & 12) >> 2;
            return static_cast<u32>(2 << tab);
        }

        static inline const u8* SearchEndOfLine_(const u8* str) {
            while (*str != '\n' && *str != '\0') {
                str++;
            }
            return str;
        }

        static inline u16 GetRingUsedLines_(ConsoleHandle console) {
            {
                s32 lines = console->printTop - console->ringTop;

                if (lines < 0) {
                    lines += console->height;
                }

                return static_cast<u16>(lines);
            }
        }

        static inline u16 GetActiveLines_(ConsoleHandle console) {
            u16 lines = GetRingUsedLines_(console);

            if (console->printTopUsed) {
                lines++;
            }

            return lines;
        }

        static void TerminateLine_(ConsoleHandle console);
        static u8*  NextLine_(ConsoleHandle console);
        static u8*  PutTab_(ConsoleHandle console, u8* dstPtr);
        static u32  GetTabSize_(ConsoleHandle console);
        static u32  PutChar_(ConsoleHandle console, const u8* str, u8* dstPtr);
        static u32  CodeWidth_(const u8* p);

        static void DoDrawString_(ConsoleHandle console, u32 printLine, const u8* str, ut::TextWriter* writer);
        static void DoDrawConsole_(ConsoleHandle console, ut::TextWriter* writer);

        static void PrintToBuffer_(ConsoleHandle console, const u8* str);

        static void Console_PrintString_(ConsoleOutputType type, ConsoleHandle console, const u8* str);

        static ConsoleHandle FindInsertionPosition_(u16 priority) {
            ConsoleHandle cursor = sConsoleList;

            if (cursor == NULL || cursor->priority < priority) {
                return NULL;
            }

            while (cursor->next != NULL) {
                if (cursor->next->priority < priority) {
                    return cursor;
                }
                cursor = cursor->next;
            }
            return cursor;
        }

        static void Console_Append_(ConsoleHandle console) {
            OSLockMutex(&sMutex);

            ConsoleHandle cursor = FindInsertionPosition_(console->priority);

            if (cursor == NULL) {
                console->next = sConsoleList;
                sConsoleList = console;
            }
            else {
                console->next = cursor->next;
                cursor->next = console;
            }
            OSUnlockMutex(&sMutex);
        }

        ConsoleHandle Console_Create(void* buffer, u16 width, u16 height, u16 viewLines, u16 priority, u16 attr) {
            if (!sInitialized) {
                OSInitMutex(&sMutex);
                sInitialized = true;
            }

            ConsoleHandle console = (ConsoleHandle)buffer;
            console->textBuf = (u8*)(console + 1);
            console->width = width;
            console->height = height;
            console->priority = priority;
            console->attr = attr;
            console->isVisible = false;
            console->printTop = 0;
            console->printXPos = 0;
            console->printTopUsed = 0;
            console->ringTop = 0;
            console->ringTopLineCnt = 0;
            console->viewTopLine = 0;
            console->viewPosX = 30;
            console->viewPosY = 50;
            console->viewLines = viewLines;
            console->writer = NULL;

            OSLockMutex(&sMutex);

            console->printTop = 0;
            console->printXPos = 0;
            console->printTopUsed = 0;
            console->ringTop = 0;
            console->ringTopLineCnt = 0;
            console->viewTopLine = 0;

            OSUnlockMutex(&sMutex);

            Console_Append_(console);
            return console;
        }

        static void TerminateLine_(ConsoleHandle console) {
            *GetTextPtr_(console, console->printTop, console->printXPos) = '\0';
        }

        static u8* NextLine_(ConsoleHandle console) {
            *GetTextPtr_(console, console->printTop, console->printXPos) = '\0';
            console->printXPos = 0;
            console->printTop++;
            console->printTopUsed = 0;

            if (console->printTop == console->height && !(console->attr & (1<<1))) {
                console->printTop = 0;
            }

            if (console->printTop == console->ringTop) {
                console->ringTopLineCnt++;
                if (++console->ringTop == console->height) {
                    console->ringTop = 0;
                }
            }

            return GetTextPtr_(console, console->printTop, 0);
        }

        static u8* PutTab_(ConsoleHandle console, u8* dstPtr) {
            u32 tabWidth = GetTabSize_(console);

            do {
                *dstPtr++ = ' ';
                console->printXPos++;

                if (console->printXPos >= console->width) {
                    break;
                }
            } while (console->printXPos & (tabWidth - 1));

            return dstPtr;
        }

        static u32 PutChar_(ConsoleHandle console, const u8* str, u8* dstPtr) {
            u32 codeWidth = CodeWidth_(str);
            u32 cnt;

            if (console->printXPos + codeWidth > console->width) {
                return 0;
            }

            console->printXPos += codeWidth;

            for (cnt = codeWidth; cnt > 0; cnt--) {
                *dstPtr++ = *str++;
            }

            return codeWidth;
        }

        static void DoDrawString_(ConsoleHandle console, u32 printLine, const u8* str, ut::TextWriter* writer) {
            if (writer) {
                writer->Printf("%s\n", str);
            }
            else {
                s32 height = (s32)((u32)console->viewPosY + printLine * 10);
                DirectPrint_DrawString(console->viewPosX, height, false, "%s\n", str);
            }
        }

        static void DoDrawConsole_(ConsoleHandle console, ut::TextWriter* writer) {
            {
                s32 viewOffset;
                u16 line;
                u16 printLines;

                viewOffset = console->viewTopLine - console->ringTopLineCnt;
                printLines = 0;

                if (viewOffset < 0) {
                    viewOffset = 0;
                }
                else if (viewOffset > GetActiveLines_(console)) {
                    goto end;
                }

                line = static_cast<u16>(console->ringTop + viewOffset);

                if (line >= console->height) {
                    line -= console->height;
                }

                while (true) {
                    if (line == console->printTop && !console->printTopUsed) {
                        goto end;
                    }

                    DoDrawString_(console, printLines, GetTextPtr_(console, line, 0), writer);
                    printLines++;

                    if (line == console->printTop ) {
                        goto end;
                    }

                    line++;

                    if (line == console->height) {
                        if (console->attr & (1<<1)) {
                            goto end;
                        }
                        line = 0;
                    }

                    if (printLines >= console->viewLines) {
                        goto end;
                    }
                }
            }

            // maybe not, with this end label?
        end:
            return;
        }

        void Console_DrawDirect(ConsoleHandle console) {
            if (DirectPrint_IsActive() && console->isVisible) {
                OSLockMutex(&sMutex);
                int width = console->width * 6 + 12;
                int height = console->viewLines * 10 + 4;

                DirectPrint_EraseXfb(console->viewPosX - 6, console->viewPosY - 3, width, height);
                DoDrawConsole_(console, NULL);
                DirectPrint_StoreCache();

                OSUnlockMutex(&sMutex);
            }
        }

        static void PrintToBuffer_(ConsoleHandle console, const u8* str) {
            u8* storePtr;

            storePtr = GetTextPtr_(console, console->printTop, console->printXPos);

            while (*str) {
                if (console->attr & 2 && console->printTop == console->height) {
                    break;
                }

                while (*str) {
                    bool newLineFlag = false;

                    if (*str == '\n') {
                        str++;
                        storePtr = NextLine_(console);
                        break;
                    }

                    if (*str == '\t') {
                        str++;
                        storePtr = PutTab_(console, storePtr);
                        console->printTopUsed = 1;
                    }
                    else {
                        u32 bytes = PutChar_(console, str, storePtr);

                        if (bytes) {
                            str += bytes;
                            storePtr += bytes;
                            console->printTopUsed = 1;
                        }
                        else {
                            newLineFlag = true;
                        }
                    }

                    if (console->printXPos >= console->width) {
                        newLineFlag = true;
                    }

                    if (newLineFlag) {
                        if (console->attr & 1) {
                            str = SearchEndOfLine_(str);
                            break;
                        }

                        if (*str == '\n') {
                            str++;
                        }

                        storePtr = NextLine_(console);
                        break;
                    }
                }
            }
        }

        static void Console_PrintString_(ConsoleOutputType type, ConsoleHandle console, const u8* str) {
            if (type & CONSOLE_OUTPUT_DISPLAY) {
                OSReport("%s", str);
            }
            if (type & CONSOLE_OUTPUT_TERMINAL) {
                PrintToBuffer_(console, str);
            }
        }

        void Console_VFPrintf(ConsoleOutputType type, ConsoleHandle console, const char* format, va_list vlist) {
            OSLockMutex(&sMutex);
            // Cool
            vsnprintf(reinterpret_cast<char*>(sStrBuf), sizeof sStrBuf, format, vlist);
            Console_PrintString_(type, console, sStrBuf);

            OSUnlockMutex(&sMutex);
        }

        void Console_Printf(ConsoleHandle console, const char* format, ...) {
            va_list vlist;

            va_start(vlist, format);
            Console_VFPrintf(CONSOLE_OUTPUT_ALL, console, format, vlist);
            va_end(vlist);
        }

        s32 Console_GetTotalLines(ConsoleHandle console) {
            s32 count;

            OSLockMutex(&sMutex);
            count = GetActiveLines_(console) + console->ringTopLineCnt;
            OSUnlockMutex(&sMutex);

            return count;
        }
    }
}
