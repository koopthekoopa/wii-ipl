#ifndef IPL_SCENE_BOARD_H
#define IPL_SCENE_BOARD_H

#include "iplSceneHeader.h"

#include "utility/iplCalendar.h"

#include <revolution/nwc24.h>

namespace ipl {
    namespace scene {
        SCENE_CLASS(Board) {
            public:
                Board(EGG::Heap* heap, int);

                void                    updateDate(const utility::Date& date);

                void                    reopen_log();

                nand::LayoutFile*       getLayoutFile() const   { return mpLayoutFile; }
                const utility::Date&    getDate()               { return mCurrentDate; }

                int                     getPictureWidth() const;
                int                     getPictureHeight() const;
                const GXTexObj&         getPictureTexObj() const;

                const void*             getPicture(u32* picLength) const;

                enum {
                    FRIEND_CODE_ERR_SUCCESS = 0,
                    FRIEND_CODE_ERR_NWC24,
                    FRIEND_CODE_ERR_NULL,
                };
                int                     getFriendInfo(NWC24FriendInfo* info) const;

                BOOL                    isOptOut() const;

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
