#ifndef NW4R_UT_TEXT_WRITER_BASE_H
#define NW4R_UT_TEXT_WRITER_BASE_H

#include <revolution/types.h>

#include <nw4r/ut/Rect.h>
#include <nw4r/ut/CharWriter.h>

#include <cstring>
#include <cstdio>
#include <cwchar>
#include <cstdarg>

namespace nw4r {
    namespace ut {
        template<typename> class TagProcessorBase;
        template<typename T> class TextWriterBase : public CharWriter {
            public:
                TextWriterBase();
                ~TextWriterBase();

                void                    SetLineHeight(f32 lineHeight);
                f32                     GetLineHeight() const;

                void                    SetLineSpace(f32 lineSpace);
                void                    SetCharSpace(f32 charSpace);

                f32                     GetLineSpace() const;
                f32                     GetCharSpace() const;

                void                    SetTabWidth(int tabWidth);
                int                     GetTabWidth() const;

                void                    SetDrawFlag(u32 flags);
                u32                     GetDrawFlag() const;

                void                    SetTagProcessor(TagProcessorBase<T>* tagProcessor);
                void                    ResetTagProcessor();
                TagProcessorBase<T>&    GetTagProcessor() const;

                f32                     CalcFormatStringWidth(const T* format, ...) const;
                f32                     CalcFormatStringHeight(const T* format, ...) const;

                void                    CalcFormatStringRect(Rect* pRect, const T* format, ...) const;
                void                    CalcVStringRect(Rect* pRect, const T* format, va_list args) const;

                f32                     CalcStringWidth(const T* str, int length) const;
                f32                     CalcStringWidth(const T* str) const;

                f32                     CalcStringHeight(const T* str, int length) const;
                f32                     CalcStringHeight(const T* str) const;

                void                    CalcStringRect(Rect* pRect, const T* str, int length) const;
                void                    CalcStringRect(Rect* pRect, const T* str) const;

                f32                     PrintMutable(const T* str, int length);
                f32                     Printf(const T* format, ...);
                f32                     VPrintf(const T* format, va_list args);
                f32                     Print(const T* str, int length);
                f32                     Print(const T* str);

                static T*               SetBuffer(T* buf, u32 size);
                static T*               SetBuffer(u32 size);

                static u32              GetBufferSize();
                static T*               GetBuffer();

                static int VSNPrintf(T* buffer, u32 count, const T* format, va_list arg) {
                    return sizeof(T) == sizeof(char) ? vsnprintf((char*)buffer, count, (const char*)format, arg) : vswprintf((wchar_t*)buffer, count, (const wchar_t*)format, arg);
                }
                static int StrLen(const T* str) {
                    return sizeof(T) == sizeof(char) ? strlen((const char*)str) : wcslen((const wchar_t*)str);
                }

                f32     CalcLineWidth(const T* str, int length);
                int     CalcLineRectImpl(Rect* pRect, const T* str, int length);
                void    CalcStringRectImpl(Rect* pRect, const T* str, int length);

                f32     PrintImpl(const T* str, int length);

                f32     AdjustCursor(f32* xOrigin, f32* yOrigin, const T* str, int length);

                bool    IsDrawFlagSet(u32 mask, u32 flag) const { return (mDrawFlag & mask) == flag; }

            private:
                f32                     mCharSpace;     // 0x4C
                f32                     mLineSpace;     // 0x50

                int                     mTabWidth;      // 0x54

                u32                     mDrawFlag;      // 0x58

                TagProcessorBase<T>*    mTagProcessor;  // 0x5C

            private:
                static T*   mFormatBuffer;
                static u32  mFormatBufferSize;

                static TagProcessorBase<T> mDefaultTagProcessor;
        };
    }
}

#endif // NW4R_UT_TEXT_WRITER_BASE_H

#include <nw4r/ut/TagProcessorBase.h>
