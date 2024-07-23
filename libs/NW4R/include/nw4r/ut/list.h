#ifndef NW4R_UTILITY_LIST_H
#define NW4R_UTILITY_LIST_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        typedef struct {
            void*   prevObject; // 0x00
            void*   nextObject; // 0x04
        } Link;
        
        typedef struct {
            void*   headObject; // 0x00
            void*   tailObject; // 0x04
            u16     numObjects; // 0x08
            u16     offset;     // 0x0A
        } List;
        
        void List_Init(List* pList, u16 offset);
        void List_Append(List* pList, void* pObject);
        void List_Prepend(List* pList, void* pObject);
        void List_Insert(List* pList, void* pTarget, void* pObject);
        void List_Remove(List* pList, void* pObject);
        
        void* List_GetNext(const List* pList, const void* pObject);
        void* List_GetPrev(const List* pList, const void* pObject);
        void* List_GetNth(const List* pList, u16 index);
    }
}

#endif // NW4R_UTILITY_LIST_H


