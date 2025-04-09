#ifndef NW4R_LYT_TEXTBOX_H
#define NW4R_LYT_TEXTBOX_H

#include <nw4r/lyt/pane.h>

#include <nw4r/db/assert.h>

namespace nw4r {
    namespace lyt {
        class TextBox : public Pane {
            public:
                NW4R_UT_RUNTIME_TYPEINFO;
                
                TextBox();

                virtual ~TextBox();

                virtual void    AllocStringBuffer(u16 size);                            // 0x64
                virtual void    FreeStringBuffer();                                     // 0x68

                virtual u16     SetString(const wchar_t* str, u16 dstIdx = 0);          // 0x6C
                virtual u16     SetString(const wchar_t* str, u16 dstIdx, u16 strLen);  // 0x70
                
                ut::Color GetTextColor(s32 i) const {
                    NW4R_ASSERT(i < TEXT_COLOR_MAX);
                    return mTextColor[i];
                }
                void SetTextColor(s32 i, ut::Color color) {
                    NW4R_ASSERT(i < TEXT_COLOR_MAX);
                    mTextColor[i] = color;
                }

                void SetFontSize(const Size& fontSize) {
                    mFontSize = fontSize;
                }

                ut::Rect    GetTextDrawRect(const DrawInfo& drawInfo) const;

            private:
                wchar_t*    mTextBuf;                   // 0xD8
                ut::Color   mTextColor[TEXT_COLOR_MAX]; // 0xDC

                ut::Font*   mpFont;                     // 0xE4
                Size        mFontSize;                  // 0xE8
        };
    }
}

#endif // NW4R_LYT_TEXTBOX_H
