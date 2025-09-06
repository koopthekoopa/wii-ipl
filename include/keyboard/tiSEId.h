#ifndef TEXTINPUT_SE_ID_H
#define TEXTINPUT_SE_ID_H

#include <revolution/types.h>

namespace textinput {
    namespace sound {
        typedef enum SE {
            SE_0 = 0,
            SE_1,
            SE_2,
            SE_LANGUAGE_SWITCHING,
            SE_SELECT,
            SE_CHAR_CURSOR,
            SE_CHAR_CURSOR_FIX,
            SE_CHAR_DELETE,
            SE_CHAR_DELETE_ERROR,
            SE_CHAR_DECIDE,
            SE_CHAR_INPUT,
            SE_LINE_SCROLL,
            SE_12,
            SE_KETAI_MODE_SWITCHING,
            SE_SYMBOL_PAGE_OPEN,
            SE_15,
            SE_PREDICT_ON,
            SE_PREDICT_OFF,
            SE_18,
            SE_LANGUAGE_PAGE_OPEN,
            SE_CHAR_LARGER,
            SE_CHAR_LOWER,
            SWITCH_TO_KEYBOARD,
            SWITCH_TO_KETAI,
            SE_BT_TARGETTING,
            SE_DECIDE,
            SE_MESSAGE_SCROLL,
            SE_OPEN,
            SE_APPEARED,
            SE_DISAPPEARD,
            SE_Last,
        } SE;
    }
}

#endif // TEXTINPUT_SE_ID_H
