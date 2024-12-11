#define UNIT_DOESNT_MATCH

#include "system/iplException.h"

#include <revolution/kpad.h>

#include <nw4r/ut.h>

#include <cstring>

namespace ipl {
    static const s32 sKeyInputs[] = {
        // Left, down, down, 1, -, 2, +, down
        WPAD_BUTTON_LEFT,
        WPAD_BUTTON_DOWN,
        WPAD_BUTTON_DOWN,
        WPAD_BUTTON_1,   
        WPAD_BUTTON_MINUS,
        WPAD_BUTTON_2,   
        WPAD_BUTTON_PLUS,
        WPAD_BUTTON_DOWN,
    };

    #define LINES_ON_SCREEN_OFFSET  4
    #define LINES_ON_SCREEN_WIDTH   24
    #define LINES_ON_SCREEN_HEIGHT  18

    #define FONT_WIDTH  46
    #define FONT_HEIGHT 48

    bool exception_callback_(nw4r::db::ConsoleHandle console, void* param) {
        Exception* exception = ((Exception*)param);
        exception->exception_callback(console);
    }

    Exception::Exception(EGG::Heap* pHeap, const GXRenderModeObj& rMode) {
        mConsole = NULL;
        unk_0x04 = 0;
        mpBuffer = NULL;
        unk_0x0C = *(sKeyInputs);

        nw4r::db::Exception_Init();
        nw4r::db::DirectPrint_Init();

        mpBuffer = new(pHeap, CLASS_HEAP) u8[NW4R_CONSOLE_BUFFER_SIZE(FONT_WIDTH, FONT_HEIGHT)];
        mConsole = nw4r::db::Console_Create(mpBuffer, FONT_WIDTH, FONT_HEIGHT, 18, 0, 4);

        setConsole(rMode);

        nw4r::db::Exception_SetUserCallback(exception_callback_, this);
    }

    void Exception::setConsole(const GXRenderModeObj& rMode) {
        nw4r::db::Exception_SetConsole(mConsole, &rMode);
        mConsole->isVisible = false;

        nw4r::db::ConsoleHandle handle = mConsole;
        handle->viewPosX = 14;
        handle->viewPosY = 30;
    }

    void Exception::key_input() {
        KPADStatus cons[WPAD_MAX_CONTROLLERS];
        memset(cons, 0, sizeof(cons));
        
        int inputCur = 0;

        OSEnableInterrupts();

        while (inputCur < sizeof(sKeyInputs)) {
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                KPADRead(i, &cons[i], 1);
            }
            
            wait(50);

            // todo
        }
    }

    void Exception::exception_callback(nw4r::db::ConsoleHandle console) {
        console->isVisible = true;

        s32 line = mConsole->ringTopLineCnt;
        s32 lineScrollMax = nw4r::db::Console_GetTotalLines(mConsole) - LINES_ON_SCREEN_HEIGHT;

        key_input(); // Wait until they pressed key input

        // Scroll through the exception.
        for (; line <= lineScrollMax; line++) {
            mConsole->viewTopLine = line;
            nw4r::db::Console_DrawDirect(mConsole);
            wait(250);
        }

        // Go back to the first line
        int yCur = 0;
        mConsole->viewTopLine = 0;
        nw4r::db::Console_DrawDirect(mConsole);

        OSEnableInterrupts();

        // Setup controllers
        KPADStatus cons[WPAD_MAX_CONTROLLERS];
        memset(cons, 0, sizeof(cons));

        while (TRUE) {
            int yPrevCur = yCur;
            int xCur = mConsole->viewPosX;
            int xPrevCur = xCur;

            // Read controllers
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                KPADRead(i, &cons[i], 1);
            }

            wait(50); // A hacky way of ensuring the controllers are initialiazed?

            int chan = 0;
            for (int i = WPAD_MAX_CONTROLLERS; i != 0; i--) {
                if (cons[chan].wpad_err == 0) {
                    u32 held = cons[chan].hold;

                    // Scroll depending on what the user presses
                    if ((held & WPAD_BUTTON_UP) && yCur > 0) {
                        yCur--;
                    }
                    else if ((held & WPAD_BUTTON_DOWN) && yCur < lineScrollMax) {
                        yCur++;
                    }
                    else if ((held & WPAD_BUTTON_RIGHT) && xCur > LINES_ON_SCREEN_OFFSET) {
                        xCur -= 2;
                    }
                    else if ((held & WPAD_BUTTON_LEFT) && xCur < LINES_ON_SCREEN_WIDTH) {
                        xCur += 2;
                    }
                }
                chan++;
            }

            // Refresh screen
            if (yCur != yPrevCur || xCur != xPrevCur) {
                mConsole->viewPosX = xCur;
                mConsole->viewTopLine = yCur;
                nw4r::db::Console_DrawDirect(mConsole);
            }
        }
    }

    void Exception::wait(u32 tick) {
        OSTick prevTick = OSGetTick();
        while (OSTicksToMilliseconds(OSGetTick() - prevTick) < tick) {
            // do nothing until it finished
        }
    }
}

/***********************************************************************
 * TODO: Generate weak function nw4r::ut::Color::operator=(const Color&)
 ***********************************************************************/


