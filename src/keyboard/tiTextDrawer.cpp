#include "keyboard/tiTextDrawer.h"

#include "keyboard/tiUtil.h"

#include <nw4r/lyt/drawInfo.h>
#include <nw4r/math/types.h>
#include <nw4r/ut/Color.h>

#include <stddef.h>

namespace textinput {
    namespace textdrawer {
#define MIN_CHAR L' '
#define MAX_CHAR L'ſ'

        s32 snWidthTable[MAX_CHAR - MIN_CHAR + 1];

        static void clearSnWidthtable() {
            for (int i = 0; i < ARRAY_LENGTH(snWidthTable); i += 4) {
                snWidthTable[i + 0] = -1;
                snWidthTable[i + 1] = -1;
                snWidthTable[i + 2] = -1;
                snWidthTable[i + 3] = -1;
            }
        }

        void Base::create(MEMAllocator* allocator) {
            clearSnWidthtable();
            mfViWidth = 640.0f;
        }

        void Base::setAspectRatio(bool aspect4x3) {
            mbAspect4x3 = aspect4x3;
            if (aspect4x3) {
                util::getProjectionRect4x3(&mProjectionRect);
            } else {
                util::getProjectionRect16x9(&mProjectionRect);
            }
        }

        void Base::setDrawString(const wchar_t* wcString, u32 startPos, u32 endPos) {
            mpDrawString = wcString;
            mStartPos = startPos;
            mEndPos = endPos;
        }

        void Base::modifyCursorCache(s32 a, u32 b, f32 c, f32 d, f32 e, f32 f) {
            unk_0x0F4 = a;
            unk_0x0F8 = b;
            unk_0x0FC = c;
            unk_0x100 = d - mfScrollOffsetY;
            unk_0x0E8 = e;
            unk_0x0EC = f - mfScrollOffsetY;
            mbCursorCacheValid = true;
        }

        void Base::setDrawModifyScopeLine(s32 start, s32 end) {
            mDrawModifyStartLine = start;
            mDrawModifyEndLine = end;
        }
        void Base::setDrawCacheScopeLine(s32 startLine, s32 endLine) {
            if (startLine < 0)
                startLine = 0;

            if (mDrawCacheStartLine != startLine)
                dirtyDrawCache();

            mDrawCacheStartLine = startLine;
            mDrawCacheEndLine = endLine;
        }

        void Base::procCursor(CursorPos* cursorPos, s32 _) {
            GetCursorX();
            GetCursorY();

            if (!onCursor(cursorPos)) {
                cursorPos->fCursorX = GetCursorX();
                cursorPos->fCursorY = GetCursorY();
            }
        }

        void Base::makeUpCursorPos(CursorPos* cursorPos, u32 pos, s32 startLine, s32 endLine) {
            if (mpDrawString == NULL)
                return;

            const wchar_t* drawStr = mpDrawString;
            const wchar_t* curr = drawStr + pos;

            f32 cursorY = GetCursorY();
            while (*curr != L'\0') {
                DrawInfo drawInfo;
                drawInfo.ch = *curr;
                calcRect(drawInfo);
                doBeforeDrawProcess(drawStr, pos, drawInfo);
                if (cursorPos != 0 && cursorPos->uCursorPos == pos) {
                    procCursor(cursorPos, startLine + (cursorY != GetCursorY()));
                }
                if (*curr == L'\n') {
                    doLineFeed();
                    break;
                }

                MoveCursorX(drawInfo.rect.GetWidth() * getScale().x);
                doAfterDrawProcess(drawStr, pos, drawInfo);

                if (cursorY != GetCursorY())
                    startLine++;

                cursorY = GetCursorY();
                curr++;
                pos++;
            }
            if (cursorPos != NULL && *curr == L'\0' && cursorPos->uCursorPos == pos) {
                procCursor(cursorPos, startLine);
            }
        }

        void Base::put(wchar_t ch) {
            if (!mbSecretMode) {
                Print(ch);
            } else {
                Print(L'*');
            }
        }

        void Base::draw(CursorPos* cursorPos) {
            const wchar_t* curr = mpDrawString;
            if (GetFont() == NULL)
                return;

            u32 startPos = mStartPos;
            u32 endPos = mEndPos;

            mCurrPos = mDrawCacheStartPos = mStartPos;
            preDraw(mCurrPos);

            curr += startPos;

            SetFontSize(mFontW * getScale().x, mFontH * getScale().y);
            SetupGX();
            while (*curr != L'\0' && mCurrPos < endPos) {
                DrawInfo drawInfo;
                drawInfo.ch = *curr;
                calcRect(drawInfo);
                doBeforeDrawProcess(mpDrawString, mCurrPos, drawInfo);

                if (cursorPos != NULL && cursorPos->uCursorPos == mCurrPos) {
                    procCursor(cursorPos, 0);
                }
                if (*curr == L'\n') {
                    nw4r::ut::Color origColor = GetTextColor();
                    SetTextColor(nw4r::ut::Color(0xC8, 0xC8, 0xC8, origColor.a));
                    Print(0xE056);

                    SetTextColor(origColor);
                    doLineFeed();
                } else if (*curr != L'\xffff') {
                    put(*curr);
                    MoveCursorX(mTracking * getScale().x);
                }

                doAfterDrawProcess(mpDrawString, mCurrPos, drawInfo);
                curr++;
                mCurrPos++;
            }
            if (cursorPos != NULL && cursorPos->uCursorPos == mCurrPos) {
                procCursor(cursorPos, 0);
            }
            finishDraw(mCurrPos);
        }

        f32 Base::getLineHeight() {
            if (getScale().y == 0.0f) {
                return 1.0f;
            } else {
                f32 scaledValue = (mFontH + mLineLeading) * getScale().y;
                return scaledValue >= 1.0f ? scaledValue : 1.0f;
            }
        }

        void Base::setFont(const nw4r::ut::Font& font) {
            SetFont(font);
            clearSnWidthtable();

            for (wchar_t currCh = MIN_CHAR; currCh <= MAX_CHAR; currCh++) {
                DrawInfo drawInfo;
                drawInfo.ch = currCh;
                calcRect(drawInfo);

                snWidthTable[currCh - MIN_CHAR] = drawInfo.rect.GetWidth();
            }
        }

        void Base::calcRect(DrawInfo& drawInfo) {
            wchar_t ch = drawInfo.ch;
            drawInfo.rect.left = 0.0f;
            drawInfo.rect.right = 0.0f;
            drawInfo.rect.top = 0.0f;
            drawInfo.rect.bottom = getLineHeight();

            f32 totalWidth = 0.0f;
            totalWidth += mTracking;
            if (IsWidthFixed()) {
                totalWidth += GetFixedWidth();
            } else {
                f32 xScale = getScale().x;
                if (xScale == 0.0f) {
                    xScale = 0.0001f;
                }
                f32 hScale = nw4r::ut::CharWriter::GetScaleH();
                s32 baseWidth = GetFont()->GetCharWidth(ch);

                totalWidth += baseWidth * hScale / xScale;
            }

            drawInfo.rect.right = drawInfo.rect.right < totalWidth ? totalWidth : drawInfo.rect.right;
        }

        f32 Base::getWidth(const wchar_t* sz) {
            DrawInfo drawInfo;
            f32 currWidth = 0.0f;

            while (*sz != L'\0') {
                drawInfo.ch = *sz;
                calcRect(drawInfo);
                sz++;
                currWidth += drawInfo.rect.GetWidth();
            }

            return currWidth;
        }

        static const f32 WIDTH_OFFSET = 100.0f;
        static const f32 HALFWIDTH_OFFSET = WIDTH_OFFSET / 2.0f;
        void Base::beginDraw(const nw4r::ut::Rect& rect) {
            mCurrPos = 0;
            GXGetViewportv(&mSavedVp.xOrig);
            GXGetProjectionv(mSavedProjV);

            // Set projection
            {
                Mtx44 projMtx;

                C_MTXOrtho(projMtx, 0.0f, rect.top - rect.bottom, -HALFWIDTH_OFFSET, HALFWIDTH_OFFSET + (rect.right - rect.left), -1.0f, 1.0f);
                GXSetProjection(projMtx, GX_ORTHOGRAPHIC);
            }

            // Set viewport and scissor
            {
                const f32 xOrig = getViewportXOrig(rect);
                const f32 yOrig = getViewportYOrig(rect);
                const f32 wd = getViewportWidth(rect);
                const f32 ht = getViewportHeight(rect);

                ViewPort vp = {xOrig, yOrig, wd, ht, mSavedVp.nearZ, mSavedVp.farZ};
                GXSetViewport(vp.xOrig, vp.yOrig, vp.wd, vp.ht, vp.nearZ, vp.farZ);

                u32 scissorLeft = vp.xOrig;
                u32 scissorTop = vp.yOrig;
                u32 scissorWd = vp.wd;
                if (scissorWd >= 1500)
                    scissorWd = 1500;
                u32 scissorHt = vp.ht;
                if (scissorHt >= 1500)
                    scissorHt = 1500;
                GXSetScissor(scissorLeft, scissorTop, scissorWd, scissorHt);
            }

            // Set position matrix
            {
                Mtx mtx;
                PSMTXIdentity(mtx);
                GXLoadPosMtxImm(mtx, 0);
            }

            mCursorOffsetY = GetCursorY();
            mLine = 0;
        }

        f32 Base::getViewportXOrig(const nw4r::ut::Rect& rect) const {
            const f32 projW = mProjectionRect.right - mProjectionRect.left;
            const f32 projScaleX = mfViWidth / projW;

            const f32 projCenterX = rect.left + projW / 2.0f - HALFWIDTH_OFFSET;
            return projCenterX + projCenterX * (projScaleX - 1.0f);
        }
        f32 Base::getViewportYOrig(const nw4r::ut::Rect& rect) const {
            const f32 projScaleY = 1.0f;

            const f32 projCenterY = rect.bottom + (mProjectionRect.bottom - mProjectionRect.top) / 2.0f;
            return projCenterY + projCenterY * (projScaleY - 1.0f);
        }
        f32 Base::getViewportWidth(const nw4r::ut::Rect& rect) const {
            const f32 projW = mProjectionRect.right - mProjectionRect.left;
            const f32 projScaleX = mfViWidth / projW;

            return ((rect.right - rect.left) + WIDTH_OFFSET) * projScaleX;
        }
        f32 Base::getViewportHeight(const nw4r::ut::Rect& rect) const {
            const f32 projScaleY = 1.0f;

            return (rect.top - rect.bottom) * projScaleY;
        }

        void Base::endDraw() {
            // Restore viewport & scissor
            {
                GXSetViewport(mSavedVp.xOrig, mSavedVp.yOrig, mSavedVp.wd, mSavedVp.ht, mSavedVp.nearZ, mSavedVp.farZ);
                GXSetScissor(mSavedVp.xOrig, mSavedVp.yOrig, mSavedVp.wd, mSavedVp.ht);
            }

            // @bug Should restore the projection values (I think)
            {
                // GXSetProjectionv(mSavedProjV);
            }

            mCursorX = GetCursorX();
            mCursorOffsetY = mCursorOffsetY - GetCursorY() + getLineHeight();
        }
    }  // namespace textdrawer
}  // namespace textinput
