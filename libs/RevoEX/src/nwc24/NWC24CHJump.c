#include <decomp.h>

#include <revolution/nwc24.h>

#include <string.h>

typedef struct ChJumpEntry {
    u32 offset; // 0x00
    u32 size;   // 0x04
} ChJumpEntry;

static inline u32* NWC24iGetCHJumpTable(const NWC24CHJumpObj* chjp) {
    return ((u32*)(chjp->data));
}

static inline ChJumpEntry* NWC24iGetCHJumpEntry(const u32* table, u32 idx) {
    return (ChJumpEntry*)(table + (idx * (sizeof(ChJumpEntry)/4)));
}

static inline u32 NWC24iGetCHJumpTableSize(const NWC24CHJumpObj* chjp) {
    return (chjp->header.numBlocks * sizeof(ChJumpEntry)) + sizeof(NWC24CHJumpHeader);
}

NWC24Err NWC24CheckCHJumpObj(const NWC24CHJumpObj* chjp, u32 dataSize) {
    u32 i, tableSize, num;
    u32* table = NWC24iGetCHJumpTable(chjp);

    // Verify magic
    if (chjp->header.magic != 'ChJp') {
        return NWC24_ERR_FORMAT;
    }

    // Check if the data exceeds the limit provided by `dataSize`
    if (chjp->header.totalSize > dataSize) {
        return NWC24_ERR_OVERFLOW;
    }

    // Check the limit of the amount of blocks
    num = chjp->header.numBlocks;
    if (num == 0 || num > NWC24_MAX_CHJP_BLOCKS) {
        return NWC24_ERR_FORMAT;
    }

    tableSize = NWC24iGetCHJumpTableSize(chjp);
    for (i = 0; i < num; i++) {
        ChJumpEntry* entry = NWC24iGetCHJumpEntry(table, i);
        if (entry->offset < tableSize) {
            return NWC24_ERR_FORMAT;
        }
        if (entry->offset + entry->size > chjp->header.totalSize) {
            return NWC24_ERR_FORMAT;
        }
    }

    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpTitleId(const NWC24CHJumpObj* chjp, u64* titleId) {
    *titleId = chjp->header.titleId;
    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpBlockSize(const NWC24CHJumpObj *chjp, u32* size, u32 index) {
    u32* table = NWC24iGetCHJumpTable(chjp);
    ChJumpEntry* entry;

    if (chjp->header.numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    entry = NWC24iGetCHJumpEntry(table, index);
    *size = entry->size;
    
    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index) {
    u32*  table = NWC24iGetCHJumpTable(chjp);
    char* srcData;
    u32   srcSize;

    if (chjp->header.numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    srcData = (char*)(NWC24iGetCHJumpEntry(table, index));
    srcSize = NWC24iGetCHJumpEntry(table, index)->size;

    if (srcSize > size) {
        return NWC24_ERR_OVERFLOW;
    }

    memcpy(data, srcData, srcSize);
    if (srcSize < size) {
        memset(&data[srcSize], 0, size - srcSize);
    }

    return NWC24_OK;
}
