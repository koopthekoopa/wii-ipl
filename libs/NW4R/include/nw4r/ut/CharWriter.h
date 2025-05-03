#ifndef NW4R_UT_CHAR_WRITER_H
#define NW4R_UT_CHAR_WRITER_H

#include <revolution/types.h>

#include <nw4r/ut/Font.h>
#include <nw4r/ut/Color.h>

#include <nw4r/math/types.h>

#include <revolution/gx/GXEnum.h>

namespace nw4r {
    namespace ut {
        class CharWriter {
            public:
                typedef enum GradationMode {
                    GRADMODE_NONE = 0,
                    GRADMODE_H,
                    GRADMODE_V,

                    NUM_OF_GRADMODE
                } GradationMode;

            private:
                typedef struct ColorMapping {
                    Color   min;    // 0x00
                    Color   max;    // 0x04
                } ColorMapping;

                typedef struct VertexColor {
                    Color   lu, ru; // 0x00
                    Color   ld, rd; // 0x08
                } VertexColor;

                typedef struct TextureFilter {
                    public:
                        bool operator !=(const TextureFilter &rhs) const { return atSmall != rhs.atSmall || atLarge != rhs.atLarge; }

                        GXTexFilter atSmall;    // 0x00
                        GXTexFilter atLarge;    // 0x04
                } TextureFilter;

                typedef struct TextColor {
                    Color           start;          // 0x00
                    Color           end;            // 0x04
                    GradationMode   gradationMode;  // 0x08
                } TextColor;

                typedef struct LoadingTexture {
                    public:
                        bool operator !=(const LoadingTexture &rhs) const {
                            return slot != rhs.slot || texture != rhs.texture || filter != rhs.filter;
                        }

                        void Reset() {
                            slot = GX_TEXMAP_NULL;
                            texture = NULL;
                        }

                        GXTexMapID      slot;       // 0x00
                        void*           texture;    // 0x04
                        TextureFilter   filter;     // 0x08
                } LoadingTexture;

            public:
                CharWriter();
                ~CharWriter();

                const Font* GetFont() const;

                f32         GetScaleH() const;
                f32         GetScaleV() const;

                f32         GetCursorX() const;
                f32         GetCursorY() const;

                void        SetFont(const Font &font);
                void        SetColorMapping(Color min, Color max);

                void        SetScale(f32 hScale, f32 vScale);
                void        SetScale(f32 scale);

                void        SetCursor(f32 x, f32 y);
                void        SetCursor(f32 x, f32 y, f32 z);
                void        SetCursorX(f32 x);
                void        SetCursorY(f32 y);

                f32         GetFontWidth() const;
                f32         GetFontHeight() const;
                f32         GetFontAscent() const;

                bool        IsWidthFixed() const;
                void        EnableFixedWidth(bool flag);

                f32         GetFixedWidth() const;
                void        SetFixedWidth(f32 width);

                void        SetGradationMode(GradationMode mode);

                void        SetTextColor(Color color);
                void        SetTextColor(Color start, Color end);
                Color       GetTextColor() const;

                void        SetFontSize(f32 width, f32 height);
                void        SetFontSize(f32 height);

                void        SetupGX();

                void        ResetColorMapping();
                void        ResetTextureCache();

                void        EnableLinearFilter(bool atSmall, bool atLarge);

                f32         Print(u16 code);

                void        MoveCursorX(f32 dx);
                void        MoveCursorY(f32 dy);

                void        PrintGlyph(f32 x, f32 y, f32 z, const Glyph &glyph);

                void        LoadTexture(const Glyph &glyph, GXTexMapID slot);

                void        UpdateVertexColor();

            private:
                static void SetupVertexFormat();

                static void SetupGXDefault();
                static void SetupGXWithColorMapping(Color min, Color max);
                static void SetupGXForI();
                static void SetupGXForRGBA();

                ColorMapping    mColorMapping;  // 0x00
                VertexColor     mVertexColor;   // 0x08
                TextColor       mTextColor;     // 0x18

                math::VEC2      mScale;         // 0x24
                math::VEC3      mCursorPos;     // 0x2C

                TextureFilter   mFilter;        // 0x38

                u8              padding_[2];    // 0x40
                u8              mAlpha;         // 0x42
                bool            mIsWidthFixed;  // 0x43
                f32             mFixedWidth;    // 0x44

                const Font*     mFont;          // 0x48

            private:
                static LoadingTexture mLoadingTexture;
        };
    }
}

#endif // NW4R_UT_CHAR_WRITER_H
