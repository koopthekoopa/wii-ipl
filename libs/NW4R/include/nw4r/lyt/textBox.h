#ifndef NW4R_LAYOUT_TEXTBOX_H
#define NW4R_LAYOUT_TEXTBOX_H

#include <nw4r/lyt/pane.h>

#include <nw4r/ut/Color.h>

namespace nw4r {
    namespace lyt {
        class TextBox : public Pane {
            public:
                TextBox();

                virtual ~TextBox();

                virtual void    AllocStringBuffer(u16 size);                // 0x64
                virtual void    FreeStringBuffer(u16);                      // 0x68

                virtual u16     SetString(const wchar_t* str, u16 unk = 0); // 0x6C
        };
    }
}

#endif // NW4R_LAYOUT_PANE_H


