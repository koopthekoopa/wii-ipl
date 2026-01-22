#include <nw4r/db/exception.h>
#include <nw4r/db/console.h>
#include <nw4r/db/directPrint.h>

#include <revolution/base/PPCArch.h>

#include <revolution/vi.h>

#include <revolution/os.h>
#include <private/os.h>

#include <cmath>

namespace nw4r {
    namespace db {
        typedef struct ExceptionStruct {
            OSThread                thread;
            OSMessageQueue          queue;
            void*                   frameMemory;

            u32                     stackAddress;

            ConsoleHandle           consoleHandle;

            const GXRenderModeObj*  exceptionRenderObj;
            ExceptionUserCallback   exceptionCallback;
            void*                   exceptionCallbackArgs;

            u32                     MSR_COPY;
            u32                     FPCSR_COPY;

            u16                     exceptionDisplayInfo;
        } ExceptionStruct;

        typedef struct {
            u16         error;
            OSContext*  context;
            u32         dsisr;
            u32         dar;
        } ExceptionCallbackParam;

        static OSMessage sMessageBuffer[1];
        static ExceptionStruct sException;

        static u8 sThreadBuffer[0x4000] ALIGN32;

        const char* CPU_EXP_NAME[] = {
            "SYSTEM RESET",
            "MACHINE CHECK",
            "DSI",
            "ISI",
            "EXTERNAL INTERRUPT",
            "ALIGNMENT",
            "PROGRAM",
            "FLOATING POINT",
            "DECREMENTER",
            "SYSTEM CALL",
            "TRACE",
            "PERFORMACE MONITOR",
            "BREAK POINT",
            "SYSTEM INTERRUPT",
            "THERMAL INTERRUPT",
            "PROTECTION",
            "FLOATING POINT",
        };

        void*   RunThread_(void* work);
        void    ErrorHandler_(u16 error, OSContext* context, u32 dsisr, u32 dar);

        static void PrintContext_(u16 error, OSContext* context, u32 dsisr, u32 dar);
        static void WaitTime_(s32 time);

        void Exception_Init() {
            memset(&sException, 0, sizeof(struct ExceptionStruct));

            sException.exceptionCallback = NULL;
            sException.consoleHandle = NULL;
            sException.exceptionDisplayInfo = 0x21;
            sException.frameMemory = NULL;
            sException.exceptionRenderObj = NULL;

            OSCreateThread(&sException.thread, RunThread_, NULL, sThreadBuffer + 0x4000, 0x4000, 0, 1);
            OSInitMessageQueue(&sException.queue, sMessageBuffer, 1);
            OSResumeThread(&sException.thread);

            OSSetErrorHandler(OS_EXCEPTION_DSI, (OSErrorHandler)ErrorHandler_);
            OSSetErrorHandler(OS_EXCEPTION_ISI, (OSErrorHandler)ErrorHandler_);
            OSSetErrorHandler(OS_EXCEPTION_ALIGNMENT, (OSErrorHandler)ErrorHandler_);
            OSSetErrorHandler(OS_EXCEPTION_MEMORY_PROTECTION, (OSErrorHandler)ErrorHandler_);

            __OSFpscrEnableBits = 0;

            OSSetErrorHandler(OS_EXCEPTION_FLOATING_POINT_EXCEPTION, NULL);
        }

        void ErrorHandler_(u16 error, OSContext* context, u32 dsisr, u32 dar) {
            sException.MSR_COPY = PPCMfmsr();
            sException.FPCSR_COPY = context->fpscr;
            OSFillFPUContext(context);
            OSSetErrorHandler(error, NULL);
            if (error == 0xf) {
                OSProtectRange(0, 0, 0, 3);
                OSProtectRange(1, 0, 0, 3);
                OSProtectRange(2, 0, 0, 3);
                OSProtectRange(3, 0, 0, 3);
            }
            ExceptionCallbackParam param;

            param.error = error;
            param.context = context;
            param.dsisr = dsisr;
            param.dar = dar;

            OSSendMessage(&sException.queue, &param, 1);

            OSEnableScheduler();
            OSYieldThread();
            OSDisableScheduler();
        }

        static void DrawConsoleEndless_(ConsoleHandle console) {
            s32 lineCnt = Console_GetBufferHeadLine(console);
            while (true) {
                if (lineCnt >= Console_GetTotalLines(console)) {
                    lineCnt = console->ringTopLineCnt;
                }
                Console_SetViewBaseLine(sException.consoleHandle, lineCnt);
                Console_DrawDirect(console);

                WaitTime_(200);

                lineCnt++;
            }
        }

        void* RunThread_(void* work) {
            OSMessage message;

            u32 msr = PPCMfmsr();
            PPCMtmsr(msr & ~(MSR_FE0 | MSR_FE1));
            OSReceiveMessage(&sException.queue, &message, 1);
            OSDisableInterrupts();

            VISetPreRetraceCallback(NULL);
            VISetPostRetraceCallback(NULL);

            if (sException.consoleHandle != NULL) {
                VISetBlack(false);
                VIFlush();
            }

            {
                const ExceptionCallbackParam* param = (const ExceptionCallbackParam*)message;

                u16 error = param->error;
                OSContext* context = param->context;
                u32 dsisr = param->dsisr;
                u32 dar = param->dar;

                if (error < OS_EXCEPTION_MAX) {
                    sException.stackAddress = context->gpr[1];
                }
                if (sException.consoleHandle != NULL) {
                    sException.frameMemory = detail::DirectPrint_SetupFB(sException.exceptionRenderObj);
                }

                while (true) {
                    PrintContext_(error, context, dsisr, dar);
                    if (sException.consoleHandle != NULL && DirectPrint_IsActive()) {
                        Console_DrawDirect(sException.consoleHandle);
                    }

                    if (sException.exceptionCallback != NULL) {
                        u16 info = sException.exceptionDisplayInfo;
                        do {
                            if (!(sException.exceptionCallback)(sException.consoleHandle, sException.exceptionCallbackArgs)) {
                                return NULL;
                            }
                        } while (info == sException.exceptionDisplayInfo);
                    }
                    else if (sException.consoleHandle != NULL) {
                        DrawConsoleEndless_(sException.consoleHandle);
                    }
                    else {
                        return NULL;
                    }
                }
            }

            return NULL;
        }

        static void Exception_Printf_(const char *format, ...) {
            const GXRenderModeObj* obj = sException.exceptionRenderObj;

            va_list args;
            va_start(args, format);
            OSVReport(format, args);
            va_end(args);

            if (sException.consoleHandle != NULL) {
                void* frameBuf = VIGetCurrentFrameBuffer();
                DirectPrint_ChangeXfb(frameBuf, obj->fbWidth, obj->xfbHeight);

                va_list args;
                va_start(args, format);
                Console_VFPrintf(CONSOLE_OUTPUT_TERMINAL, sException.consoleHandle, format, args);
                va_end(args);
            }
        }

        static void ShowStackTrace_(u32 stackAddress);
        static void ShowMainInfo_(u16 error, OSContext* context, u32 dsisr, u32 dar);
        static void ShowGPR_(OSContext* context);
        static void ShowSRR0Map_(OSContext* context);
        static void ShowGPRMap_(OSContext* context);
        static void ShowFloat_(OSContext* context);
        static bool ShowMapInfoSubroutine_(u32 address, bool arg);

        static void PrintContext_(u16 error, OSContext* context, u32 dsisr, u32 dar) {
            if (error < OS_EXCEPTION_MAX) {
                Exception_Printf_("******** EXCEPTION OCCURRED! ********\nFrameMemory:%XH\n", sException.frameMemory);
            }
            else {
                Exception_Printf_("******** USER HALT ********\nFrameMemory:%XH\n", sException.frameMemory);
            }

            if (sException.exceptionDisplayInfo & 0x1) {
                Exception_Printf_("---MainInfo---\n");
                ShowMainInfo_(error, context, dsisr, dar);
            }

            if (sException.exceptionDisplayInfo & 0x2) {
                Exception_Printf_("---EXCEPTION_INFO_GPR---\n");
                ShowGPR_(context);
            }

            if (sException.exceptionDisplayInfo & 0x8) {
                Exception_Printf_("---EXCEPTION_INFO_SRR0MAP---\n");
                ShowSRR0Map_(context);
            }

            if (sException.exceptionDisplayInfo & 0x4) {
                Exception_Printf_("---EXCEPTION_INFO_GPRMAP---\n");
                ShowGPRMap_(context);
            }

            if (sException.exceptionDisplayInfo & 0x10) {
                Exception_Printf_("---EXCEPTION_INFO_FPR---\n");
                ShowFloat_(context);
                Exception_Printf_(" MSR:%08XH     FPSCR:%08XH\n", sException.MSR_COPY, sException.FPCSR_COPY);
            }

            if (sException.exceptionDisplayInfo & 0x20) {
                Exception_Printf_("---EXCEPTION_INFO_TRACE---\n");
                ShowStackTrace_(sException.stackAddress);
            }

            Exception_Printf_("--------------------------------\n");
        }

        static bool IsValidStackAddr_(u32 stackAddress) {
            if (stackAddress == 0 || stackAddress == 0xFFFFFFFF) {
                return false;
            }
            else if (OSIsMEM1Region(stackAddress)) {
                if ((stackAddress & 0x0fffffff) >= OSGetPhysicalMem1Size()) {
                    return false;
                }
            }
            else if (OSIsMEM2Region(stackAddress)) {
                if ((stackAddress & 0x0fffffff) >= OSGetPhysicalMem2Size()) {
                    return false;
                }
            }
            else {
                return false;
            }

            return true;
        }

        static void ShowStackTrace_(u32 stackAddress) {
            Exception_Printf_("-------------------------------- TRACE\n");
            Exception_Printf_("Address:   BackChain   LR save\n");

            u32 i;
            u32 *ptr = (u32 *)stackAddress;
            for (i = 0; i < 16; i++) {
                if (ptr == NULL || (u32)ptr == 0xffffffff) {
                    break;
                }
                Exception_Printf_("%08X:  %08X    %08X ", ptr, ptr[0], ptr[1]);

                if (!ShowMapInfoSubroutine_(ptr[1], true)) {
                    Exception_Printf_("\n");
                }
                ptr = (u32 *)*ptr;
            }
        }

        void ShowMainInfo_(u16 error, OSContext* context, u32 dsisr, u32 dar) {
            if (error < OS_EXCEPTION_MAX) {
                Exception_Printf_("CONTEXT:%08XH  (%s EXCEPTION)\n", context, CPU_EXP_NAME[error]);
            }
            else {
                Exception_Printf_("CONTEXT:%08XH\n", context);
            }

            if (error == OS_EXCEPTION_FLOATING_POINT_EXCEPTION) {
                u32 uVar1 = sException.FPCSR_COPY;
                uVar1 &= (((uVar1 & 0xf8) << 0x16) | 0x01f80700);
                if ((uVar1 & 0x20000000) != 0) {
                    Exception_Printf_(" FPE: Invalid operation\n");
                    if ((sException.FPCSR_COPY & 0x1000000) != 0) {
                        Exception_Printf_(" SNaN\n");
                    }
                    if ((sException.FPCSR_COPY & 0x800000) != 0) {
                        Exception_Printf_(" Infinity - Infinity\n");
                    }
                    if ((sException.FPCSR_COPY & 0x400000) != 0) {
                        Exception_Printf_(" Infinity / Infinity\n");
                    }
                    if ((sException.FPCSR_COPY & 0x200000) != 0) {
                        Exception_Printf_(" 0 / 0\n");
                    }
                    if ((sException.FPCSR_COPY & 0x100000) != 0) {
                        Exception_Printf_(" Infinity * 0\n");
                    }
                    if ((sException.FPCSR_COPY & 0x80000) != 0) {
                        Exception_Printf_(" Invalid compare\n");
                    }
                    if ((sException.FPCSR_COPY & 0x400) != 0) {
                        Exception_Printf_(" Software request\n");
                    }
                    if ((sException.FPCSR_COPY & 0x200) != 0) {
                        Exception_Printf_(" Invalid square root\n");
                    }
                    if ((sException.FPCSR_COPY & 0x100) != 0) {
                        Exception_Printf_(" Invalid integer convert\n");
                    }
                }
                if ((uVar1 & 0x10000000) != 0) {
                    Exception_Printf_(" FPE: Overflow\n");
                }
                if ((uVar1 & 0x8000000) != 0) {
                    Exception_Printf_(" FPE: Underflow\n");
                }
                if ((uVar1 & 0x4000000) != 0) {
                    Exception_Printf_(" FPE: Zero division\n");
                }
                if ((uVar1 & 0x2000000) != 0) {
                    Exception_Printf_(" FPE: Inexact result\n");
                }
            }
            Exception_Printf_("SRR0:   %08XH   SRR1:%08XH\n", context->srr0, context->srr1);
            Exception_Printf_("DSISR:  %08XH   DAR: %08XH\n", dsisr, dar);
        }

        void ShowGPR_(OSContext* context) {
            Exception_Printf_("-------------------------------- GPR\n");
            for (int i = 0; i < 10; i++) {
                Exception_Printf_("R%02d:%08XH  R%02d:%08XH  R%02d:%08XH\n", i, context->gpr[i], i + 11, context->gpr[i + 11], i + 22, context->gpr[i + 22]);
            }
            Exception_Printf_("R%02d:%08XH  R%02d:%08XH\n", 10, context->gpr[10], 21, context->gpr[21]);
        }

        void ShowGPRMap_(OSContext* context) {
            bool shownAny = false;
            Exception_Printf_("-------------------------------- GPRMAP\n");
            for (int i = 0; i < 31; i++) {
                u32 address = context->gpr[i];
                if (address < 0x80000000 || 0x82ffffff < address) {
                    continue;
                }
                shownAny = true;
                Exception_Printf_("R%02d: %08XH ", i, address);

                if (!ShowMapInfoSubroutine_(address, true)) {
                    Exception_Printf_(" no information\n");
                }
            }

            if (!shownAny) {
                Exception_Printf_("  no register which seem to address.\n");
            }
        }

        void ShowSRR0Map_(OSContext* context) {
            Exception_Printf_("-------------------------------- SRR0MAP\n");
            u32 address = context->srr0;
            if (!(address < 0x80000000 || 0x82ffffff < address)) {
                Exception_Printf_("SRR0: %08XH ", address);

                if (!ShowMapInfoSubroutine_(address, true)) {
                    Exception_Printf_(" no information\n");
                }
            }
        }

        static void ShowFloatSub_(s32 reg, f32 val);

        void ShowFloat_(OSContext* context) {
            Exception_Printf_("-------------------------------- FPR\n");
            for (int i = 0; i < 10; i++) {
                ShowFloatSub_(i, context->fpr[i]);
                Exception_Printf_(" ");
                ShowFloatSub_(i + 11, context->fpr[i + 11]);
                Exception_Printf_(" ");
                ShowFloatSub_(i + 22, context->fpr[i + 22]);
                Exception_Printf_("\n");
            }
            ShowFloatSub_(10, context->fpr[10]);
            Exception_Printf_(" ");
            ShowFloatSub_(21, context->fpr[21]);

            Exception_Printf_("\n");
        }

        void ShowFloatSub_(s32 reg, f32 val) {
            if (isnan(val)) {
                Exception_Printf_("F%02d: Nan      ", reg);
            }
            else {
                if (__fpclassifyf(val) == 2) {
                    if ((reinterpret_cast<u8&>(val) & 0x80) != 0) {
                        Exception_Printf_("F%02d:+Inf      ", reg);
                    }
                    else {
                        Exception_Printf_("F%02d:-Inf      ", reg);
                    }
                }
                else if (val == 0.0f) {
                    Exception_Printf_("F%02d: 0.0      ", reg);
                }
                else {
                    Exception_Printf_("F%02d:%+.3E", reg, val);
                }
            }
        }

        bool ShowMapInfoSubroutine_(u32 address, bool arg) {
            return false;
        }

        ConsoleHandle Exception_SetConsole(ConsoleHandle console, const GXRenderModeObj* renderMode) {
            ConsoleHandle old = sException.consoleHandle;
            sException.exceptionRenderObj = renderMode;
            sException.consoleHandle = console;
            return old;
        }

        void Exception_SetUserCallback(ExceptionUserCallback callback, void* args) {
            sException.exceptionCallback = callback;
            sException.exceptionCallbackArgs = args;
        }

        static void WaitTime_(s32 time) {
            OSTime t1 = OSGetTime();
            OSTime t2;
            do {
                t2 = OSGetTime();
            } while (OSTicksToMilliseconds(t2 - t1) < time);
        }
    }
}
