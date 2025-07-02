#ifndef NW4R_SND_FRAME_HEAP_H
#define NW4R_SND_FRAME_HEAP_H

#include <nw4r/snd/types.h>

#include <revolution/mem.h>
#include <revolution/os.h>

#include <nw4r/ut/inlines.h>
#include <nw4r/ut/LinkList.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class FrameHeap {
                public:
                    typedef void (*FreeCallback)(void* buffer, u32 size, void* callbackArg);

                    FrameHeap();
                    ~FrameHeap();

                    bool    Create(void* base, u32 size);
                    void    Destroy();
                    void    Clear();
                    void*   Alloc(u32 size, FreeCallback callback, void* callbackArg);

                    int     SaveState();
                    void    LoadState(int id);

                    int     GetCurrentLevel() const;
                    u32     GetFreeSize() const;

                    bool    IsValid() const { return mHandle != NULL; }

                private:
                    typedef struct Block {
                        ut::LinkListNode    mLink;          // 0x00

                        u32                 mSize;          // 0x08

                        FreeCallback        mCallback;      // 0x0C
                        void*               mCallbackArg;   // 0x10

                        Block(u32 size, FreeCallback callback, void* callbackArg) :
                        mSize(size),
                        mCallback(callback),
                        mCallbackArg(callbackArg) {}

                        ~Block() {
                            if (mCallback != NULL) {
                                mCallback(GetBufferAddr(), mSize, mCallbackArg);
                            }
                        }

                        void* GetBufferAddr() {
                            return ut::AddOffsetToPtr(this, BLOCK_BUFFER_SIZE);
                        }
                    } Block;
                    typedef ut::LinkList<Block,  offsetof(Block, mLink)> BlockList;

                    typedef struct Section {
                        ut::LinkListNode    mLink;      // 0x00
                        BlockList           mBlockList; // 0x08

                        ~Section() {
                            for (BlockList::Iterator it = mBlockList.GetEndIter(); it != mBlockList.GetBeginIter();) {
                                (--it)->~Block();
                            }
                        }

                        void AppendBlock(Block* block) {
                            mBlockList.PushBack(block);
                        }
                    } Section;
                    typedef ut::LinkList<Section, offsetof(Section, mLink)> SectionList;

                    bool    NewSection();
                    void    ClearSection();

                    static const int BLOCK_BUFFER_SIZE = OSRoundUp32B(sizeof(Block));
                    static const int HEAP_ALIGN = 32;

                    MEMHeapHandle   mHandle;        // 0x00
                    SectionList     mSectionList;   // 0x04
            };
        }
    }
}

#endif // NW4R_SND_FRAME_HEAP_H
