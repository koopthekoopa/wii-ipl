#ifndef EGG_CORE_GRAPHICS_FIFO_H
#define EGG_CORE_GRAPHICS_FIFO_H

#include <egg/core/eggHeap.h>

#include <revolution/gx/GXFifo.h>
#include <revolution/gx/GXStruct.h>

namespace EGG {
    class GraphicsFifo {
        public:
            typedef struct GpStatus {
                GXBool  overhi;     // 0x00
                GXBool  underlow;   // 0x01
                GXBool  readIdle;   // 0x02
                GXBool  cmdIdle;    // 0x03
                GXBool  brkpt;      // 0x04
            } GpStatus;

        public:
            static GraphicsFifo* create(u32 size, Heap* pHeap);

            GraphicsFifo(u32 size, Heap* pHeap);
            virtual ~GraphicsFifo(); // at 0x8

            static bool isGPActive() {
                return !getGpStatus().readIdle;
            }

            static const GpStatus& getGpStatus() {
                GXGetGPStatus(&sGpStatus.overhi, &sGpStatus.underlow,
                            &sGpStatus.readIdle, &sGpStatus.cmdIdle,
                            &sGpStatus.brkpt);

                return sGpStatus;
            }

        private:
            GXFifoObj*  mpFifoObj;  // 0x04
            void*       mpBuffer;   // 0x08
            u32         mBufSize;   // 0x0C

            static GraphicsFifo*    sGraphicsFifo;
            static GpStatus         sGpStatus;
    };
}

#endif // EGG_CORE_GRAPHICS_FIFO_H
