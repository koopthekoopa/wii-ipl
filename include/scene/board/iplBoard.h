#ifndef IPL_SCENE_BOARD_H
#define IPL_SCENE_BOARD_H

#include "iplSceneHeader.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Board) {
            public:
                Board(EGG::Heap* heap);

                nand::LayoutFile*   getLayoutFile() const { return mpLayoutFile; }

            private:
                u8                  unk_0x54[0xCCC];
                nand::LayoutFile*   mpLayoutFile;
                u8                  unk_0xD24[0x29C];
        };
    }
}

#endif // IPL_SCENE_BOARD_H
