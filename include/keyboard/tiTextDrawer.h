#ifndef TEXTINPUT_TEXT_DRAWER_H
#define TEXTINPUT_TEXT_DRAWER_H

#include <revolution/mem/allocator.h>
#include <revolution/types.h>

#include <nw4r/ut/CharWriter.h>
#include <nw4r/ut/Rect.h>

namespace textinput {
    namespace textdrawer {
        class Base : nw4r::ut::CharWriter {
        public:
            struct ViewPort {
                f32 xOrig;  // 0x00
                f32 yOrig;  // 0x04
                f32 wd;     // 0x08
                f32 ht;     // 0x0C
                f32 nearZ;  // 0x10
                f32 farZ;   // 0x14
            };

            struct CursorPos {
                u32 uCursorPos;  // 0x00
                f32 fCursorX;    // 0x04
                f32 fCursorY;    // 0x08
            };

            struct DrawInfo {
                nw4r::ut::Rect rect;  // 0x00
                wchar_t ch;           // 0x10
            };

            virtual void create(MEMAllocator* allocator);  // 0x08
            virtual void draw(CursorPos* cursorPos);       // 0x0C
            virtual void draw() {}                         // 0x10

            virtual void setDrawString(const wchar_t* wcString, u32 startPos, u32 endPos);  // 0x14

            virtual void setAspectRatio(bool aspect4x3);                     // 0x18
            virtual void setVIWidth(f32 fVIWidth) { mfViWidth = fVIWidth; }  // 0x1C

            virtual void beginDraw(const nw4r::ut::Rect& rect);  // 0x20
            virtual void endDraw();                              // 0x24

            virtual f32 getLineHeight();  // 0x28

            virtual void setFont(const nw4r::ut::Font& font);  // 0x2C

            virtual f32 getWidth(const wchar_t* sz);     // 0x30
            virtual u32 getLine() { return mLine + 1; }  // 0x34

            virtual nw4r::math::VEC2 getScale() const = 0;  // 0x38

            virtual void setSecretModeOn(bool secretMode) { mbSecretMode = secretMode; }  // 0x3C

            virtual void doBeforeDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo) {}  // 0x40
            virtual void doAfterDrawProcess(const wchar_t*, u32, const DrawInfo& drawInfo) {}   // 0x44
            virtual void preDraw(u32 pos) {}                                                    // 0x48
            virtual void finishDraw(u32 pos) {}                                                 // 0x4C

            virtual void doLineFeed() { mLine++; }  // 0x50

            virtual void put(wchar_t wc);                                  // 0x54
            virtual void procCursor(CursorPos* cursorPos, s32);            // 0x58
            virtual bool onCursor(CursorPos* cursorPos) { return false; }  // 0x5C

            virtual void makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine);  // 0x60
            virtual void drawCursor(f32 x, f32 y) {}                                                  // 0x64

            virtual void calcRect(DrawInfo& drawInfo);  // 0x68

            virtual u32 getStartPos() const { return mStartPos; }  // 0x6C
            virtual u32 getEndPos() const { return mEndPos; }      // 0x70

            virtual void setDrawModifyScopeLine(s32 startLine, s32 endLine);                                         // 0x74
            virtual void setDrawCacheScopeLine(s32 startLine, s32 endLine);                                          // 0x78
            virtual void modifyCursorCache(s32, u32, f32, f32, f32, f32);                                            // 0x7C
            virtual bool isEnableCursorCache() const { return mbCursorCacheValid; }                                  // 0x80
            virtual u32 getDrawModifyStartLine() const { return mDrawModifyStartLine; }                              // 0x84
            virtual u32 getDrawModifyEndLine() const { return mDrawModifyEndLine; }                                  // 0x88
            virtual s32 getDrawCacheStartPos() const { return mbDrawCacheValid ? mDrawCacheStartPos : 0x7FFFFFFF; }  // 0x8C
            virtual void dirtyDrawCache() { mbDrawCacheValid = false; }                                              // 0x90
            virtual void dirtyCursorCache() { mbCursorCacheValid = false; }                                          // 0x94

        private:
            f32 getViewportXOrig(const nw4r::ut::Rect&) const;
            f32 getViewportYOrig(const nw4r::ut::Rect&) const;
            f32 getViewportWidth(const nw4r::ut::Rect&) const;
            f32 getViewportHeight(const nw4r::ut::Rect&) const;

            const wchar_t* mpDrawString;     // 0x050
            ViewPort mSavedVp;               // 0x054
            f32 mSavedProjV[7];              // 0x06C
            nw4r::ut::Rect mProjectionRect;  // 0x088
            f32 mfViWidth;                   // 0x098
            bool mbAspect4x3;                // 0x09C
            u32 mLine;                       // 0x0A0
            f32 mLineLeading;                // 0x0A4
            f32 mTracking;                   // 0x0A8
            f32 mFontW;                      // 0x0AC
            f32 mFontH;                      // 0x0B0
            f32 mCursorX;                    // 0x0B4
            f32 mCursorOffsetY;              // 0x0B8
            u32 mStartPos;                   // 0x0Bc
            u32 mEndPos;                     // 0x0C0
            u32 mCurrPos;                    // 0x0C4
            bool mbSecretMode;               // 0x0C8
            s32 mDrawModifyStartLine;        // 0x0CC
            s32 mDrawModifyEndLine;          // 0x0D0
            s32 mDrawCacheStartLine;         // 0x0D4
            s32 mDrawCacheEndLine;           // 0x0D8
            u32 mDrawCacheStartPos;          // 0x0DC
            undefined4 __unused_0x0E0;       // 0x0E0
            bool mbDrawCacheValid;           // 0x0E4
            f32 unk_0x0E8;                   // 0x0E8
            f32 unk_0x0EC;                   // 0x0EC
            f32 unk_0x0F0;                   // 0x0F0
            s32 unk_0x0F4;                   // 0x0F4
            u32 unk_0x0F8;                   // 0x0F8
            f32 unk_0x0FC;                   // 0x0FC
            f32 unk_0x100;                   // 0x100
            bool mbCursorCacheValid;         // 0x104
        };
    }  // namespace textdrawer
}  // namespace textinput

#endif  // TEXTINPUT_TEXT_DRAWER_H
