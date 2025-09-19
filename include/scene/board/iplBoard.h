#ifndef IPL_SCENE_BOARD_H
#define IPL_SCENE_BOARD_H

#include "iplSceneHeader.h"

#include "utility/iplCalendar.h"

namespace ipl {
    namespace scene {
        SCENE_CLASS(Board) {
            public:
                Board(EGG::Heap* heap, int);

                void                    updateDate(const utility::Date& date);

                nand::LayoutFile*       getLayoutFile() const   { return mpLayoutFile; }
                const utility::Date&    getDate()               { return mCurrentDate; }

            public:
                u8                  unk_0x54[0xCB4];
                utility::Date       mCurrentDate;   // 0xD08
                u8                  unk_0xD14[0x0C];
                nand::LayoutFile*   mpLayoutFile;   // 0xD20
                u8                  unk_0xD24[0x29C];
        };
    }
}

#endif // IPL_SCENE_BOARD_H
