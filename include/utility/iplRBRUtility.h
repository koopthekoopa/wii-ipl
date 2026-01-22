#ifndef IPL_UTILITY_RBR_H
#define IPL_UTILITY_RBR_H

#include "system/RIPL_BoardRecord.h"

#include <nw4r/ut/Rect.h>

#include <internal/RFLi_Types.h>

namespace ipl {
    class RBRUtility {
        public:
            static void             getPosRect(f32 left, f32 right, f32 top, f32 bottom)    { RBRGetPosRect(&left, &right, &top, &bottom); }
            static void             getPosRect(nw4r::ut::Rect* rect)                        { RBRGetPosRect(&rect->left, &rect->right, &rect->top, &rect->bottom); }

            static const void*      getPicture(u8* recordData, u32* picSize = NULL)         { return RBRGetPicture(recordData, picSize); }

            static const wchar_t*   getTitle(void* recordData)                              { return (const wchar_t*)((u8*)recordData + ((RBRHeader*)recordData)->titleOffset); }
            static const wchar_t*   getBody(void* recordData)                               { return (const wchar_t*)((u8*)recordData + ((RBRHeader*)recordData)->bodyOffset); }
            static RFLiCharData*    getFace(void* recordData)                               { return (RFLiCharData*)((u8*)recordData + ((RBRHeader*)recordData)->faceOffset); }

            static void*            getAttachData(void* recordData, int index)              { return (void*)((u8*)recordData + ((RBRHeader*)recordData)->attach[index].offset); }
    };
}

#endif // IPL_UTILITY_RBR_H
