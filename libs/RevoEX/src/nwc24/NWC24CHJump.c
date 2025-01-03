#include <decomp.h>

#include <revolution/nwc24.h>

#include <string.h>

static u32* NWC24iGetCHJumpTable(const NWC24CHJumpObj* chjp) {
    return ((u32*)(chjp->data));
}

static u32 NWC24iGetCHJumpTableSize(const NWC24CHJumpObj* chjp) {
    return 8 * chjp->header.numBlocks + sizeof(NWC24CHJumpHeader);
}

static u32* NWC24iGetCHJumpEntry(u32* table, u32 idx) {
    return (u32*)(table + 2 * idx);
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
        u32* entry = NWC24iGetCHJumpEntry(table, i);
        if (entry[0] < tableSize) {
            return NWC24_ERR_FORMAT;
        }
        if (entry[0] + entry[1] > chjp->header.totalSize) {
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

    if (chjp->header.numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    *size = NWC24iGetCHJumpEntry(table, index)[1];
    
    return NWC24_OK;
}

NWC24Err NWC24GetCHJumpBlockData(const NWC24CHJumpObj* chjp, char* data, u32 size, u32 index) {
    u32*  table = NWC24iGetCHJumpTable(chjp);
    char* srcData;
    u32   srcSize;

    if (chjp->header.numBlocks <= index) {
        return NWC24_ERR_INVALID_VALUE;
    }

    srcData = (char*)(&NWC24iGetCHJumpEntry(table, index)[0]);
    srcSize = NWC24iGetCHJumpEntry(table, index)[1];

    if (srcSize > size) {
        return NWC24_ERR_OVERFLOW;
    }

    memcpy(data, srcData, srcSize);
    if (srcSize < size) {
        memset(&data[srcSize], 0, size - srcSize);
    }

    return NWC24_OK;
}


