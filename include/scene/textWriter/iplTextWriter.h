#ifndef IPL_SCENE_TEXT_WRITER_H
#define IPL_SCENE_TEXT_WRITER_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(TextWriter) {
            public:
                TextWriter(EGG::Heap* heap);

            private:
                u8  unk_0x58[0x48];
        };
    }
}

#endif // IPL_SCENE_TEXT_WRITER_H
