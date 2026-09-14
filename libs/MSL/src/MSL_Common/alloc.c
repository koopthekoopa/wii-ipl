#include <internal/pool_alloc.h>
#include <string.h>

typedef struct Block {
    struct Block* pPrev;
    struct Block* pNext;
    unsigned int maxSize;
    unsigned int size;
} Block;

typedef struct SubBlock {
    unsigned int size;
    Block* pBlock;
    struct SubBlock* pPrev;
    struct SubBlock* pNext;
} SubBlock;

struct FixSubBlock;

typedef struct FixBlock {
    struct FixBlock* pPrev;
    struct FixBlock* pNext;
    unsigned int clientSize;
    struct FixSubBlock* pStart;
    unsigned int allocatedSize;
} FixBlock;

typedef struct FixSubBlock {
    FixBlock* pBlock;
    struct FixSubBlock* pNext;
} FixSubBlock;

typedef struct FixStart {
    FixBlock* pTail;
    FixBlock* pHead;
} FixStart;

typedef struct __mem_pool_obj {
    Block* pStart;
    FixStart fixStart[6];
} __mem_pool_obj;

static SubBlock* SubBlock_merge_prev(SubBlock*, SubBlock**);
static void SubBlock_merge_next(SubBlock*, SubBlock**);
static SubBlock* Block_subBlock(Block*, unsigned int, unsigned int*);
static void* allocate_from_var_pools(__mem_pool_obj*, unsigned int, unsigned int*);
static void* soft_allocate_from_var_pools(__mem_pool_obj*, unsigned int, unsigned int*);
static void FixBlock_construct(FixBlock*, FixBlock*, FixBlock*, unsigned int, void*, unsigned int);
static void* allocate_from_fixed_pools(__mem_pool_obj*, unsigned int, unsigned int*);
static unsigned int __pool_allocate_resize(__mem_pool_obj*, void*, unsigned int, unsigned int*);

const unsigned int fix_pool_sizes[] = {4, 12, 20, 36, 52, 68};

#define SubBlock_size(ths) ((ths)->size & 0xFFFFFFF8)
#define SubBlock_block(ths) ((Block*)((unsigned int)((ths)->pBlock) & ~0x1))
#define Block_size(ths) ((ths)->size & 0xFFFFFFF8)
#define Block_start(ths) (*(SubBlock**)((char*)(ths) + Block_size((ths)) - sizeof(unsigned int)))

#define SubBlock_set_free(ths)                                                                                                                       \
    unsigned int this_size = SubBlock_size((ths));                                                                                                   \
    (ths)->size &= ~0x2;                                                                                                                             \
    ((SubBlock*)((char*)(ths) + this_size))->size &= ~0x4;                                                                                           \
    *(unsigned int*)((char*)(ths) + this_size - sizeof(unsigned int)) = this_size

#define SubBlock_is_free(ths) !((ths)->size & 2)
#define SubBlock_set_size(ths, sz)                                                                                                                   \
    (ths)->size &= ~0xFFFFFFF8;                                                                                                                      \
    (ths)->size |= (sz) & 0xFFFFFFF8;                                                                                                                \
    if (SubBlock_is_free((ths))) {                                                                                                                   \
        *(unsigned int*)((char*)(ths) + (sz) - sizeof(unsigned int)) = (sz);                                                                         \
    }

#define SubBlock_from_pointer(ptr) ((SubBlock*)((char*)(ptr) - 8))
#define FixSubBlock_from_pointer(ptr) ((FixSubBlock*)((char*)(ptr) - 4))

#define FixBlock_client_size(ths) ((ths)->clientSize)
#define FixSubBlock_size(ths) (FixBlock_client_size((ths)->pBlock))

#define classify(ptr) ((unsigned int)FixSubBlock_from_pointer(ptr)->pBlock & 1)
#define __msize_inline(ptr) (!classify(ptr) ? FixSubBlock_size(FixSubBlock_from_pointer(ptr)) : SubBlock_size(SubBlock_from_pointer(ptr)) - 8)

#define Block_empty(ths) (_sb = (SubBlock*)(ths + 1)), SubBlock_is_free(_sb) && SubBlock_size(_sb) == Block_size((ths)) - 24

void Block_link(Block*, SubBlock*);
void deallocate_from_fixed_pools(__mem_pool_obj*, void*, unsigned int);
void* malloc(unsigned int);
void* calloc(unsigned int, unsigned int);
void* realloc(void*, unsigned int);
void free(void*);

static void SubBlock_construct(SubBlock* ths, unsigned int size, Block* bp, int prev_alloc, int this_alloc) {
    ths->pBlock = (Block*)((unsigned int)bp | 1);
    ths->size = size;
    if (prev_alloc) {
        ths->size |= 4;
    }
    if (this_alloc) {
        ths->size |= 2;
        ((SubBlock*)((char*)ths + size))->size |= 4;
    } else {
        *(unsigned int*)((char*)ths + size - sizeof(unsigned int)) = size;
    }
}

static SubBlock* SubBlock_split(SubBlock* ths, unsigned int sz) {
    unsigned int origsize;
    int isfree;
    int isprevalloc;
    SubBlock* np;
    Block* bp;
    origsize = SubBlock_size(ths);
    isfree = SubBlock_is_free(ths);
    isprevalloc = (int)(ths->size & 4);
    np = (SubBlock*)((char*)ths + sz);
    bp = SubBlock_block(ths);
    SubBlock_construct(ths, sz, bp, isprevalloc, !isfree);
    SubBlock_construct(np, origsize - sz, bp, !isfree, !isfree);
    if (isfree) {
        np->pNext = ths->pNext;
        np->pNext->pPrev = np;
        np->pPrev = ths;
        ths->pNext = np;
    }
    return np;
}

static void Block_unlink(Block* ths, SubBlock* sb) {
    SubBlock** st;
    unsigned int this_size = SubBlock_size(sb);
    sb->size |= 2;
    ((SubBlock*)((char*)sb + this_size))->size |= 4;
    st = &Block_start(ths);
    if (*st == sb) {
        *st = sb->pNext;
    }
    if (*st == sb) {
        *st = NULL;
        ths->maxSize = 0;
    } else {
        sb->pNext->pPrev = sb->pPrev;
        sb->pPrev->pNext = sb->pNext;
    }
}

static SubBlock* SubBlock_merge_prev(SubBlock* ths, SubBlock** start) {
    unsigned int prevsz;
    SubBlock* p;

    if (!(ths->size & 0x04)) {
        prevsz = *(unsigned int*)((char*)ths - sizeof(unsigned int));
        if (prevsz & 0x2) {
            return ths;
        }
        p = (SubBlock*)((char*)ths - prevsz);
        SubBlock_set_size(p, prevsz + SubBlock_size(ths));

        if (*start == ths) {
            *start = (*start)->pNext;
        }
        ths->pNext->pPrev = ths->pPrev;
        ths->pNext->pPrev->pNext = ths->pNext;
        return p;
    }
    return ths;
}

static Block* __unlink(__mem_pool_obj* pool_obj, Block* bp) {
    Block* result = bp->pNext;
    if (result == bp) {
        result = NULL;
    }

    if (pool_obj->pStart == bp) {
        pool_obj->pStart = result;
    }

    if (result != NULL) {
        result->pPrev = bp->pPrev;
        result->pPrev->pNext = result;
    }

    bp->pNext = NULL;
    bp->pPrev = NULL;
    return result;
}

static void deallocate_from_var_pools(__mem_pool_obj* pool_obj, void* ptr) {
    SubBlock* sb = SubBlock_from_pointer(ptr);
    SubBlock* _sb;

    Block* bp = SubBlock_block(sb);
    Block_link(bp, sb);

    if (Block_empty(bp)) {
        __unlink(pool_obj, bp);
        __sys_free(bp);
    }
}

static void __init_pool_obj(__mem_pool* pool_obj) {
    memset(pool_obj, 0, sizeof(__mem_pool_obj));
}

__mem_pool protopool;

static __mem_pool* get_malloc_pool() {
    static unsigned char init = 0;
    if (!init) {
        __init_pool_obj(&protopool);
        init = 1;
    }

    return &protopool;
}

static void __pool_free(__mem_pool* pool, void* ptr) {
    __mem_pool_obj* pool_obj;
    unsigned int size;

    if (ptr == NULL) {
        return;
    }

    pool_obj = (__mem_pool_obj*)pool;
    size = __msize_inline(ptr);

    if (size <= 68) {
        deallocate_from_fixed_pools(pool_obj, ptr, size);
    } else {
        deallocate_from_var_pools(pool_obj, ptr);
    }
}

static void link(__mem_pool_obj* pool, Block* bp) {
    if (pool->pStart != NULL) {
        bp->pPrev = pool->pStart->pPrev;
        bp->pPrev->pNext = bp;
        bp->pNext = pool->pStart;
        pool->pStart->pPrev = bp;
        pool->pStart = bp;
    } else {
        pool->pStart = bp;
        bp->pPrev = bp;
        bp->pNext = bp;
    }
}

static void Block_construct(Block* ths, unsigned int size) {
    SubBlock* sb;

    ths->size = size | 3;
    ((SubBlock*)((char*)ths + size - 8))->size = ths->size;

    sb = (SubBlock*)(ths + 1);
    sb->pBlock = (Block*)((unsigned int)ths | 1);
    sb->size = size - 0x18;
    *(unsigned int*)((char*)sb + (size - 0x18) - sizeof(unsigned int)) = size - 0x18;

    ths->maxSize = size - 0x18;
    Block_start(ths) = NULL;

    Block_link(ths, sb);
}

static Block* link_new_block(__mem_pool_obj* pool, unsigned int size) {
    Block* bp;

    size = (size + 31) & ~7;
    if (size < 0x10000) {
        size = 0x10000;
    }

    bp = (Block*)__sys_alloc(size);
    if (bp == NULL) {
        return NULL;
    }

    Block_construct(bp, size);
    link(pool, bp);
    return bp;
}

static SubBlock* Block_subBlock(Block* bp, unsigned int size, unsigned int* out) {
    SubBlock* st;
    SubBlock* sb;
    unsigned int sb_size;
    unsigned int max_found;
    st = Block_start(bp);
    if (st == NULL) {
        bp->maxSize = 0;
        return NULL;
    }

    sb = st;
    sb_size = SubBlock_size(sb);
    max_found = sb_size;

    while (sb_size < size) {
        sb = sb->pNext;
        sb_size = SubBlock_size(sb);
        if (max_found < sb_size) {
            max_found = sb_size;
        }
        if (sb == st) {
            bp->maxSize = max_found;
            if (out != NULL) {
                *out = max_found - 8;
            }
            return NULL;
        }
    }

    if (sb_size - size >= 0x50) {
        SubBlock_split(sb, size);
    }

    Block_start(bp) = sb->pNext;
    Block_unlink(bp, sb);

    if (out != NULL) {
        *out = SubBlock_size(sb) - 8;
    }

    return sb;
}

static void Block_link(Block* ths, SubBlock* sb) {
    SubBlock** st;
    SubBlock_set_free(sb);
    st = &Block_start(ths);

    if (*st != NULL) {
        sb->pPrev = (*st)->pPrev;
        sb->pPrev->pNext = sb;
        sb->pNext = *st;
        (*st)->pPrev = sb;
        *st = sb;
        *st = SubBlock_merge_prev(*st, st);
        SubBlock_merge_next(*st, st);
    } else {
        *st = sb;
        sb->pPrev = sb;
        sb->pNext = sb;
    }
    if (ths->maxSize < SubBlock_size(*st)) {
        ths->maxSize = SubBlock_size(*st);
    }
}

static void SubBlock_merge_next(SubBlock* pBlock, SubBlock** pStart) {
    SubBlock* next_sub_block;
    unsigned int this_cur_size;

    next_sub_block = (SubBlock*)((char*)pBlock + (pBlock->size & 0xFFFFFFF8));

    if (!(next_sub_block->size & 2)) {
        this_cur_size = (pBlock->size & 0xFFFFFFF8) + (next_sub_block->size & 0xFFFFFFF8);

        pBlock->size &= ~0xFFFFFFF8;
        pBlock->size |= this_cur_size & 0xFFFFFFF8;

        if (!(pBlock->size & 2)) {
            *(unsigned int*)((char*)pBlock + this_cur_size - sizeof(unsigned int)) = this_cur_size;
        }

        if (!(pBlock->size & 2)) {
            ((SubBlock*)((char*)pBlock + this_cur_size))->size &= ~4;
        } else {
            ((SubBlock*)((char*)pBlock + this_cur_size))->size |= 4;
        }

        if (*pStart == next_sub_block) {
            *pStart = (*pStart)->pNext;
        }

        if (*pStart == next_sub_block) {
            *pStart = NULL;
        }

        next_sub_block->pNext->pPrev = next_sub_block->pPrev;
        next_sub_block->pPrev->pNext = next_sub_block->pNext;
    }
}

static void* allocate_from_var_pools(__mem_pool_obj* pool, unsigned int size, unsigned int* out) {
    Block* bp;
    SubBlock* ptr;

    if (out != NULL) {
        *out = 0;
    }

    size = (size + 15) & ~7;
    if (size < 0x50) {
        size = 0x50;
    }

    bp = pool->pStart != NULL ? pool->pStart : link_new_block(pool, size);
    if (bp == NULL) {
        return NULL;
    }

    do {
        if (size <= bp->maxSize) {
            ptr = Block_subBlock(bp, size, out);
            if (ptr != NULL) {
                pool->pStart = bp;
                break;
            }
        }

        bp = bp->pNext;
        if (bp == pool->pStart) {
            bp = link_new_block(pool, size);
            if (bp == NULL) {
                return NULL;
            }
            ptr = Block_subBlock(bp, size, out);
            break;
        }
    } while (1);

    return (char*)ptr + 8;
}

static void* soft_allocate_from_var_pools(__mem_pool_obj* pool, unsigned int size, unsigned int* out) {
    register Block* bp;
    register SubBlock* ptr;

    size = (size + 15) & ~7;
    if (size < 0x50) {
        size = 0x50;
    }
    *out = 0;
    bp = pool->pStart;
    if (bp == NULL) {
        return NULL;
    }

    do {
        if (size <= bp->maxSize) {
            ptr = Block_subBlock(bp, size, NULL);
            if (ptr != NULL) {
                pool->pStart = bp;
                break;
            }
        }
        if (bp->maxSize > 8 && *out < bp->maxSize - 8) {
            *out = bp->maxSize - 8;
        }
        bp = bp->pNext;
        if (bp == pool->pStart) {
            return NULL;
        }
    } while (1);

    return (char*)ptr + 8;
}

static void FixBlock_construct(FixBlock* this, FixBlock* prev, FixBlock* next, unsigned int poolIdx, void* start, unsigned int totalSize) {
    unsigned int fixSubBlockSize;
    unsigned int n;
    char* p;
    unsigned int i;
    char* np;

    this->pPrev = prev;
    this->pNext = next;
    prev->pNext = this;
    next->pPrev = this;
    this->clientSize = fix_pool_sizes[poolIdx];
    fixSubBlockSize = fix_pool_sizes[poolIdx] + 4;
    n = totalSize / fixSubBlockSize;
    p = (char*)start;
    for (i = 0; i < n - 1; ++i) {
        np = p + fixSubBlockSize;
        ((FixSubBlock*)p)->pBlock = this;
        ((FixSubBlock*)p)->pNext = (FixSubBlock*)np;
        p = np;
    }
    ((FixSubBlock*)p)->pBlock = this;
    ((FixSubBlock*)p)->pNext = NULL;
    this->pStart = (FixSubBlock*)start;
    this->allocatedSize = 0;
}

static void* allocate_from_fixed_pools(__mem_pool_obj* pool, unsigned int size, unsigned int* out) {
    unsigned int i = 0;
    FixSubBlock* p;
    FixStart* fs;

    while (size > fix_pool_sizes[i]) {
        ++i;
    }
    fs = &pool->fixStart[i];
    if (fs->pHead == NULL || fs->pHead->pStart == NULL) {
        unsigned int size_requested = 0x1000;
        char* newblock;
        unsigned int size_received;
        unsigned int n, nsave, size_has;

        n = (size_requested - sizeof(FixBlock)) / (fix_pool_sizes[i] + 4);
        if (n > 0x100) {
            n = 0x100;
        }
        nsave = n;
        while (n >= 10) {
            size_requested = n * (fix_pool_sizes[i] + 4) + sizeof(FixBlock);
            newblock = (char*)soft_allocate_from_var_pools(pool, size_requested, &size_has);
            if (newblock != NULL) {
                break;
            }
            if (size_has > sizeof(FixBlock)) {
                n = (size_has - sizeof(FixBlock)) / (fix_pool_sizes[i] + 4);
            } else {
                n = 0;
            }
        }
        if (newblock == NULL) {
            unsigned int cr_backup;
            n = nsave;
            while (1) {
                size_requested = n * (fix_pool_sizes[i] + 4) + sizeof(FixBlock);
                newblock = (char*)allocate_from_var_pools(pool, size_requested, &cr_backup);
                if (newblock != NULL) {
                    break;
                }
                n = cr_backup / (fix_pool_sizes[i] + sizeof(FixBlock) + 4);
                if (n < 10) {
                    if (out != NULL) {
                        *out = 0;
                    }
                    return NULL;
                }
            }
        }
        size_received = __msize_inline(newblock);
        if (fs->pHead == NULL) {
            fs->pHead = (FixBlock*)newblock;
            fs->pTail = (FixBlock*)newblock;
        }
        FixBlock_construct((FixBlock*)newblock, fs->pTail, fs->pHead, i, (FixSubBlock*)((FixBlock*)newblock + 1), size_received - sizeof(FixBlock));
        fs->pHead = (FixBlock*)newblock;
    }
    p = fs->pHead->pStart;
    fs->pHead->pStart = p->pNext;
    ++fs->pHead->allocatedSize;
    if (fs->pHead->pStart == NULL) {
        fs->pHead = fs->pHead->pNext;
        fs->pTail = fs->pTail->pNext;
    }
    if (out != NULL) {
        *out = fix_pool_sizes[i];
    }
    return (char*)p + 4;
}

void deallocate_from_fixed_pools(__mem_pool_obj* pool_obj, void* ptr, unsigned int size) {
    unsigned int i = 0;
    FixSubBlock* p;
    FixBlock* b;
    FixStart* fs;

    while (size > fix_pool_sizes[i]) {
        ++i;
    }

    fs = &pool_obj->fixStart[i];
    p = FixSubBlock_from_pointer(ptr);
    b = p->pBlock;

    if (b->pStart == NULL && fs->pHead != b) {
        if (fs->pTail == b) {
            fs->pHead = fs->pHead->pPrev;
            fs->pTail = fs->pTail->pPrev;
        } else {
            b->pPrev->pNext = b->pNext;
            b->pNext->pPrev = b->pPrev;
            b->pNext = fs->pHead;
            b->pPrev = b->pNext->pPrev;
            b->pPrev->pNext = b;
            b->pNext->pPrev = b;
            fs->pHead = b;
        }
    }

    p->pNext = b->pStart;
    b->pStart = p;

    if (--b->allocatedSize == 0) {
        if (fs->pHead == b) {
            fs->pHead = b->pNext;
        }

        if (fs->pTail == b) {
            fs->pTail = b->pPrev;
        }

        b->pPrev->pNext = b->pNext;
        b->pNext->pPrev = b->pPrev;

        if (fs->pHead == b) {
            fs->pHead = NULL;
        }

        if (fs->pTail == b) {
            fs->pTail = NULL;
        }

        deallocate_from_var_pools(pool_obj, b);
    }
}

static unsigned int __pool_allocate_resize(__mem_pool_obj* pool, void* ptr, unsigned int size, unsigned int* out) {
    unsigned int sz;
    unsigned int this_size;
    unsigned int orig_size;
    SubBlock* sb;
    SubBlock* next_sub;

    orig_size = __msize_inline(ptr);

    if (size == orig_size) {
        if (out != NULL) {
            *out = orig_size;
        }
        return 1;
    }

    if (classify(ptr)) {
        if (size > 0xFFFFFF7F) {
            size = 0xFFFFFF7F;
        }
        sz = size + 8;
        sz = (sz + 7) & ~7;
        if (sz < 0x50) {
            sz = 0x50;
        }

        sb = SubBlock_from_pointer(ptr);
        this_size = orig_size + 8;
        next_sub = (SubBlock*)((char*)sb + this_size);

        if (SubBlock_is_free(next_sub) && sz <= this_size + SubBlock_size(next_sub)) {
            SubBlock_merge_next(sb, &Block_start(SubBlock_block(sb)));
            this_size = SubBlock_size(sb);
        }

        if (this_size >= sz + 0x50) {
            Block_link(SubBlock_block(sb), SubBlock_split(sb, sz));
            this_size = SubBlock_size(sb);
        }

        this_size -= 8;

        if (out != NULL) {
            *out = this_size;
        }

        if (size > orig_size) {
            if (out != NULL && size > this_size && SubBlock_is_free(next_sub)) {
                *out += SubBlock_size(next_sub);
            }
            return size <= this_size;
        }

        return this_size < orig_size;
    }

    if (out != NULL) {
        *out = orig_size;
    }
    return 0;
}

void* malloc(register unsigned int size) {
    void* rv;
    register __mem_pool_obj* pool_obj;

    if (size == 0) {
        goto null_return;
    }

    pool_obj = (__mem_pool_obj*)get_malloc_pool();

    if (size > ~0x30u) {
        return NULL;
    }

    if (size <= 68) {
        rv = allocate_from_fixed_pools(pool_obj, size, NULL);
    } else {
        rv = allocate_from_var_pools(pool_obj, size, NULL);
    }

    return rv;

null_return:
    return NULL;
}

void free(void* ptr) {
    __pool_free(get_malloc_pool(), ptr);
}

void* realloc(void* ptr, unsigned int size) {
    register unsigned int rv = size;
    register __mem_pool_obj* pool;
    unsigned int current_size;
    unsigned int orig_size;

    pool = (__mem_pool_obj*)get_malloc_pool();

    if (ptr == NULL) {
        if (rv > ~0x30u) {
            return NULL;
        }
        if (rv <= 68) {
            return allocate_from_fixed_pools(pool, rv, NULL);
        }
        return allocate_from_var_pools(pool, rv, NULL);
    }

    if (rv == 0) {
        if (ptr != NULL) {
            current_size = __msize_inline(ptr);
            if (current_size <= 68) {
                deallocate_from_fixed_pools(pool, ptr, current_size);
            } else {
                deallocate_from_var_pools(pool, ptr);
            }
        }
        return NULL;
    }

    orig_size = __msize_inline(ptr);
    {
        unsigned int result = __pool_allocate_resize(pool, ptr, rv, NULL);
        if (result || rv <= orig_size) {
            return ptr;
        }
    }

    if (rv > ~0x30u) {
        rv = 0;
    } else if (rv <= 68) {
        rv = (unsigned int)allocate_from_fixed_pools(pool, rv, NULL);
    } else {
        rv = (unsigned int)allocate_from_var_pools(pool, rv, NULL);
    }

    if (rv != 0) {
        memcpy((void*)rv, ptr, orig_size);
        if (ptr != NULL) {
            unsigned int cur_sz = __msize_inline(ptr);
            if (cur_sz <= 68) {
                deallocate_from_fixed_pools(pool, ptr, cur_sz);
            } else {
                deallocate_from_var_pools(pool, ptr);
            }
        }
    }

    return (void*)rv;
}

void* calloc(unsigned int nmemb, unsigned int size) {
    register void* ptr;
    register unsigned int total;
    __mem_pool_obj* pool_obj;

    pool_obj = (__mem_pool_obj*)get_malloc_pool();

    total = size * nmemb;

    if (total > ~0x30u) {
        ptr = NULL;
    } else if (total <= 68) {
        ptr = allocate_from_fixed_pools(pool_obj, total, NULL);
    } else {
        ptr = allocate_from_var_pools(pool_obj, total, NULL);
    }

    if (ptr != NULL) {
        memset(ptr, 0, total);
    }

    return ptr;
}
