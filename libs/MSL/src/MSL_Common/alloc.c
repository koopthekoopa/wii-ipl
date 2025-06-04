#include <string.h>

#pragma exceptions on

extern void __sys_free(void* ptr);

typedef struct Block {
	struct Block* prev;
	struct Block* next;
	unsigned int max_size;
	unsigned int size;
} Block;

typedef struct SubBlock {
	unsigned int size;
	Block* block;
	struct SubBlock* prev;
	struct SubBlock* next;
} SubBlock;

struct FixSubBlock;

typedef struct FixBlock {
	struct FixBlock* prev_;
	struct FixBlock* next_;
	unsigned int client_size_;
	struct FixSubBlock* start_;
	unsigned int n_allocated_;
} FixBlock;

typedef struct FixSubBlock {
	FixBlock* block_;
	struct FixSubBlock* next_;
} FixSubBlock;

typedef struct FixStart {
	FixBlock* tail_;
	FixBlock* head_;
} FixStart;

typedef struct __mem_pool_obj {
	Block* start_;
	FixStart fix_start[6];
} __mem_pool_obj;

typedef struct __mem_pool {
	void* reserved[14];
} __mem_pool;

typedef int tag_word;

typedef struct block_header {
	tag_word tag;
	struct block_header* prev;
	struct block_header* next;
} block_header;

typedef struct list_header {
	block_header* rover;
	block_header header;
} list_header;

typedef struct heap_header {
	struct heap_header* prev;
	struct heap_header* next;
} heap_header;

struct mem_pool_obj;
typedef void* (*sys_alloc_ptr)(unsigned int, struct mem_pool_obj*);
typedef void (*sys_free_ptr)(void*, struct mem_pool_obj*);

typedef struct pool_options {
	sys_alloc_ptr sys_alloc_func;
	sys_free_ptr sys_free_func;
	unsigned int min_heap_size;
	int always_search_first;
} pool_options;

typedef struct mem_pool_obj {
	list_header free_list;
	pool_options options;
	heap_header* heap_list;
	void* userData;

} mem_pool_obj;

mem_pool_obj __malloc_pool;
static int initialized = 0;

static SubBlock* SubBlock_merge_prev(SubBlock*, SubBlock**);
static void SubBlock_merge_next(SubBlock*, SubBlock**);

static const unsigned int fix_pool_sizes[] = { 4, 12, 20, 36, 52, 68 };

#define SubBlock_size(ths)  ((ths)->size & 0xFFFFFFF8)
#define SubBlock_block(ths) ((Block*)((unsigned int)((ths)->block) & ~0x1))
#define Block_size(ths)     ((ths)->size & 0xFFFFFFF8)
#define Block_start(ths)    (*(SubBlock**)((char*)(ths) + Block_size((ths)) - sizeof(unsigned int)))

#define SubBlock_set_free(ths)                 \
	unsigned int this_size = SubBlock_size((ths));      \
	(ths)->size &= ~0x2;                       \
	*(unsigned int*)((char*)(ths) + this_size) &= ~0x4; \
	*(unsigned int*)((char*)(ths) + this_size - sizeof(unsigned int)) = this_size

#define SubBlock_is_free(ths) !((ths)->size & 2)
#define SubBlock_set_size(ths, sz)    \
	(ths)->size &= ~0xFFFFFFF8;       \
	(ths)->size |= (sz) & 0xFFFFFFF8; \
	if (SubBlock_is_free((ths)))      \
	*(unsigned int*)((char*)(ths) + (sz) - sizeof(unsigned int)) = (sz)

#define SubBlock_from_pointer(ptr)    ((SubBlock*)((char*)(ptr) - 8))
#define FixSubBlock_from_pointer(ptr) ((FixSubBlock*)((char*)(ptr) - 4))

#define FixBlock_client_size(ths) ((ths)->client_size_)
#define FixSubBlock_size(ths)     (FixBlock_client_size((ths)->block_))

#define classify(ptr) (*(unsigned int*)((char*)(ptr) - sizeof(unsigned int)) & 1)
#define __msize_inline(ptr) \
	(!classify(ptr) ? FixSubBlock_size(FixSubBlock_from_pointer(ptr)) : SubBlock_size(SubBlock_from_pointer(ptr)) - 8)

#define Block_empty(ths) (_sb = (SubBlock*)((char*)(ths) + 16)), SubBlock_is_free(_sb) && SubBlock_size(_sb) == Block_size((ths)) - 24

void Block_link(Block* ths, SubBlock* sb) {
	SubBlock** st;
	SubBlock_set_free(sb);
	st = &Block_start(ths);

	if (*st != 0) {
		sb->prev       = (*st)->prev;
		sb->prev->next = sb;
		sb->next       = *st;
		(*st)->prev    = sb;
		*st            = sb;
		*st            = SubBlock_merge_prev(*st, st);
		SubBlock_merge_next(*st, st);
	}
    else {
		*st      = sb;
		sb->prev = sb;
		sb->next = sb;
	}
	if (ths->max_size < SubBlock_size(*st))
		ths->max_size = SubBlock_size(*st);
}

static SubBlock* SubBlock_merge_prev(SubBlock* ths, SubBlock** start) {
	unsigned int prevsz;
	SubBlock* p;

	if (!(ths->size & 0x04)) {
		prevsz = *(unsigned int*)((char*)ths - sizeof(unsigned int));
		if (prevsz & 0x2)
			return ths;
		p = (SubBlock*)((char*)ths - prevsz);
		SubBlock_set_size(p, prevsz + SubBlock_size(ths));

		if (*start == ths)
			*start = (*start)->next;
		ths->next->prev       = ths->prev;
		ths->next->prev->next = ths->next;
		return p;
	}
	return ths;
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
			*(unsigned int*)((char*)(pBlock) + (this_cur_size)-4) = (this_cur_size);
		}

		if (!(pBlock->size & 2)) {
			*(unsigned int*)((char*)pBlock + this_cur_size) &= ~4;
		}
        else {
			*(unsigned int*)((char*)pBlock + this_cur_size) |= 4;
		}

		if (*pStart == next_sub_block) {
			*pStart = (*pStart)->next;
		}

		if (*pStart == next_sub_block) {
			*pStart = 0;
		}

		next_sub_block->next->prev = next_sub_block->prev;
		next_sub_block->prev->next = next_sub_block->next;
	}
}

static Block* __unlink(__mem_pool_obj* pool_obj, Block* bp) {
	Block* result = bp->next;
	if (result == bp) {
		result = 0;
	}

	if (pool_obj->start_ == bp) {
		pool_obj->start_ = result;
	}

	if (result != 0) {
		result->prev       = bp->prev;
		result->prev->next = result;
	}

	bp->next = 0;
	bp->prev = 0;
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

void __init_pool_obj(__mem_pool* pool_obj) { memset(pool_obj, 0, sizeof(__mem_pool_obj)); }

static __mem_pool* get_malloc_pool() {
	static __mem_pool protopool;
	static unsigned char init = 0;
	if (!init) {
		__init_pool_obj(&protopool);
		init = 1;
	}

	return &protopool;
}

void deallocate_from_fixed_pools(__mem_pool_obj* pool_obj, void* ptr, unsigned int size) {
	unsigned int i = 0;
	FixSubBlock* p;
	FixBlock* b;
	FixStart* fs;

	while (size > fix_pool_sizes[i]) {
		++i;
	}

	fs = &pool_obj->fix_start[i];
	p  = FixSubBlock_from_pointer(ptr);
	b  = p->block_;

	if (b->start_ == 0 && fs->head_ != b) {
		if (fs->tail_ == b) {
			fs->head_ = fs->head_->prev_;
			fs->tail_ = fs->tail_->prev_;
		}
        else {
			b->prev_->next_ = b->next_;
			b->next_->prev_ = b->prev_;
			b->next_        = fs->head_;
			b->prev_        = b->next_->prev_;
			b->prev_->next_ = b;
			b->next_->prev_ = b;
			fs->head_       = b;
		}
	}

	p->next_  = b->start_;
	b->start_ = p;

	if (--b->n_allocated_ == 0) {
		if (fs->head_ == b) {
			fs->head_ = b->next_;
		}

		if (fs->tail_ == b) {
			fs->tail_ = b->prev_;
		}

		b->prev_->next_ = b->next_;
		b->next_->prev_ = b->prev_;

		if (fs->head_ == b) {
			fs->head_ = 0;
		}

		if (fs->tail_ == b) {
			fs->tail_ = 0;
		}

		deallocate_from_var_pools(pool_obj, b);
	}
}

void __pool_free(__mem_pool* pool, void* ptr) {
	__mem_pool_obj* pool_obj;
	unsigned int size;

	if (ptr == 0) {
		return;
	}

	pool_obj = (__mem_pool_obj*)pool;
	size     = __msize_inline(ptr);

	if (size <= 68) {
		deallocate_from_fixed_pools(pool_obj, ptr, size);
	}
    else {
		deallocate_from_var_pools(pool_obj, ptr);
	}
}

void free(void* ptr) {
	__pool_free(get_malloc_pool(), ptr);
}
