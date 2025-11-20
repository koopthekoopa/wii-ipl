#include <revolution/os.h>
#include <revolution/os/OSBootInfo.h>
#include <private/os.h>

#include <revolution/vi.h>

#include <private/exi.h>

#include <revolution/gx.h>

#include <revolution/sc.h>

#include <private/hollywood.h>

#include <string.h>

#define FATAL_REPORT_X_POS  48
#define FATAL_REPORT_Y_POS  100

#define BS2_REPORT_X_POS    480
#define BS2_REPORT_Y_POS    420

typedef struct OSFatalParam {
    GXColor     fg;     // 0x00
    GXColor     bg;     // 0x04
    const char* msg;    // 0x08
} OSFatalParam;

static OSFatalParam FatalParam;
static OSContext FatalContext;

static void Halt();

static void ScreenClear(void* xfb, u16 xfbW, u16 xfbH, GXColor yuv) NO_INLINE {
    int i;
    int j;
    u8* ptr;

    ptr = xfb;
    for (i = 0; i < xfbH; i++) {
        for (j = 0; j < xfbW; j += 2) {
            *ptr++ = yuv.r;
            *ptr++ = yuv.g;
            *ptr++ = yuv.r;
            *ptr++ = yuv.b;
        }
    }
}

static void ScreenReport(void* xfb, u16 xfbW, u16 xfbH, GXColor yuv, s32 x, s32 y, s32 leading, const char* string) NO_INLINE {
    u8* ptr;
    s32 width;
    u32 i, j;
    u32 image[72];
    u32 k, l;
    u8  Y;
    u32 pixel;
    s32 col;

loop:
    if (xfbH - 24 >= y) {
        ptr = (u8*)xfb + ((x + (y * xfbW)) * 2);
        col = x;

        while (*string != 0) {
            if (*string == '\n') {
                string++;
                y += (u32)leading;
                goto loop;
            }

            if (xfbW - 48 < col) {
                y += leading;
                goto loop;
            }

            for (i = 0; i < 24; i++) {
                j = (i & 7) + ((i >> 3) * 24);
                image[j + 0]  = 0;
                image[j + 8]  = 0;
                image[j + 16] = 0;
            }

            string = OSGetFontTexel((char*)string, image, 0, 6, &width);

            for (i = 0; i < 24; i++) {
                j = (i & 7) + ((i >> 3) * 24);

                for (k = 0; k < 24; k++) {
                    l = j + (k & 0xFFFFFFF8);

                    Y = (image[l] >> ((7 - (k & 7)) * 4)) & 0xF;
                    if (Y != 0) {
                        Y = (((yuv.r * (Y * 0xEF)) / 255) / 15) + 0x10;
                        pixel = k + (i * xfbW);
                        ptr[pixel * 2] = Y;

                        if ((col + k) & 1) {
                            ptr[(pixel * 2) - 1] = yuv.g;
                            ptr[(pixel * 2) + 1] = yuv.b;
                        }
                        else {
                            ptr[(pixel * 2) - 1] = yuv.b;
                            ptr[(pixel * 2) + 1] = yuv.g;
                        }
                    }
                }
            }

            ptr += width * 2;
            col += width;
        }
    }
}

static void ConfigureVideo(u16 xfbW, u16 xfbH) NO_INLINE {
    GXRenderModeObj mode;

    mode.fbWidth = xfbW;
    mode.efbHeight = 480;
    mode.xfbHeight = xfbH;
    mode.viXOrigin = 40;
    mode.viWidth = 640;
    mode.viHeight = xfbH;

    switch (VIGetTvFormat()) {
        case VI_MPAL:
        case VI_NTSC: {
            if (VI_HAS_REG_F(VI_CLOCK_SELECT, (1<<0))) {
                mode.viTVmode = 2;
                mode.viYOrigin = 0;
                mode.xFBmode = 0;
            }
            else {
                mode.viTVmode = 0;
                mode.viYOrigin = 0;
                mode.xFBmode = 1;
            }
            break;
        }
        case VI_EURGB60: {
            mode.viTVmode = 20;
            mode.viYOrigin = 0;
            mode.xFBmode = 1;
            break;
        }
        case VI_PAL: {
            mode.viTVmode = 4;
            mode.viYOrigin = 47;
            mode.xFBmode = 1;
            break;
        }
    }

    VIConfigure(&mode);
    VIConfigurePan(0, 0, 640, 480);
}

static GXColor RGB2YUV(GXColor rgb) NO_INLINE {
    f32 Y;
    f32 Cb;
    f32 Cr;
    GXColor yuv;

    Y  = 0.5f + (16.0f + ((0.098f * (f32) rgb.b) + ((0.257f * (f32) rgb.r) + (0.504f * (f32) rgb.g))));
    Cb = 0.5f + (128.0f + ((0.439f * (f32) rgb.b) + ((-0.148f * (f32) rgb.r) - (0.291f * (f32) rgb.g))));
    Cr = 0.5f + (128.0f + (((0.439f * (f32) rgb.r) - (0.368f * (f32) rgb.g)) - (0.071f * (f32) rgb.b)));

    yuv.r = (Y > 235.0f) ? 235.0f : (Y < 16.0f) ? 16.0f : Y;
    yuv.g = (Cb > 240.0f) ? 240.0f : (Cb < 16.0f) ? 16.0f : Cb;
    yuv.b = (Cr > 240.0f) ? 240.0f : (Cr < 16.0f) ? 16.0f : Cr;
    yuv.a = 0;

    return yuv;
}

void OSFatal(GXColor fg, GXColor bg, const char* msg) {
    OSBootInfo* bootInfo;
    u32 count;
    OSTime t;

    bootInfo = (OSBootInfo*)OSPhysicalToCached(OS_ADDR_BOOT_INFO);
    OSDisableInterrupts();
    OSDisableScheduler();

    OSClearContext(&FatalContext);
    OSSetCurrentContext(&FatalContext);

    __OSStopAudioSystem();

    VIInit();
    __OSUnmaskInterrupts(OS_INTERRUPTMASK_PI_VI);
    VISetBlack(TRUE);
    VIFlush();
    VISetPreRetraceCallback(NULL);
    VISetPostRetraceCallback(NULL);

    OSEnableInterrupts();

    count = VIGetRetraceCount();
    while ((s32)(VIGetRetraceCount() - count) < 1) {}

    t = OSGetTime();
    while (!__OSCallShutdownFunctions(FALSE, OS_SHUTDOWN_FATAL) && OSGetTime() - t < OSMillisecondsToTicks(1000)) {}

    OSDisableInterrupts();

    __OSCallShutdownFunctions(TRUE, OS_SHUTDOWN_FATAL);

    EXISetExiCallback(EXI_CHAN_0, NULL);
    EXISetExiCallback(EXI_CHAN_2, NULL);

    while (!EXILock(EXI_CHAN_0, EXI_DEV_INT, NULL)) {
        EXISync(EXI_CHAN_0);
        EXIDeselect(EXI_CHAN_0);
        EXIUnlock(EXI_CHAN_0);
    }
    EXIUnlock(EXI_CHAN_0);

    while ((__EXIRegs[EXI_0_CONTROL >> 2] & (1<<EXI_CONTROL_TSTART)) == TRUE) {}

    __OSSetExceptionHandler(OS_EXCEPTION_DECREMENTER, &OSDefaultExceptionHandler);
    GXAbortFrame();

    OSSetArenaLo((void*)0x80200000);
    OSSetArenaHi((void*)0x80800000);

    FatalParam.fg = fg;
    FatalParam.bg = bg;
    FatalParam.msg = msg;

    OSSwitchFiber((u32)&Halt, (u32)OSGetArenaHi());
}

static void Halt() {
    u32 count;
    OSFontHeader* fontData;
    void* xfb;
    u32 len;
    OSFatalParam* fp;

    OSEnableInterrupts();

    fp = &FatalParam;
    len = strlen(fp->msg) + 1;
    fp->msg = memmove(OSAllocFromMEM1ArenaLo(len, DEFAULT_ALIGN), fp->msg, len);

    fontData = OSAllocFromMEM1ArenaLo(0xA1004, DEFAULT_ALIGN);
    OSLoadFont(fontData, OSGetArenaLo());

    xfb = OSAllocFromMEM1ArenaLo((640 * 480 * VI_DISPLAY_PIX_SZ), DEFAULT_ALIGN);
    ScreenClear(xfb, 640, 480, RGB2YUV(fp->bg));
    VISetNextFrameBuffer(xfb);
    ConfigureVideo(640, 480);
    VIFlush();
    count = VIGetRetraceCount();
    while ((s32)VIGetRetraceCount() - (s32)count < 2);

    ScreenReport(xfb, 640, 480, RGB2YUV(fp->fg), FATAL_REPORT_X_POS, FATAL_REPORT_Y_POS, fontData->leading, fp->msg);
    DCFlushRange(xfb, 640 * 480 * VI_DISPLAY_PIX_SZ);
    VISetBlack(FALSE);
    VIFlush();
    count = VIGetRetraceCount();

    while ((s32)VIGetRetraceCount() - (s32)count < 1) {}

    OSDisableInterrupts();
    OSReport("%s\n", fp->msg);
    PPCHalt();
}

const char* const __DVDErrorMessage[] = {
    "\n\n\n"
    "           エラーが発生しました。\n\n"
    "イジェクトボタンを押してディスクを取り出してか\n"
    "ら、本体の電源をOFFにして、本体の取扱説明書の\n"
    "           指示に従ってください。",

    "\n\n\n"
    "          An error has occurred.\n"
    "    Press the Eject Button, remove the\n"
    "    Game Disc, and turn the power off.\n"
    "   Please read the Wii operations manual\n"
    "           for more information.",

    "\n\n\n"
    "         Ein Fehler ist aufgetreten.\n"
    "  Dr\xFC""cke den Ausgabeknopf, entnimm die\n"
    "  Game Disc und schalte die Wii-Konsole\n"
    "aus. Bitte lies die Bedienungsanleitung der\n"
    " Wii-Konsole, um weitere Informationen zu\n"
    "                 erhalten.",

    "\n\n\n"
    "          Une erreur est survenue.\n"
    "   Appuyez sur le bouton EJECT, retirez\n"
    "  le disque de jeu et \xE9teignez la console.\n"
    "   Veuillez vous r\xE9""f\xE9rer au mode d'emploi\n"
    "     de la console pour de plus amples\n"
    "                informations.",

    "\n\n\n"
    "         Se ha producido un error.\n"
    "  Pulsa el Bot\xF3n EJECT, saca el disco y\n"
    " apaga la consola. Consulta el manual de\n"
    "  instrucciones de la consola Wii para\n"
    "         obtener m\xE1s informaci\xF3n.",

    "\n\n\n"
    "        Si \xE8 verificato un errore.\n"
    " Premi il pulsante EJECT, estrai il disco\n"
    "di gioco e spegni la console. Per maggiori\n"
    "   informazioni consulta il manuale di\n"
    "       istruzioni della console Wii.",

    "\n\n\n"
    "       Er is een fout opgetreden.\n"
    "   Druk op de ejectknop, verwijder de\n"
    " speldisk en zet het systeem uit. Lees\n"
    "de Wii-handleiding voor meer informatie.",

    "\n\n"
    "                Error #104,\n"
    "          An error has occurred.\n"
    "    Press the EJECT Button, remove the\n"
    "    Game Disc, and turn the power off.\n"
    "   Please read the Wii operations manual\n"
    "           for more information.",

    "\n\n"
    "                Error #104,\n"
    "          An error has occurred.\n"
    "    Press the EJECT Button, remove the\n"
    "    Game Disc, and turn the power off.\n"
    "   Please read the Wii operations manual\n"
    "           for more information.",

    "\n\n"
    "                Error #104,\n"
    "          An error has occurred.\n"
    "    Press the EJECT Button, remove the\n"
    "    Game Disc, and turn the power off.\n"
    "   Please read the Wii operations manual\n"
    "           for more information."
};

static void (*FatalFunc)();

void __DVDShowFatalMessage() {
    const char* message;
    GXColor bg = {  0,   0,   0,  0 };
    GXColor fg = { 255, 255, 255, 0 };

    if (SCGetLanguage() == SC_LANG_JAPANESE) {
        OSSetFontEncode(OS_FONT_ENCODE_SJIS);
    }
    else {
        OSSetFontEncode(OS_FONT_ENCODE_ANSI);
    }

    if (SCGetLanguage() > SC_LANG_KOREAN) {
        message = __DVDErrorMessage[SC_LANG_ENGLISH];
    }
    else {
        message = __DVDErrorMessage[SCGetLanguage()];
    }

    OSFatal(fg, bg, message);
}

int DVDSetAutoFatalMessaging(BOOL enable) {
    BOOL enabled;
    BOOL prev;

    enabled = OSDisableInterrupts();

    prev = FatalFunc ? TRUE : FALSE;
    FatalFunc = enable ? __DVDShowFatalMessage : NULL;

    OSRestoreInterrupts(enabled);
    return prev;
}

void __DVDPrintFatalMessage() {
    if (FatalFunc) {
        FatalFunc();
    }
}

void BS2ScreenReport(GXColor fg, GXColor bg, const char* msg) {
    u32 count;
    OSFontHeader* fontData;
    void* xfb;
    u32 len;
    OSFatalParam* fp;

    FatalParam.fg = fg;
    FatalParam.bg = bg;
    FatalParam.msg = msg;

    fp = &FatalParam;

    len = strlen(fp->msg) + 1;
    fp->msg = memmove(OSAllocFromMEM2ArenaLo(len, DEFAULT_ALIGN), fp->msg, len);

    fontData = OSAllocFromMEM2ArenaLo(0xA1004, DEFAULT_ALIGN);
    OSLoadFont(fontData, OSGetMEM2ArenaLo());

    xfb = OSAllocFromMEM1ArenaLo((640 * 480 * VI_DISPLAY_PIX_SZ), DEFAULT_ALIGN);
    ScreenClear(xfb, 640, 480, RGB2YUV(fp->bg));
    VISetNextFrameBuffer(xfb);
    ConfigureVideo(640, 480);
    VIFlush();
    count = VIGetRetraceCount();
    while ((s32)VIGetRetraceCount() - (s32)count < 2);

    ScreenReport(xfb, 640, 480, RGB2YUV(fp->fg), BS2_REPORT_X_POS, BS2_REPORT_Y_POS, fontData->leading, fp->msg);
    DCFlushRange(xfb, 640 * 480 * VI_DISPLAY_PIX_SZ);
    VISetBlack(FALSE);
    VIFlush();
    count = VIGetRetraceCount();

    while ((s32)VIGetRetraceCount() - (s32)count < 1);

    OSReport("%s\n", fp->msg);
}
