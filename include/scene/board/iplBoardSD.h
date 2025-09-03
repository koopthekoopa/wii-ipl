#ifndef IPL_SCENE_BOARD_SD_H
#define IPL_SCENE_BOARD_SD_H

#include <revolution/types.h>

namespace ipl {
    namespace scene {
        class BoardSD {
            public:
                BoardSD();
                void    update();

                u32     getUnk_0x04()   { return unk_0x04; }

            private:
                enum {
                    STATE_PREPARE = 0,
                    STATE_PREPARE_RESULT,
                    STATE_CLEANUP,
                    STATE_CLEANUP_RESULT,
                };

                void    error_handling(int code);

                u32     mState;     // 0x00
                u32     unk_0x04;
        };
    }
}

#endif // IPL_SCENE_BOARD_SD_H
