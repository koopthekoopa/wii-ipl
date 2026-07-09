#ifndef EGG_CORE_HEAP_H
#define EGG_CORE_HEAP_H

#include <revolution/types.h>

#include <egg/core/eggDisposer.h>
#include <egg/prim/eggBitFlag.h>

#include <nw4r/ut.h>

#include <revolution/mem/allocator.h>

#include <revolution/os/OSInterrupt.h>

namespace EGG {

    // Forward declarations
    class Allocator;
    class ExpHeap;

    class Heap : public Disposer {
    public:
        enum EHeapKind {
            HEAP_KIND_NONE,
            HEAP_KIND_EXPAND,
            HEAP_KIND_FRAME,
            HEAP_KIND_UNIT,
            HEAP_KIND_ASSERT
        };

    public:
        static void initialize();

        static void* alloc(u32 size, int align, Heap* heap) NO_INLINE;
        static void free(void* ptr, Heap* heap) NO_INLINE;

        explicit Heap(MEMiHeapHead* pHeapHandle);
        virtual ~Heap();  // 0x08

        virtual EHeapKind getHeapKind() const = 0;  // 0x0C

        virtual void initAllocator(Allocator* allocator,
                                   s32 align = 4) = 0;  // 0x10

        virtual void* alloc(u32 size, s32 align = 4) = 0;  // 0x14
        virtual void free(void* ptr) = 0;                  // 0x18
        virtual void destroy() = 0;                        // 0x1C

        virtual u32 resizeForMBlock(void* ptr, u32 size) = 0;  // 0x20
        virtual u32 getAllocatableSize(s32 align = 4) = 0;     // 0x24
        virtual u32 adjust() = 0;                              // 0x28

        static Heap* findHeap(MEMiHeapHead* pHeapHandle) NO_INLINE;
        Heap* findParentHeap();
        static Heap* findContainHeap(const void* ptr);

        void dump();

        void dispose();

        Heap* becomeCurrentHeap();
        Heap* _becomeCurrentHeapWithoutLock();

        void* getStartAddress() { return this; }
        void* getEndAddress() { return MEMGetHeapEndAddress(mHeapHandle); }
        s32 getTotalSize() { return static_cast<u8*>(getEndAddress()) - static_cast<u8*>(getStartAddress()); }

        bool isHeapPointer(void* ptr) { return getStartAddress() <= ptr && ptr < getEndAddress(); }

        void disableAllocation() { mFlags.setBit(BIT_DISABLE_ALLOC); }
        void enableAllocation() { mFlags.resetBit(BIT_DISABLE_ALLOC); }
        bool hasDisabledAllocation() { return mFlags.onBit(BIT_DISABLE_ALLOC); }

        void appendDisposer(Disposer* disposer) { nw4r::ut::List_Append(&mDisposerList, disposer); }
        void removeDisposer(Disposer* disposer) { nw4r::ut::List_Remove(&mDisposerList, disposer); }

        static const nw4r::ut::List& getHeapList() { return sHeapList; }
        static Heap* getCurrentHeap() { return sCurrentHeap; }

        static ExpHeap* dynamicCastToExp(Heap* heap) {
            if (heap->getHeapKind() == HEAP_KIND_EXPAND) {
                return reinterpret_cast<ExpHeap*>(heap);
            }

            return NULL;
        }

        static void disableAllocationAllBut(Heap* heap) { sAllocatableHeap = heap; }

        void unkUnline1(int id = 0) {
            BOOL enabled = OSDisableInterrupts();
            _becomeCurrentHeapWithoutLock();
            OSSetThreadSpecific(id, this);
            OSRestoreInterrupts(enabled);
        }
        static Heap* unkInline2(int id = 0) { return (Heap*)OSGetThreadSpecific(id); }

    protected:
        static void* addOffset(void* pBase, u32 offset) { return static_cast<u8*>(pBase) + offset; }

        void registerHeapBuffer(void* pBuffer) { mpHeapBuffer = pBuffer; }

    protected:
        MEMiHeapHead* mHeapHandle;  // 0x10
        void* mpHeapBuffer;         // 0x14
        Heap* mpParentHeap;         // 0x18

    private:
        enum {
            BIT_DISABLE_ALLOC,
        };

        TBitFlag<u16> mFlags;          // 0x1C
        nw4r::ut::Link mLink;          // 0x20
        nw4r::ut::List mDisposerList;  // 0x28

        static Heap* sCurrentHeap;

        static nw4r::ut::List sHeapList;
        static BOOL sIsHeapListInitialized;
        static OSMutex sRootMutex;

        static Heap* sAllocatableHeap;
    };

}  // namespace EGG

void* operator new(size_t size);
void* operator new(size_t size, int align);
void* operator new(size_t size, EGG::Heap* heap, int align = 4);

void* operator new[](size_t size);
void* operator new[](size_t size, int align);
void* operator new[](size_t size, EGG::Heap* heap, int align = 4);

void operator delete(void* ptr) noexcept;
void operator delete[](void* ptr) noexcept;

#endif
