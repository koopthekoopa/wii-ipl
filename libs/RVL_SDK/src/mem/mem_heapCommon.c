#include <revolution/mem.h>
#include <private/mem.h>

#include <revolution/os.h>

static BOOL     sRootListInitialized = FALSE;

static MEMList  sRootList;
static OSMutex  sRootMutex;

static MEMHeapHandle FindContainHeap_(MEMList* list, const void* memBlock) {
    MEMHeapHandle heap = NULL;

    while ((heap = (MEMHeapHandle)MEMGetNextListObject(list, heap)) != NULL) {
        if (GetUIntPtr(heap->heapStart) <= GetUIntPtr(memBlock) && GetUIntPtr(memBlock) < GetUIntPtr(heap->heapEnd)) {
            MEMHeapHandle child = FindContainHeap_(&heap->list, memBlock);
            if (child != NULL) {
                return child;
            }
            return heap;
        }
    }

    return NULL;
}

static MEMList* FindListContainHeap_(MEMHeapHandle heap) {
    MEMList* list = &sRootList;
    MEMHeapHandle result = FindContainHeap_(&sRootList, heap);
    if (result != NULL) {
        list = &result->list;
    }
    return list;
}

void MEMiInitHeapHead(MEMHeapHandle heap, u32 magic, void* heapStart, void* heapEnd, u16 optFlag) {
    heap->magic = magic;
    heap->heapStart = heapStart;
    heap->heapEnd = heapEnd;
    heap->attr = 0;
    SetOptForHeap(heap, optFlag);

    MEMInitList(&heap->list, offsetof(MEMiHeapHead, link));

    if (!sRootListInitialized) {
        MEMInitList(&sRootList, offsetof(MEMiHeapHead, link));
        OSInitMutex(&sRootMutex);
        sRootListInitialized = TRUE;
    }

    OSInitMutex(&heap->mutex);

    OSLockMutex(&sRootMutex);
    MEMAppendListObject(FindListContainHeap_(heap), heap);
    OSUnlockMutex(&sRootMutex);
}

void MEMiFinalizeHeap(MEMHeapHandle heap) {
    OSLockMutex(&sRootMutex);

    MEMRemoveListObject(FindListContainHeap_(heap), heap);

    OSUnlockMutex(&sRootMutex);

    heap->magic = 0;
}

MEMHeapHandle MEMFindContainHeap(const void* memBlock) {
    return FindContainHeap_(&sRootList, memBlock);
}
