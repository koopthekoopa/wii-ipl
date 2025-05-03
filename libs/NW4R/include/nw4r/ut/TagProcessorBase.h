#ifndef NW4R_UT_TAG_PROCESSOR_BASE_H
#define NW4R_UT_TAG_PROCESSOR_BASE_H

#include <revolution/types.h>

#include <nw4r/ut/Rect.h>
#include <nw4r/ut/TextWriterBase.h>

namespace nw4r {
    namespace ut {
        typedef enum Operation {
            OPERATION_DEFAULT,
            OPERATION_NO_CHAR_SPACE,
            OPERATION_CHAR_SPACE,
            OPERATION_NEXT_LINE,
            OPERATION_END_DRAW,

            NUM_OF_OPERATION
        } Operation;

        template<typename T> struct PrintContext {
            TextWriterBase<T>*  writer;     // 0x00
            const T*            str;        // 0x04

            f32                 xOrigin;    // 0x08
            f32                 yOrigin;    // 0x0c

            u32                 flags;      // 0x10
        };

        template<typename T> class TagProcessorBase {
            public:
                TagProcessorBase();
                virtual ~TagProcessorBase();

                virtual Operation   Process(u16 code, PrintContext<T>* context);
                virtual Operation   CalcRect(Rect* pRect, u16 code, PrintContext<T>* context);

                void                ProcessLinefeed(PrintContext<T>* context);
                void                ProcessTab(PrintContext<T>* context);
        };
    }
}

#endif // NW4R_UT_TAG_PROCESSOR_BASE_H
