#ifndef NW4R_UT_COLOR_H
#define NW4R_UT_COLOR_H

#include <revolution/types.h>
#include <revolution/gx.h>

namespace nw4r {
    namespace ut {
        typedef struct Color : public GXColor {
            static const u32 RED   = 0xFF0000FF;
            static const u32 GREEN = 0x00FF00FF;
            static const u32 BLUE  = 0x0000FFFF;

            static const u32 CYAN    = 0x00FFFFFF;
            static const u32 MAGENTA = 0xFF00FFFF;
            static const u32 YELLOW  = 0xFFFF00FF;

            static const u32 BLACK = 0x000000FF;
            static const u32 GRAY  = 0x808080FF;
            static const u32 WHITE = 0xFFFFFFFF;

            Color() {
                operator=(WHITE);
            }
            Color(u32 color) {
                operator=(color);
            }
            Color(const GXColor &color) {
                operator=(color);
            }
            Color(const Color &color) {
                operator=(color);
            }
            Color(int red, int green, int blue, int alpha) {
                Set(red, green, blue, alpha);
            }
            ~Color() {}

             void Set(int red, int green, int blue, int alpha) {
                r = static_cast<u8>(red);
                g = static_cast<u8>(green);
                b = static_cast<u8>(blue);
                a = static_cast<u8>(alpha);
            }

            Color& operator=(const GXColor &color) {
                return operator=(*reinterpret_cast<const u32*>(&color));
            }

            operator GXColorS10() const {
                GXColorS10 color10 = { r, g, b, a };
                return color10;
            }

            Color& operator=(u32 color) {
                ToU32ref() = color;
                return *this;
            }

            operator u32() const {
                return ToU32ref();
            }
        protected:
            u32& ToU32ref() {
                return *reinterpret_cast<u32*>(this);
            }
            const u32& ToU32ref() const {
                return *reinterpret_cast<const u32*>(this);
            }
        };
    }
}

#endif // NW4R_UT_COLOR_H


