#include <nw4r/ut.h>

namespace nw4r {
    namespace ut {
        #define OBJ_TO_LINK(list, obj) ((Link*)(((char*)obj) + list->offset))

        static void SetFirstObject(List* list, void* object) {
            Link* link = OBJ_TO_LINK(list, object);
            link->nextObject = NULL;
            link->prevObject = NULL;

            list->headObject = object;
            list->tailObject = object;
            list->numObjects++;
        }

        void List_Init(List* list, u16 offset) {
            list->offset = offset;

            list->headObject = NULL;
            list->tailObject = NULL;
            list->numObjects = NULL;
        }

        void List_Append(List* list, void* object) {
            if (list->headObject == NULL) {
                SetFirstObject(list, object);
            }
            else {
                // Old tail <- New tail relationship
                Link* link = OBJ_TO_LINK(list, object);
                link->prevObject = list->tailObject;
                link->nextObject = NULL;

                // Old tail -> New tail relationship
                OBJ_TO_LINK(list, list->tailObject)->nextObject = object;
                list->tailObject = object;

                list->numObjects++;
            }
        }

        void List_Prepend(List* list, void* object) {
            if (list->headObject == NULL) {
                SetFirstObject(list, object);
            }
            else {
                // New head -> Old head relationship
                Link* link = OBJ_TO_LINK(list, object);
                link->prevObject = NULL;
                link->nextObject = list->headObject;

                // New head <- Old head relationship
                OBJ_TO_LINK(list, list->headObject)->prevObject = object;
                list->headObject = object;

                list->numObjects++;
            }
        }

        void List_Insert(List* list, void* pTarget, void* object) {
            if (pTarget == NULL) {
                List_Append(list, object);
            }
            else if (pTarget == list->headObject) {
                List_Prepend(list, object);
            }
            else {
                Link* link = OBJ_TO_LINK(list, object);

                void* pPrev = OBJ_TO_LINK(list, pTarget)->prevObject;
                Link* pPrevLink = OBJ_TO_LINK(list, pPrev);

                link->prevObject = pPrev;                           // pPrev <- object
                link->nextObject = pTarget;                         // pPrev <- object -> pTarget
                pPrevLink->nextObject = object;                     // pPrev <-> object -> pTarget
                
                OBJ_TO_LINK(list, pTarget)->prevObject = object;    // pPrev <-> object <-> pTarget

                list->numObjects++;
            }
        }

        void List_Remove(List* list, void* object) {
            Link* link = OBJ_TO_LINK(list, object);

            // Fix previous node relationship
            if (link->prevObject == NULL) {
                list->headObject = OBJ_TO_LINK(list, object)->nextObject;
            }
            else {
                OBJ_TO_LINK(list, link->prevObject)->nextObject = link->nextObject;
            }

            // Fix next node relationship
            if (link->nextObject == NULL) {
                list->tailObject = link->prevObject;
            }
            else {
                OBJ_TO_LINK(list, link->nextObject)->prevObject = link->prevObject;
            }

            link->prevObject = NULL;
            link->nextObject = NULL;

            list->numObjects--;
        }

        void* List_GetNext(const List* list, const void* object) {
            if (object == NULL) {
                return list->headObject;
            }
            else {
                return OBJ_TO_LINK(list, object)->nextObject;
            }
        }

        void* List_GetPrev(const List* list, const void* object) {
            if (object == NULL) {
                return list->tailObject;
            }
            else {
                return OBJ_TO_LINK(list, object)->prevObject;
            }
        }

        void* List_GetNth(const List* list, u16 n) {
            int i;
            void* it = NULL;

            for (i = 0, it = NULL; it = List_GetNext(list, it); i++) {
                if (n == i) {
                    return it;
                }
            }

            return NULL;
        }
    }
}


