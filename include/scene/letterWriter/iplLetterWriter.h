#ifndef IPL_SCENE_LETTER_WRITER_H
#define IPL_SCENE_LETTER_WRITER_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        FADER_SCENE_CLASS(LetterWriter) {
            public:
                LetterWriter(EGG::Heap* heap, int);

            private:
                u8  unk_0x58[0x1A8];
        };
    }
}

#endif // IPL_SCENE_LETTER_WRITER_H
