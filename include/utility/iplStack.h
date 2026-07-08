#ifndef IPL_STACK_H
#define IPL_STACK_H

#include <revolution/types.h>

#include <string.h>

namespace ipl {
    namespace ut {
        class FreeList {
        public:
            struct Block {
                Block* next;
                u8 data[];
            };

            FreeList() : mpFreeTop(NULL), mStride(0), mpBuffer(NULL) {}

            void init(void* buf, u32 stride, u32 count) {
                mpFreeTop = (Block*)buf;

                Block* ptrBuf = mpFreeTop;
                int i;
                u32 ptrsStride = stride / sizeof(Block*);
                for (i = 0; i < count - 1; i++) {
                    ptrBuf[ptrsStride * i].next = &ptrBuf[ptrsStride * (i + 1)];
                }
                ptrBuf[ptrsStride * (count - 1)].next = NULL;

                mStride = stride;
                mpBuffer = buf;
            }

            Block* get() {
                Block* out = mpFreeTop;
                if (out == NULL)
                    return NULL;

                mpFreeTop = mpFreeTop->next;
                return out;
            }
            void release(Block* block) {
                block->next = mpFreeTop;
                mpFreeTop = block;
            }

            void* getBuf() { return mpBuffer; }

        private:
            Block* mpFreeTop;  // 0x00
            u32 mStride;       // 0x04
            void* mpBuffer;    // 0x08
        };

        class Stack : private FreeList {
        public:
            Stack() : pStackTop(NULL), mStackElSize(0), mCount(0) {}

            void init(void* buf, u32 elSize, u32 count) {
                FreeList::init(buf, elSize + 4, count);

                mStackElSize = elSize;
                pStackTop = NULL;
                mCount = 0;
            }

            bool pop(void* data) {
                Block* popped = pStackTop;
                if (popped != NULL) {
                    if (data != NULL) {
                        memcpy(data, popped->data, mStackElSize);
                    }
                    pStackTop = popped->next;
                    release(popped);
                    mCount--;
                    return true;
                } else {
                    return false;
                }
            }

            bool push(const void* data) {
                FreeList::Block* newBlock = get();
                if (newBlock != NULL) {
                    memcpy(newBlock->data, data, mStackElSize);
                    newBlock->next = pStackTop;
                    pStackTop = newBlock;
                    mCount++;
                    return true;
                } else {
                    return false;
                }
            }

            void* getBuf() { return FreeList::getBuf(); }

            static inline u32 getRequiredBufSize(u32 capacity, u32 elSize) { return (elSize + sizeof(FreeList::Block)) * capacity; }

        private:
            FreeList::Block* pStackTop;  // 0x0c
            u32 mStackElSize;            // 0x10
            u32 mCount;                  // 0x14
        };
    }  // namespace ut
}  // namespace ipl

#endif  // IPL_STACK_H
