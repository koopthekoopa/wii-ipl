#ifndef NW4R_UT_LIST_H
#define NW4R_UT_LIST_H

#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        typedef struct Link {
            void*   prevObject; // 0x00
            void*   nextObject; // 0x04
        } Link;
        
        typedef struct List {
            void*   headObject; // 0x00
            void*   tailObject; // 0x04
            u16     numObjects; // 0x08

            u16     offset;     // 0x0A
        } List;
        
        void List_Init(List* list, u16 offset);
        void List_Append(List* list, void* object);
        void List_Prepend(List* list, void* object);
        void List_Insert(List* list, void* target, void* object);
        void List_Remove(List* list, void* object);
        
        void* List_GetNext(const List* list, const void* object);
        void* List_GetPrev(const List* list, const void* object);
        void* List_GetNth(const List* list, u16 index);

        static void* List_GetFirst(const List* list) {
            return List_GetNext(list, NULL);
        }

        static void* List_GetLast(const List* list) {
            return List_GetPrev(list, NULL);
        }
        
        static u16 List_GetSize(const List* list) {
            return list->numObjects;
        }
    }
}

#endif // NW4R_UT_LIST_H
