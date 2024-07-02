#ifndef NW4R_LIST_H
#define NW4R_LIST_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        typedef struct {
            void*   prevObject;
            void*   nextObject;
        } Link;
        
        typedef struct {
            void*   headObject;
            void*   tailObject;
            u16     numObjects;
            u16     offset;
        } List;
        
        void List_Init(List* list, u16 offset);
        void List_Append(List* list, void* object);
        void List_Prepend(List* list, void* object);
        void List_Insert(List* list, void* target, void* object);
        void List_Remove(List* list, void* object);
        
        void* List_GetNext(const List* list, const void* object);
        void* List_GetPrev(const List* list, const void* object);
        void* List_GetNth(const List* list, u16 index);
    }
}

#endif // NW4R_LIST_H


