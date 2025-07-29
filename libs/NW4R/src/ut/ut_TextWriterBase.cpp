#include <nw4r/ut/TextWriterBase.h>
#include <nw4r/ut/inlines.h>

namespace nw4r {
    namespace ut {
        template<typename T> u32 TextWriterBase<T>::mFormatBufferSize = 0x100;
        template<typename T> T* TextWriterBase<T>::mFormatBuffer;
        template<typename T> TagProcessorBase<T> TextWriterBase<T>::mDefaultTagProcessor;

        template<typename T> TextWriterBase<T>::TextWriterBase() :
        mCharSpace(0.0f),
        mLineSpace(0.0f),
        mTabWidth(4),
        mDrawFlag(0),
        mTagProcessor(&mDefaultTagProcessor) {}

        template<typename T> TextWriterBase<T>::~TextWriterBase() {}

        template<typename T> void TextWriterBase<T>::SetLineHeight(f32 lineHeight) {
            const Font* font = GetFont();
            int linefeed = font ? font->GetLineFeed() : 0;

            mLineSpace = lineHeight - linefeed * GetScaleV();
        }

        template<typename T> f32 TextWriterBase<T>::GetLineHeight() const {
            const Font* font = GetFont();
            int linefeed = font ? font->GetLineFeed() : 0;

            return mLineSpace + linefeed * GetScaleV();
        }

        template<typename T> void TextWriterBase<T>::SetLineSpace(f32 lineSpace) {
            mLineSpace = lineSpace;
        }

        template<typename T> void TextWriterBase<T>::SetCharSpace(f32 charSpace) {
            mCharSpace = charSpace;
        }

        template<typename T> f32 TextWriterBase<T>::GetLineSpace() const {
            return mLineSpace;
        }

        template<typename T> f32 TextWriterBase<T>::GetCharSpace() const {
            return mCharSpace;
        }

        template<typename T> void TextWriterBase<T>::SetTabWidth(int tabWidth) {
            mTabWidth = tabWidth;
        }

        template<typename T> int TextWriterBase<T>::GetTabWidth() const {
            return mTabWidth;
        }

        template<typename T> void TextWriterBase<T>::SetDrawFlag(u32 flags) {
            mDrawFlag = flags;
        }

        template<typename T> u32 TextWriterBase<T>::GetDrawFlag() const {
            return mDrawFlag;
        }

        template<typename T> void TextWriterBase<T>::SetTagProcessor(TagProcessorBase<T>* tagProcessor) {
            mTagProcessor = tagProcessor;
        }

        template<typename T> void TextWriterBase<T>::ResetTagProcessor() {
            mTagProcessor = &mDefaultTagProcessor;
        }

        template<typename T> TagProcessorBase<T>& TextWriterBase<T>::GetTagProcessor() const {
            return *mTagProcessor;
        }

        template<typename T> f32 TextWriterBase<T>::CalcFormatStringWidth(const T* format, ...) const {
            Rect rect;
            va_list vargs;

            va_start(vargs, format);
            CalcVStringRect(&rect, format, vargs);
            va_end(vargs);

            return rect.GetWidth();
        }

        template<typename T> f32 TextWriterBase<T>::CalcFormatStringHeight(const T* format, ...) const {
            Rect rect;
            va_list vargs;

            va_start(vargs, format);
            CalcVStringRect(&rect, format, vargs);
            va_end(vargs);

            return rect.GetHeight();
        }

        template<typename T> void TextWriterBase<T>::CalcFormatStringRect(Rect* pRect, const T* format, ...) const {
            va_list vargs;

            va_start(vargs, format);
            CalcVStringRect(pRect, format, vargs);
            va_end(vargs);
        }

        template<typename T> f32 TextWriterBase<T>::AdjustCursor(f32* xOrigin, f32* yOrigin, const T* str, int length) {
            f32 textWidth   = 0.0f;
            f32 textHeight  = 0.0f;

            if (!IsDrawFlagSet(DRAWFLAG_MASK_ALL, DRAWFLAG_MASK_ALIGN_V) && !IsDrawFlagSet(DRAWFLAG_MASK_ALL, 0)) {
                Rect textRect;

                CalcStringRect(&textRect, str, length);
                textWidth = textRect.left + textRect.right;
                textHeight = textRect.top + textRect.bottom;
            }

            if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_H, DRAWFLAG_ALIGN_H_CENTER)) {
                *xOrigin -= textWidth / 2.0f;
            }
            else if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_H, DRAWFLAG_ALIGN_H_RIGHT)) {
                *xOrigin -= textWidth;
            }

            if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_V, DRAWFLAG_ALIGN_V_CENTER)) {
                *yOrigin -= textHeight / 2.0f;
            }
            else if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_V, DRAWFLAG_ALIGN_V_TOP)) {
                *yOrigin -= textHeight;
            }

            if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_TEXT, DRAWFLAG_ALIGN_TEXT_CENTER)) {
                f32 width = CalcLineWidth(str, length);
                f32 offset = (textWidth - width) / 2.0f;
                SetCursorX(*xOrigin + offset);
            }
            else if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_TEXT, DRAWFLAG_ALIGN_TEXT_RIGHT)) {
                f32 width = CalcLineWidth(str, length);
                f32 offset = textWidth - width;
                SetCursorX(*xOrigin + offset);
            }
            else {
                SetCursorX(*xOrigin);
            }

            if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_V, DRAWFLAG_ALIGN_V_CENTER | DRAWFLAG_ALIGN_V_TOP)) {
                SetCursorY(*yOrigin);
            }
            else {
                SetCursorY(*yOrigin + GetFontAscent());
            }

            return textWidth;
        }

        template<typename T> f32 TextWriterBase<T>::PrintImpl(const T* str, int length) {
            f32 xOrigin = GetCursorX();
            f32 yOrigin = GetCursorY();

            f32 orgCursorX = xOrigin;
            f32 orgCursorY = yOrigin;

            f32 xCursorAdj = 0.0f;
            f32 yCursorAdj = 0.0f;

            f32 textWidth = 0.0f;

            bool bCharSpace = false;

            textWidth = AdjustCursor(&xOrigin, &yOrigin, str, length);
            xCursorAdj = orgCursorX - GetCursorX();
            yCursorAdj = orgCursorY - GetCursorY();

            PrintContext<T> context = {this, str, xOrigin, yOrigin, 0};

            CharStrmReader reader = GetFont()->GetCharStrmReader();
            reader.Set(str);

            for (u16 code = reader.Next(); static_cast<const T*>(reader.GetCurrentPos()) - str <= length; code = reader.Next()) {
                if (code < ' ') {
                    context.str = static_cast<const T*>(reader.GetCurrentPos());
                    context.flags = 0;
                    context.flags |= bCharSpace ? 0 : 1;

                    Operation operation = mTagProcessor->Process(code, &context);

                    if (operation == OPERATION_NEXT_LINE) {
                        if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_TEXT, DRAWFLAG_ALIGN_TEXT_CENTER)) {
                            int remain = length - (context.str - str);
                            f32 width = CalcLineWidth(context.str, remain);
                            f32 offset = (textWidth - width) / 2.0f;

                            SetCursorX(context.xOrigin + offset);
                        }
                        else if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_TEXT, DRAWFLAG_ALIGN_TEXT_RIGHT)) {
                            int remain = length - (context.str - str);
                            f32 width = CalcLineWidth(context.str, remain);
                            f32 offset = textWidth - width;

                            SetCursorX(context.xOrigin + offset);
                        }
                        else {
                            f32 width = GetCursorX() - context.xOrigin;
                            textWidth = Max(textWidth, width);

                            SetCursorX(context.xOrigin);
                        }
                        bCharSpace = false;
                    }
                    else if (operation == OPERATION_NO_CHAR_SPACE) {
                        bCharSpace = false;
                    }
                    else if (operation == OPERATION_CHAR_SPACE) {
                        bCharSpace = true;
                    }
                    else if (operation == OPERATION_END_DRAW) {
                        break;
                    }

                    reader.Set(context.str);
                }
                else {
                    f32 baseY = GetCursorY();

                    if (bCharSpace) {
                        MoveCursorX(GetCharSpace());
                    }

                    bCharSpace = true;

                    {
                        const Font* pFont = GetFont();
                        f32 adj = -pFont->GetBaselinePos() * GetScaleV();

                        MoveCursorY(adj);
                    }

                    CharWriter::Print(code);
                    SetCursorY(baseY);
                }
            }

            if (IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_V, DRAWFLAG_ALIGN_V_CENTER) || IsDrawFlagSet(DRAWFLAG_MASK_ALIGN_V, DRAWFLAG_ALIGN_V_TOP)) {
                SetCursorY(orgCursorY);
            }
            else {
                MoveCursorY(yCursorAdj);
            }

            return textWidth;
        }

        template<typename T> void TextWriterBase<T>::CalcStringRectImpl(Rect* pRect, const T* str, int length) {
            int remain = length;
            const T* pos = str;

            pRect->left = 0.0;
            pRect->right = 0.0;
            pRect->top = 0.0;
            pRect->bottom = 0.0;

            SetCursor(0.0f, 0.0f);

            do {
                Rect rect;
                int read = CalcLineRectImpl(&rect, pos, remain);

                pos += read;
                remain -= read;

                pRect->left = Min(pRect->left, rect.left);
                pRect->top = Min(pRect->top, rect.top);
                pRect->right = Max(pRect->right, rect.right);
                pRect->bottom = Max(pRect->bottom, rect.bottom);
            } while (remain > 0);
        }

        template<typename T> f32 TextWriterBase<T>::PrintMutable(const T* str, int length) {
            return PrintImpl(str, length);
        }

        template<typename T> int TextWriterBase<T>::CalcLineRectImpl(Rect* pRect, const T* str, int length) {
            PrintContext<T> context = {this, str, 0.0f, 0.0f, 0};
            const Font* font = GetFont();

            f32 x = 0.0f;
            bool bCharSpace = false;

            CharStrmReader reader = font->GetCharStrmReader();

            pRect->left = 0.0f;
            pRect->right = 0.0f;
            pRect->top = Min(0.0f, GetLineHeight());
            pRect->bottom = Max(0.0f, GetLineHeight());

            reader.Set(str);

            for (u16 code = reader.Next(); static_cast<const T*>(reader.GetCurrentPos()) - str <= length; code = reader.Next()) {
                if (code < ' ') {
                    Operation operation;
                    Rect rect(x, 0.0f, 0.0f, 0.0f);

                    context.str = static_cast<const T*>(reader.GetCurrentPos());
                    context.flags = 0;
                    context.flags |= bCharSpace ? 0 : 1;

                    SetCursorX(x);

                    operation = mTagProcessor->CalcRect(&rect, code, &context);
                    reader.Set(context.str);

                    pRect->left = Min(pRect->left, rect.left);
                    pRect->top = Min(pRect->top, rect.top);
                    pRect->right = Max(pRect->right, rect.right);
                    pRect->bottom = Max(pRect->bottom, rect.bottom);

                    x = GetCursorX();

                    if (operation == OPERATION_END_DRAW) {
                        return length;
                    }
                    else if (operation == OPERATION_NO_CHAR_SPACE) {
                        bCharSpace = false;
                    }
                    else if (operation == OPERATION_CHAR_SPACE) {
                        bCharSpace = true;
                    }
                    else if (operation == OPERATION_NEXT_LINE) {
                        break;
                    }
                }
                else {
                    if (bCharSpace) {
                        x += GetCharSpace();
                    }

                    bCharSpace = true;

                    if (IsWidthFixed()) {
                        x += GetFixedWidth();
                    }
                    else {
                        x += GetFont()->GetCharWidth(code) * GetScaleH();
                    }

                    pRect->left = Min(pRect->left, x);
                    pRect->right = Max(pRect->right, x);
                }
            }

            return static_cast<const T*>(reader.GetCurrentPos()) - str;
        }

        template<typename T> f32 TextWriterBase<T>::CalcLineWidth(const T* str, int length) {
            Rect rect;
            TextWriterBase<T> myCopy(*this);

            myCopy.SetCursor(0.0f, 0.0f);
            myCopy.CalcLineRectImpl(&rect, str, length);
            return rect.GetWidth();
        }

        template<typename T> T* TextWriterBase<T>::GetBuffer() {
            return mFormatBuffer;
        }

        template<typename T> u32 TextWriterBase<T>::GetBufferSize() {
            return mFormatBufferSize;
        }

        template<typename T> T* TextWriterBase<T>::SetBuffer(u32 size) {
            T* oldBuffer = mFormatBuffer;

            mFormatBuffer = NULL;
            mFormatBufferSize = size;

            return oldBuffer;
        }

        template<typename T> T* TextWriterBase<T>::SetBuffer(T* buffer, u32 size) {
            T* oldBuffer = mFormatBuffer;

            mFormatBuffer = buffer;
            mFormatBufferSize = size;

            return oldBuffer;
        }

        template<typename T> f32 TextWriterBase<T>::Print(const T* str) {
            return Print(str, StrLen(str));
        }

        template<typename T> f32 TextWriterBase<T>::Print(const T* str, int length) {
            TextWriterBase<T> myCopy(*this);

            f32 width = myCopy.PrintImpl(str, length);
            SetCursor(myCopy.GetCursorX(), myCopy.GetCursorY());

            return width;
        }

        template<typename T> f32 TextWriterBase<T>::VPrintf(const T* format, va_list args) {
            T* buffer = mFormatBuffer ? mFormatBuffer : static_cast<T*>(__alloca(mFormatBufferSize));

            int length = VSNPrintf(buffer, mFormatBufferSize, format, args);
            f32 width = Print(buffer, length);
            return width;
        }

        template<typename T> f32 TextWriterBase<T>::Printf(const T* format, ...) {
            va_list vargs;

            va_start(vargs, format);
            f32 width = VPrintf(format, vargs);
            va_end(vargs);

            return width;
        }

        template<typename T> void TextWriterBase<T>::CalcStringRect(Rect* pRect, const T* str) const {
            CalcStringRect(pRect, str, StrLen(str));
        }

        template<typename T> void TextWriterBase<T>::CalcStringRect(Rect* pRect, const T* str, int length) const {
            TextWriterBase<T> myCopy(*this);

            myCopy.CalcStringRectImpl(pRect, str, length);
        }

        template<typename T> f32 TextWriterBase<T>::CalcStringHeight(const T* str) const {
            return CalcStringHeight(str, StrLen(str));
        }

        template<typename T> f32 TextWriterBase<T>::CalcStringHeight(const T* str, int length) const {
            Rect rect;

            CalcStringRect(&rect, str, length);
            return rect.GetHeight();
        }

        template<typename T> f32 TextWriterBase<T>::CalcStringWidth(const T* str) const {
            return CalcStringWidth(str, StrLen(str));
        }

        template<typename T> f32 TextWriterBase<T>::CalcStringWidth(const T* str, int length) const {
            Rect rect;

            CalcStringRect(&rect, str, length);
            return rect.GetWidth();
        }

        template<typename T> void TextWriterBase<T>::CalcVStringRect(Rect* pRect, const T* format, va_list args) const {
            T* buffer = mFormatBuffer ? mFormatBuffer : static_cast<T*>(__alloca(mFormatBufferSize));

            int length = VSNPrintf(buffer, mFormatBufferSize, format, args);
            CalcStringRect(pRect, buffer, length);
        }

        template class TextWriterBase<char>;
        template class TextWriterBase<wchar_t>;
    }
}
