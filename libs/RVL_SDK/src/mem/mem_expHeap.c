#include <revolution/mem.h>
#include <revolution/os.h>

#include <string.h>
#include <math.h>

#include <private/mem.h>

typedef struct Region {
    void* start;
    void* end;
} Region;

static inline MEMiExpHeapHead* GetExpHeapHeadPtrFromHeapHead_(MEMHeapHandle heap) {
    return AddU32ToPtr(heap, sizeof(MEMiHeapHead));
}

static inline MEMiExpHeapHead* GetExpHeapHeadPtrFromHandle_(MEMHeapHandle heap) {
    return GetExpHeapHeadPtrFromHeapHead_(heap);
}

static inline MEMHeapHandle GetHeapHeadPtrFromExpHeapHead_(MEMiExpHeapHead* ext) {
    return SubU32ToPtr(ext, sizeof(MEMiHeapHead));
}

static inline u16 GetAllocMode_(MEMiExpHeapHead* ext) {
    return ext->attribute.fields.allocMode;
}

static inline void SetAllocMode_(MEMiExpHeapHead* ext, u16 mode) {
    ext->attribute.fields.allocMode = mode;
}

static inline u16 GetAlignmentForMBlock_(MEMiExpHeapMBlockHead* block) {
    return block->attribute.fields.align;
}

static inline void SetAllocDirForMBlock_(MEMiExpHeapMBlockHead* block, u16 direction) {
    block->attribute.fields.dir = direction;
}

static inline void SetAlignmentForMBlock_(MEMiExpHeapMBlockHead* block, u16 align) {
    block->attribute.fields.align = align;
}

static inline void SetGroupIDForMBlock_(MEMiExpHeapMBlockHead* block, u16 groupID) {
    block->attribute.fields.groupID = groupID;
}

static inline void* GetMemPtrForMBlock_(MEMiExpHeapMBlockHead* block) {
    return AddU32ToPtr(block, sizeof(MEMiExpHeapMBlockHead));
}

static inline MEMiExpHeapMBlockHead* GetMBlockHeadPtr_(void* block) {
    return SubU32ToPtr(block, sizeof(MEMiExpHeapMBlockHead));
}

static inline void* GetMBlockEndAddr_(MEMiExpHeapMBlockHead* block) {
    return AddU32ToPtr(GetMemPtrForMBlock_(block), block->blockSize);
}

static inline void GetRegionOfMBlock_(Region* region, MEMiExpHeapMBlockHead* block) {
    region->start = SubU32ToPtr(block, GetAlignmentForMBlock_(block));
    region->end = GetMBlockEndAddr_(block);
}

static inline MEMiExpHeapMBlockHead* RemoveMBlock_(MEMiExpBlockList* list, MEMiExpHeapMBlockHead* block) {
    MEMiExpHeapMBlockHead* prev = block->link.prev;
    MEMiExpHeapMBlockHead* next = block->link.next;

    if (prev) {
        prev->link.next = next;
    }
    else {
        list->head = next;
    }

    if (next) {
        next->link.prev = prev;
    }
    else {
        list->tail = prev;
    }

    return prev;
}

static inline MEMiExpHeapMBlockHead* InsertMBlock_(MEMiExpBlockList* list, MEMiExpHeapMBlockHead* block, MEMiExpHeapMBlockHead* prev) {
    MEMiExpHeapMBlockHead* next;

    block->link.prev = prev;
    if (prev) {
        next = prev->link.next;
        prev->link.next = block;
    }
    else {
        next = list->head;
        list->head = block;
    }

    block->link.next = next;
    if (next) {
        next->link.prev = block;
    }
    else {
        list->tail = block;
    }

    return block;
}

static inline MEMiExpHeapMBlockHead* AppendMBlock_(MEMiExpBlockList* list, MEMiExpHeapMBlockHead* block) {
    return InsertMBlock_(list, block, list->tail);
}

static inline MEMiExpHeapMBlockHead* InitMBlock_(Region* region, u16 signature) {
    MEMiExpHeapMBlockHead* block = region->start;

    block->signature = signature;
    block->attribute.val = 0;
    block->blockSize = GetOffsetFromPtr(GetMemPtrForMBlock_(block), region->end);
    
    block->link.prev = NULL;
    block->link.next = NULL;

    return block;
}

static inline MEMiExpHeapMBlockHead* InitFreeMBlock_(Region* region) {
    return InitMBlock_(region, 'FR');
}

static inline MEMHeapHandle InitExpHeap_(MEMHeapHandle heap, void* end, u16 opt) {
    Region region;
    MEMiExpHeapMBlockHead* block;
    MEMiExpHeapHead* ext = GetExpHeapHeadPtrFromHeapHead_(heap);

    MEMiInitHeapHead(heap, 'EXPH', AddU32ToPtr(ext, 0x14), end, opt);
    ext->groupID = 0;
    ext->attribute.val = 0;
    SetAllocMode_(ext, 0);

    region.start = heap->heapStart;
    region.end = heap->heapEnd;
    block = InitFreeMBlock_(&region);

    ext->freeBlocks.head = block;
    ext->freeBlocks.tail = block;
    ext->usedBlocks.head = NULL;
    ext->usedBlocks.tail = NULL;

    return heap;
}

static void* AllocUsedBlockFromFreeBlock_(MEMiExpHeapHead* ext, MEMiExpHeapMBlockHead* block, void* address, u32 size, s32 direction) {
    Region region0;
    Region region1;
    MEMiExpHeapMBlockHead* prev;

    GetRegionOfMBlock_(&region0, block);
    region1.end = region0.end;
    region1.start = AddU32ToPtr(address, size);
    region0.end = SubU32ToPtr(address, sizeof(MEMiExpHeapMBlockHead));

    prev = RemoveMBlock_(&ext->freeBlocks, block);

    if (GetOffsetFromPtr(region0.start, region0.end) < 0x14) {
        region0.end = region0.start;
    }
    else {
        prev = InsertMBlock_(&ext->freeBlocks, InitFreeMBlock_(&region0), prev);
    }

    if (GetOffsetFromPtr(region1.start, region1.end) < 0x14) {
        region1.start = region1.end;
    }
    else {
        InsertMBlock_(&ext->freeBlocks, InitFreeMBlock_(&region1), prev);
    }

    FillAllocMemory(GetHeapHeadPtrFromExpHeapHead_(ext), region0.end, GetOffsetFromPtr(region0.end, region1.start));

    {
        Region region2;
        MEMiExpHeapMBlockHead* head;

        region2.start = SubU32ToPtr(address, sizeof(MEMiExpHeapMBlockHead));
        region2.end = region1.start;
        head = InitMBlock_(&region2, 'UD');

        SetAllocDirForMBlock_(head, direction);
        SetAlignmentForMBlock_(head, GetOffsetFromPtr(region0.end, head));
        SetGroupIDForMBlock_(head, ext->groupID);
        AppendMBlock_(&ext->usedBlocks, head);
    }

    return address;
}

static void* AllocFromHead_(MEMHeapHandle heap, u32 size, int align) {
    MEMiExpHeapHead* ext = GetExpHeapHeadPtrFromHeapHead_(heap);
    BOOL fastAlloc = GetAllocMode_(ext) == 0;
    MEMiExpHeapMBlockHead* block = NULL;
    MEMiExpHeapMBlockHead* found = NULL;
    u32 blockSize = -1;
    void* bestAddress = NULL;

    for (block = ext->freeBlocks.head; block; block = block->link.next) {
        void* const memptr = GetMemPtrForMBlock_(block);
        void* const address = MEM_PTR_ROUNDUP(GetUIntPtr(memptr), align);
        u32 offset = GetOffsetFromPtr(memptr, address);
        if (block->blockSize < size + offset) {
            continue;
        }

        if (blockSize <= block->blockSize) {
            continue;
        }

        found = block;
        blockSize = block->blockSize;
        bestAddress = address;

        if (fastAlloc || blockSize == size) {
            break;
        }
    }

    if (!found) {
        return NULL;
    }

    return AllocUsedBlockFromFreeBlock_(ext, found, bestAddress, size, 0);
}

static void* AllocFromTail_(MEMHeapHandle heap, u32 size, int align) {
    MEMiExpHeapHead* ext = GetExpHeapHeadPtrFromHeapHead_(heap);
    BOOL fastAlloc = GetAllocMode_(ext) == 0;
    MEMiExpHeapMBlockHead* block = NULL;
    MEMiExpHeapMBlockHead* found = NULL;
    u32 blockSize = -1;
    void* bestAddress = NULL;

    for (block = ext->freeBlocks.tail; block; block = block->link.prev) {
        void* const start = GetMemPtrForMBlock_(block);
        void* const endAddr = AddU32ToPtr(start, block->blockSize);
        void* const end = MEM_PTR_ROUNDDOWN(SubU32ToPtr(endAddr, size), align);
        if (ComparePtr(end, start) < 0) {
            continue;
        }

        if (blockSize <= block->blockSize) {
            continue;
        }

        found = block;
        blockSize = block->blockSize;
        bestAddress = end;

        if (fastAlloc || blockSize == size) {
            break;
        }
    }

    if (!found) {
        return NULL;
    }

    return AllocUsedBlockFromFreeBlock_(ext, found, bestAddress, size, 1);
}

static BOOL RecycleRegion_(MEMiExpHeapHead* ext, Region* initialRegion) {
    MEMiExpHeapMBlockHead* block = NULL;
    Region region = *initialRegion;
    MEMiExpHeapMBlockHead* search;

    for (search = ext->freeBlocks.head; search; search = search->link.next) {
        if (search < initialRegion->start) {
            block = search;
            continue;
        }

        if (search == initialRegion->end) {
            region.end = GetMBlockEndAddr_(search);
            RemoveMBlock_(&ext->freeBlocks, search);
        }
        break;
    }

    if (block && GetMBlockEndAddr_(block) == initialRegion->start) {
        region.start = block;
        block = RemoveMBlock_(&ext->freeBlocks, block);
    }

    if (GetOffsetFromPtr(region.start, region.end) < sizeof(MEMiExpHeapMBlockHead)) {
        return FALSE;
    }

    InsertMBlock_(&ext->freeBlocks, InitFreeMBlock_(&region), block);
    return TRUE;
}

MEMHeapHandle MEMCreateExpHeapEx(void* startAddress, u32 size, u16 opt) {
    void* end = MEM_PTR_ROUNDDOWN(GetUIntPtr(AddU32ToPtr(startAddress, size)), 4);
    void* start = MEM_PTR_ROUNDUP(GetUIntPtr(startAddress), 4);

    if (GetUIntPtr(start) > GetUIntPtr(end) || GetOffsetFromPtr(start, end) < 0x64) {
        return NULL;
    }

    return InitExpHeap_(start, end, opt);
}

void* MEMDestroyExpHeap(MEMHeapHandle heap) {
    MEMiFinalizeHeap(heap);
    return heap;
}

void* MEMAllocFromExpHeapEx(MEMHeapHandle heap, u32 size, int align) {
    void* block;

    if (size == 0) {
        size = 1;
    }
    size = MEM_ROUNDUP(size, 4);

    LockHeap(heap);
    if (align >= 0) {
        block = AllocFromHead_(heap, size, align);
    }
    else {
        block = AllocFromTail_(heap, size, -align);
    }
    UnlockHeap(heap);
    return block;
}

u32 MEMResizeForMBlockExpHeap(MEMHeapHandle heap, void* block, u32 size) {
    MEMiExpHeapHead* ext = GetExpHeapHeadPtrFromHandle_(heap);
    MEMiExpHeapMBlockHead* head = GetMBlockHeadPtr_(block);

    size = MEM_ROUNDUP(size, 4);
    if (size == head->blockSize) {
        return size;
    }

    LockHeap(heap);

    if (size > head->blockSize) {
        void* end = GetMBlockEndAddr_(head);
        MEMiExpHeapMBlockHead* search;
        for (search = ext->freeBlocks.head; search; search = search->link.next) {
            if (search == end) {
                break;
            }
        }

        if (!search || size > head->blockSize + search->blockSize + sizeof(MEMiExpHeapMBlockHead)) {
            UnlockHeap(heap);
            return 0;
        }
        else {
            Region region;
            MEMiExpHeapMBlockHead* prev;
            void* start;

            GetRegionOfMBlock_(&region, search);
            prev = RemoveMBlock_(&ext->freeBlocks, search);
            start = region.start;
            region.start = AddU32ToPtr(block, size);

            if (GetOffsetFromPtr(region.start, region.end) < sizeof(MEMiExpHeapMBlockHead)) {
                region.start = region.end;
            }

            head->blockSize = GetOffsetFromPtr(block, region.start);

            if (GetOffsetFromPtr(region.start, region.end) >= sizeof(MEMiExpHeapMBlockHead)) {
                InsertMBlock_(&ext->freeBlocks, InitFreeMBlock_(&region), prev);
            }

            FillAllocMemory(heap, start, GetOffsetFromPtr(start, region.start));
        }
    }
    else {
        Region region;
        u32 origSize = head->blockSize;

        region.start = AddU32ToPtr(block, size);
        region.end = GetMBlockEndAddr_(head);

        head->blockSize = size;

        if (!RecycleRegion_(ext, &region)) {
            head->blockSize = origSize;
        }
    }

    UnlockHeap(heap);
    return head->blockSize;
}

void MEMFreeToExpHeap(MEMHeapHandle heap, void* block) {
    Region region;
    MEMiExpHeapMBlockHead* head;
    MEMiExpHeapHead* ext;

    if (!block) {
        return;
    }

    ext = GetExpHeapHeadPtrFromHandle_(heap);
    head = GetMBlockHeadPtr_(block);
    LockHeap(heap);
    GetRegionOfMBlock_(&region, head);
    RemoveMBlock_(&ext->usedBlocks, head);
    RecycleRegion_(ext, &region);
    UnlockHeap(heap);
}

u32 MEMGetTotalFreeSizeForExpHeap(MEMHeapHandle heap) {
    MEMiExpHeapHead* ext = GetExpHeapHeadPtrFromHandle_(heap);
    MEMiExpHeapMBlockHead* block;
    u32 size = 0;

    LockHeap(heap);
    for (block = ext->freeBlocks.head; block; block = block->link.next) {
        size += block->blockSize;
    }
    UnlockHeap(heap);

    return size;
}

u32 MEMGetAllocatableSizeForExpHeapEx(MEMHeapHandle heap, int align) {
    MEMiExpHeapHead* ext;
    MEMiExpHeapMBlockHead* block;
    u32 maxSize;
    u32 x;

    align = __abs(align);
    LockHeap(heap);

    ext = GetExpHeapHeadPtrFromHandle_(heap);
    maxSize = 0;
    x = -1;
    for (block = ext->freeBlocks.head; block; block = block->link.next) {
        void* address = MEM_PTR_ROUNDUP(GetUIntPtr(GetMemPtrForMBlock_(block)), align);

        if (GetUIntPtr(address) < GetUIntPtr(GetMBlockEndAddr_(block))) {
            u32 size = GetOffsetFromPtr(address, GetMBlockEndAddr_(block));
            u32 offset = GetOffsetFromPtr(GetMemPtrForMBlock_(block), address);

            if (maxSize < size || (maxSize == size && x > offset)) {
                maxSize = size;
                x = offset;
            }
        }
    }

    UnlockHeap(heap);
    return maxSize;
}

void MEMVisitAllocatedForExpHeap(MEMHeapHandle heap, void (*visitor)(void* , MEMHeapHandle , u32), u32 param) {
    MEMiExpHeapMBlockHead* block;

    LockHeap(heap);

    for (block = GetExpHeapHeadPtrFromHandle_(heap)->usedBlocks.head; block;) {
        MEMiExpHeapMBlockHead* next = block->link.next;
        (*visitor)(GetMemPtrForMBlock_(block), heap, param);
        block = next;
    }

    UnlockHeap(heap);
}

u32 MEMAdjustExpHeap(MEMHeapHandle heap) {
    MEMiExpHeapHead* ext;
    MEMiExpHeapMBlockHead* block;
    u32 newSize;

    LockHeap(heap);

    ext = GetExpHeapHeadPtrFromHandle_(heap);
    block = ext->freeBlocks.tail;
    if (!block) {
        newSize = 0;
    }
    else if (AddU32ToPtr(GetMemPtrForMBlock_(block), block->blockSize) != heap->heapEnd) {
        newSize = 0;
    }
    else {
        RemoveMBlock_(&ext->freeBlocks, block);
        heap->heapEnd = SubU32ToPtr(heap->heapEnd, block->blockSize + sizeof(MEMiExpHeapMBlockHead));
        newSize = GetOffsetFromPtr(heap, heap->heapEnd);
    }

    UnlockHeap(heap);
    return newSize;
}
