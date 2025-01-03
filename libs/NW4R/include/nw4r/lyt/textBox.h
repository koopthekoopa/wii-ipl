#ifndef NW4R_LYT_TEXTBOX_H
#define NW4R_LYT_TEXTBOX_H

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

                virtual void    AllocStringBuffer(u16 size);                    // 0x64
                virtual void    FreeStringBuffer(u16);                          // 0x68

                virtual u16     SetString(const wchar_t* str, u16 dstIdx = 0);  // 0x6C
                
                ut::Color       GetTextColor(u32 i) const {
                    NW4R_ASSERT(i < TEXT_COLOR_MAX);
                    return mTextColor[i];
                }
                
                void            SetTextColor(u32 i, ut::Color color) {
                    NW4R_ASSERT(i < TEXT_COLOR_MAX);
                    mTextColor[i] = color;
                }
            private:
                wchar_t*    mTextBuf;                   // 0xD8
                ut::Color   mTextColor[TEXT_COLOR_MAX]; // 0xDC
        };
    }
}

#endif // NW4R_LYT_TEXTBOX_H


