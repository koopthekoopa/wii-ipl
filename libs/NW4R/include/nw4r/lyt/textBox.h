#ifndef NW4R_LAYOUT_TEXTBOX_H
#define NW4R_LAYOUT_TEXTBOX_H

#include <nw4r/lyt/pane.h>
#include <nw4r/lyt/types.h>

#include <nw4r/db/assert.h>

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
                
                ut::Color       GetTextColor(u32 i) const {
                    NW4R_IPL_ASSERT(i < TEXT_COLOR_MAX);
                    return mTextColor[i];
                }
                
                void            SetTextColor(u32 i, ut::Color color) {
                    NW4R_IPL_ASSERT(i < TEXT_COLOR_MAX);
                    mTextColor[i] = color;
                }
            private:
                undefined4  unk;                        // 0xD4
                ut::Color   mTextColor[TEXT_COLOR_MAX]; // 0xD8
        };
    }
}

#endif // NW4R_LAYOUT_PANE_H


