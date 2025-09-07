#ifndef TEXTINPUT_TEXT_DRAWER_H
#define TEXTINPUT_TEXT_DRAWER_H

#include <revolution/types.h>
#include <revolution/mem/allocator.h>

#include <nw4r/ut/CharWriter.h>
#include <nw4r/ut/Rect.h>

namespace textinput {
    namespace textdrawer {
        class Base : nw4r::ut::CharWriter {
            public:
                typedef struct ViewPort {
                    f32 xOrig;  // 0x00
                    f32 yOrig;  // 0x04
                    f32 wd;     // 0x08
                    f32 ht;     // 0x0C
                    f32 nearZ;  // 0x10
                    f32 farZ;   // 0x14
                } ViewPort;

                typedef struct CursorPos {
                    u32 uCursorPos; // 0x00
                    f32 fCursorX;   // 0x04
                    f32 fCursorY;   // 0x08
                } CursorPos;

                typedef struct DrawInfo {
                    u8  unk_0x00[32];
                } DrawInfo;

                virtual void                create(MEMAllocator* allocator);
                virtual void                draw(CursorPos* cursorPos);
                virtual void                draw();

                virtual void                setDrawString(const wchar_t* wcString, u32 startPos, u32 endPos);

                virtual void                setAspectRatio(bool aspect4x3);
                virtual void                setVIWidth(float fVIWidth);

                virtual void                beginDraw(const nw4r::ut::Rect& rect);
                virtual void                endDraw();

                virtual f32                 getLineHeight();

                virtual void                setFont(const nw4r::ut::Font& font);

                virtual f32                 getWidth(const wchar_t* sz);
                virtual int                 getLine();

                virtual nw4r::math::VEC2    getScale() const = 0;

                virtual void                setSecretModeOn(bool secretMode)    { mbSecretMode = secretMode; }

                virtual void                doBeforeDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo);
                virtual void                doAfterDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo);
                virtual void                preDraw(u32);
                virtual void                finishDraw(u32);

                virtual void                doLineFeed();

                virtual void                put(wchar_t wc);
                virtual void                procCursor(CursorPos* cursorPos, s32 presentLine);
                virtual bool                onCursor(CursorPos* cursorPos);

                virtual void                makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine);
                virtual void                drawCursor(f32 x, f32 y);

                virtual void                calcRect(DrawInfo& drawInfo);

                virtual u32                 getStartPos() const;
                virtual u32                 getEndPos() const;

            private:
                u8      unk_0x50[0x78];
                bool    mbSecretMode;   // 0xC8
                u8      unk_0xCC[0x3C];
        };
    }
}

#endif // TEXTINPUT_TEXT_DRAWER_H
