#include <revolution/nwc24.h>

#include <string.h>

typedef struct CHJumpBlock {
    u32 offset; // 0x00
    u32 size;   // 0x04
} CHJumpBlock;

static const char* GetCHDataPtr(const NWC24CHJumpObj* chjp) {
    return (char*)(chjp->data);
}

static const CHJumpBlock* GetCHJumpBlock(const char* table, u32 idx) {
    return (CHJumpBlock*)(&table[idx * sizeof(CHJumpBlock)]);
}

static u32 GetCHJumpBlockTableSize(const NWC24CHJumpObj* chjp) {
    return (chjp->numBlocks * sizeof(CHJumpBlock)) + NWC24_CHJP_HEADER_SIZE;
}

NWC24Err NWC24CheckCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize) {
    u32                 blockTblSize;
    u32                 num;
    u32                 i;
    int                 offset;
    int                 size;

    const CHJumpBlock*  block;
    const char*           blockTbl = GetCHDataPtr(chjp);

    // Verify magic
    if (chjp->magic != NWC24_CHJP_HEADER_MAGIC) {
        return NWC24_ERR_FORMAT;
    }

    // Check if the data exceeds the limit provided by `dataSize`
    if (chjp->totalSize > dataSize) {
        return NWC24_ERR_OVERFLOW;
    }

    // Check the limit of the amount of blocks
    num = chjp->numBlocks;
    if (num == 0 || num > NWC24_MAX_CHJP_BLOCKS) {
        return NWC24_ERR_FORMAT;
    }

    blockTblSize = GetCHJumpBlockTableSize(chjp);
    for (i = 0; i < num; i++) {
        block = GetCHJumpBlock(blockTbl, i);

        // Check if block data is not outside of the area
        offset = block->offset;
        if (offset < blockTblSize) {
            return NWC24_ERR_FORMAT;
        }
    
        // Check if block does not exceed total CHJump size
        size = block->size;
        if (offset + size > chjp->totalSize) {
            return NWC24_ERR_FORMAT;
        }
    }

    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId) {
    *titleId = chjp->titleId;
    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpBlockSize(const NWC24CHJumpObj* chjp, u32* size, u32 index) {
    const CHJumpBlock*  block;
    const char*           blockTbl = GetCHDataPtr(chjp);

    if (chjp->numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    block = GetCHJumpBlock(blockTbl, index);
    *size = block->size;
    
    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index) {
    const CHJumpBlock*  block;
    const char*         blockTbl = GetCHDataPtr(chjp);

    char* srcData;
    u32 srcSize;

    if (chjp->numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    block = GetCHJumpBlock(blockTbl, index);

    // Get block data and size
    srcData = (char*)&blockTbl[block->offset];
    srcSize = block->size;

    // Make sure they do not overflow
    if (srcSize > size) {
        return NWC24_ERR_OVERFLOW;
    }

    // Copy block data to arguments
    memcpy(data, srcData, srcSize);
    if (srcSize < size) {
        memset(&data[srcSize], 0, size - srcSize);
    }

    return NWC24_OK;
}
