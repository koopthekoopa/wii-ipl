#include "system/iplException.h"

#include <revolution/kpad.h>

#include <nw4r/ut.h>

#include <cstring>

namespace ipl {
    static const u32 sKeyInputs[8] = {
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

    Exception::Exception(EGG::Heap* heap, const GXRenderModeObj& rMode) :
    mConsole(NULL),
    unk_0x04(0),
    mpBuffer(),
    unk_0x0C(0) {
        nw4r::db::Exception_Init();
        nw4r::db::DirectPrint_Init();

        mpBuffer = new(heap, CLASS_HEAP) u8[NW4R_CONSOLE_BUFFER_SIZE(FONT_WIDTH, FONT_HEIGHT)];
        mConsole = nw4r::db::Console_Create(mpBuffer, FONT_WIDTH, FONT_HEIGHT, 18, 0, 4);

        setConsole(rMode);

        nw4r::db::Exception_SetUserCallback(exception_callback_, this);
    }

    void Exception::setConsole(const GXRenderModeObj& rMode) {
        nw4r::db::Exception_SetConsole(mConsole, &rMode);
        nw4r::db::Console_SetVisible(mConsole, false);

        nw4r::db::ConsoleHandle handle = mConsole;
        // Using Console_SetPosition turns it into a weak...
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
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                u32 pressed = cons[i].trig;
                if (pressed) {
                    if (pressed & sKeyInputs[inputCur]) {
                        inputCur++;
                    }
                    else {
                        inputCur = 0;
                    }
                }
            }
        }
    }

    void Exception::exception_callback(nw4r::db::ConsoleHandle console) {
        nw4r::db::Console_SetVisible(console, true);

        s32 line = nw4r::db::Console_GetBufferHeadLine(mConsole);
        s32 lineScrollMax = nw4r::db::Console_GetTotalLines(mConsole) - LINES_ON_SCREEN_HEIGHT;

        key_input(); // Wait until they pressed key input

        // Scroll through the exception.
        for (; line <= lineScrollMax; line++) {
            nw4r::db::Console_SetViewBaseLine(mConsole, line);
            nw4r::db::Console_DrawDirect(mConsole);
            wait(250);
        }

        // Go back to the first line
        int yCur = 0;
        nw4r::db::Console_SetViewBaseLine(mConsole, 0);
        nw4r::db::Console_DrawDirect(mConsole);

        OSEnableInterrupts();

        // Setup controllers
        KPADStatus cons[WPAD_MAX_CONTROLLERS];
        memset(cons, 0, sizeof(cons));

        while (true) {
            int yPrevCur = yCur;
            int xCur = nw4r::db::Console_GetPositionX(mConsole);
            int xPrevCur = xCur;

            // Read controllers
            for (int i = 0; i < WPAD_MAX_CONTROLLERS; i++) {
                KPADRead(i, &cons[i], 1);
            }

            wait(50);

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
                nw4r::db::Console_SetPosition(mConsole, xCur, nw4r::db::Console_GetPositionY(mConsole));
                nw4r::db::Console_SetViewBaseLine(mConsole, yCur);
                nw4r::db::Console_DrawDirect(mConsole);
            }
        }
    }

    void Exception::wait(u32 tick) {
        OSTick prevTick = OSGetTick();
        while (OSTicksToMilliseconds(OSDiffTick(OSGetTick(), prevTick)) < tick) {
            // do nothing until it finished
        }
    }
}

/***********************************************************************
 * TODO: Generate weak function nw4r::ut::Color::operator=(const Color&)
 ***********************************************************************/
