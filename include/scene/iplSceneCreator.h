#ifndef IPL_SCENE_CREATOR_H
#define IPL_SCENE_CREATOR_H

#include <revolution/types.h>

#include <egg/core.h>

namespace ipl {
    namespace scene {
        enum {
            SCENE_NONE = 0,             /* 0x00, 0 */
            SCENE_ROOT,                 /* 0x01, 1 */
            SCENE_CHANNEL_SELECT,       /* 0x02, 2 */
            SCENE_CHANNEL_TITLE,        /* 0x03, 3 */
            SCENE_BOARD,                /* 0x04, 4 */
            SCENE_BUTTON,               /* 0x05, 5 */
            SCENE_ARROW,                /* 0x06, 6 */
            SCENE_CALENDAR,             /* 0x07, 7 */
            SCENE_MAIL_ADDRESS_SELECT,  /* 0x08, 8 */
            SCENE_UNUSED_9,             /* 0x09 */
            SCENE_TEXT_WRITER,          /* 0x0A, 10 */
            SCENE_LETTER_WRITER,        /* 0x0B, 11 */
            SCENE_CHANNEL_EDIT,         /* 0x0C, 12 */
            SCENE_MEMORY,               /* 0x0D, 13 */
            SCENE_MEMORY_CARD,          /* 0x0E, 14 */
            SCENE_UNUSED_15,            /* 0x0F */
            SCENE_UNUSED_16,            /* 0x10 */
            SCENE_UNUSED_17,            /* 0x11 */
            SCENE_SETTING,              /* 0x12, 18 */
            SCENE_SETTING_SELECT,       /* 0x13, 19 */
            SCENE_ADDRESS,              /* 0x14, 20 */
            SCENE_SETTING_BG,           /* 0x15, 21 */
            SCENE_SETTING_BUTTON,       /* 0x16, 22 */
            SCENE_ADDRESS_EDIT,         /* 0x17, 23 */
            SCENE_ADDRESS_ADD_SELECT,   /* 0x18, 24 */
            SCENE_NAKAMURA_TEST,        /* 0x19, 25 */
            SCENE_HEALTH,               /* 0x1A, 26 */
            SCENE_PARENTAL_DIALOG,      /* 0x1B, 27 */
            SCENE_FACE_SELECT,          /* 0x1C, 28 */
            SCENE_KITAYAMA_TEST,        /* 0x1D, 29 */
            SCENE_BACK_MENU,            /* 0x1E, 30 */
            SCENE_LIMIT_OVER,           /* 0x1F, 31 */
            SCENE_REBOOT,               /* 0x20, 32 */
            SCENE_UNUSED_33,            /* 0x21 */
            SCENE_SD_CHANNEL_SELECT,    /* 0x22, 34 */
            SCENE_SD_CHANNEL_TITLE,     /* 0x23, 35 */
            SCENE_SD_BUTTON,            /* 0x24, 36 */
            SCENE_SD_ARROW,             /* 0x25, 37 */
        };

        enum {
            SCENE_SMALL_SIZE    = 0x0000DC00,
            SCENE_MEDIUM_SIZE   = 0x000AF000,
            SCENE_BIG_SIZE      = 0x0012C000,
        };
        
        class Base;
        typedef Base SceneObj;
        class Creator {
            public:
                static SceneObj*    create(int sceneId, EGG::Heap* heap, void* arg);
                static int          size(int sceneId);
        };
    }
}

#endif // IPL_SCENE_CREATOR_H
