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
        
        void List_Init(List* list, u16 offset);
        void List_Append(List* list, void* object);
        void List_Prepend(List* list, void* pobject);
        void List_Insert(List* list, void* target, void* object);
        void List_Remove(List* list, void* object);
        
        void* List_GetNext(const List* list, const void* object);
        void* List_GetPrev(const List* list, const void* object);
        void* List_GetNth(const List* list, u16 index);
    }
}

#endif // NW4R_UTILITY_LIST_H


