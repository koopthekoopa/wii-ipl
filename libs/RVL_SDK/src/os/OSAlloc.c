#include <revolution/os.h>

typedef struct HeapCell HeapCell;
struct HeapCell {
    HeapCell*   prev;       // 0x00
    HeapCell*   next;       // 0x04
    s32         size;       // 0x08
};

typedef struct HeapDesc {
    s32         size;       // 0x00
    HeapCell*   free;       // 0x04
    HeapCell*   allocated;  // 0x08
} HeapDesc;

static HeapDesc*        HeapArray;
static int              NumHeaps;

static void             *ArenaStart, *ArenaEnd;

volatile OSHeapHandle   __OSCurrHeap = -1;

#define MAX_LEFT_SIZE 64

static HeapCell* DLAddFront(HeapCell* list, HeapCell* cell) {
    cell->next = list;
    cell->prev = NULL;

    if (list != NULL) {
        list->prev = cell;
    }

    return cell;
}

static HeapCell* DLExtract(HeapCell* list, HeapCell* cell) {
    if (cell->next) {
        cell->next->prev = cell->prev;
    }

    if (cell->prev == NULL) {
        return cell->next;
    }
    else {
        cell->prev->next = cell->next;
        return list;
    }
}

static HeapCell* DLInsert(HeapCell* list, HeapCell* cell) {
    HeapCell* prev;
    HeapCell* next;

    for (next = list, prev = NULL; next; prev = next, next = next->next) {
        if (cell <= next) {
            break;
        }
    }

    cell->next = next;
    cell->prev = prev;

    if (next != NULL) {
        next->prev = cell;

        if ((u8*)cell + cell->size == (u8*)next) {
            cell->size += next->size;
            cell->next = next = next->next;

            if (next != NULL) {
                next->prev = cell;
            }
        }
    }
    
    if (prev != NULL) {
        prev->next = cell;
        if ((u8*)prev + prev->size == (u8*)cell) {
            prev->size += cell->size;
            prev->next = next;

            if (next != NULL) {
                next->prev = prev;
            }
        }
        return list;
    }
    else {
        return cell;
    }
}

void* OSAllocFromHeap(OSHeapHandle heap, u32 size) {
    HeapDesc* desc;
    HeapCell* cell;
    HeapCell* newCell;
    long leftSize;

    desc = &HeapArray[heap];
    size += DEFAULT_ALIGN;
    size = OSRoundUp32B(size);

    for (cell = desc->free; cell != NULL; cell = cell->next) {
        if ((s32)size <= cell->size) {
            break;
        }
    }

    if (cell == NULL) {
        return NULL;
    }

    leftSize = cell->size - size;

    if (leftSize < (u32)MAX_LEFT_SIZE) {
        desc->free = DLExtract(desc->free, cell);
    }
    else {
        cell->size = size;
        newCell = (HeapCell*)((u8*)cell + size);
        newCell->size = leftSize;
        newCell->prev = cell->prev;
        newCell->next = cell->next;

        if (newCell->next != NULL) {
            newCell->next->prev = newCell;
        }

        if (newCell->prev != NULL) {
            newCell->prev->next = newCell;
        }
        else {
            desc->free = newCell;
        }
    }

    desc->allocated = DLAddFront(desc->allocated, cell);
    return (void*)((u8*)cell + DEFAULT_ALIGN);
}

void OSFreeToHeap(OSHeapHandle heap, void *ptr) {
    HeapDesc* desc;
    HeapCell* cell;

    cell = (HeapCell*)((u8*)ptr - DEFAULT_ALIGN);
    desc = &HeapArray[heap];
    desc->allocated = DLExtract(desc->allocated, cell);
    desc->free = DLInsert(desc->free, cell);
}

OSHeapHandle OSSetCurrentHeap(OSHeapHandle heap) {
    OSHeapHandle prev;
    prev = __OSCurrHeap;
    __OSCurrHeap = heap;
    return prev;
}

void* OSInitAlloc(void* arenaStart, void* arenaEnd, int maxHeaps) {
    int size, i;
    size = maxHeaps * sizeof(HeapDesc);

    HeapArray = arenaStart;
    NumHeaps = maxHeaps;

    for (i = 0; i < NumHeaps; i++) {
        HeapDesc* desc = &HeapArray[i];
        desc->size = -1;
        desc->allocated = NULL;
        desc->free = NULL;
    }

    __OSCurrHeap = -1;

    arenaStart = (u8*)HeapArray + size;
    arenaStart = (void*)OSRoundUp32B(arenaStart);
    ArenaStart = arenaStart;

    ArenaEnd = (void*)OSRoundDown32B(arenaEnd);

    return arenaStart;
}

int OSCreateHeap(void *start, void *end) {
    OSHeapHandle heap;
    HeapDesc* desc;
    HeapCell* cell;

    start = (void*)OSRoundUp32B(start);
    end = (void*)OSRoundDown32B(end);

    for (heap = 0; heap < NumHeaps; heap++) {
        desc = &HeapArray[heap];

        if (desc->size < 0) {
            desc->size = (u8*)end - (u8*)start;
            cell = (HeapCell*)start;
            cell->prev = NULL;
            cell->next = NULL;
            cell->size = desc->size;
            desc->free = cell;
            desc->allocated = NULL;
            return heap;
        }
    }

    return -1;
}
