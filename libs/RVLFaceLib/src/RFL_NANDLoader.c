#include <internal/RFLi_LibConfig.h>

#include <RVLFaceLib.h>
#include <RVLFaceLibInternal.h>

#include <internal/RFLi_Debug.h>

#include <revolution/os.h>
#include <revolution/nand.h>

#include <string.h>

static const char* scResFileFullPathName = "/shared2/FaceLib/RFL_Res.dat";

void RFLiInitLoader() {
    int i;

    RFLiNANDLoader* loader = RFLiGetLoader();
    for (i = 0; i < RFLiArcID_Max; i++) {
        loader->archive[i].num = 0;
        loader->archive[i].maxsize = 0;
        loader->archive[i].offset = 0;
    }

    loader->mCacheSize = 0;
    loader->mCacheBuffer = NULL;
    loader->mCached = 0;

    loader->mVersion = 0;

    loader->mHeaderBuf1 = NULL;
    loader->mHeaderBuf2 = NULL;
}

static void parseOnmemoryRes_() {
    RFLiNANDLoader* loader = RFLiGetLoader();
    s32* offset;
    s32 headerpos;
    int i;
    u16* ptr;

    RFLi_ASSERTLINE_NULL(loader->mCached, 69);
    RFLi_ASSERTLINE(loader->mCacheSize > 0, 70);

    offset = loader->mCacheBuffer;
    ptr = (u16*)offset;
    loader->mVersion = ptr[1];
    RFLi_REPORT("RFL: Load Resource Version = %06d\n", loader->mVersion);
    RFLi_ASSERTLINE_MSG(loader->mVersion >= 0x39D, 78, "RFL : resource is old.");

    offset++;
    headerpos = *offset;
    for (i = 0; i < RFLiArcID_Max; i++) {
        s32* offset2;
        u16* head;

        offset2 = loader->mCacheBuffer;
        offset2 += i+1;
        head = (u16*)((u8*)loader->mCacheBuffer + *offset2);

        loader->archive[i].num = head[0];
        loader->archive[i].maxsize = head[1];
        loader->archive[i].offset = *offset2 + 4;
    }
}

static void loadResRead2ndcallback_() {
    RFLiNANDLoader* loader = RFLiGetLoader();
    BOOL doClose = FALSE;
    RFLSimpleCB cb = NULL;

    static const u32 scTmpSize2 = RFL_BUFFER_ALIGN;

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        s32* offset = (s32*)loader->mHeaderBuf1;
        u16 count = loader->mReadCount;

        if (count < RFLiArcID_Max) {
            u16* head = (u16*)loader->mHeaderBuf2;
            offset += count+1;

            loader->archive[count].num = head[0];
            loader->archive[count].maxsize = head[1];
            loader->archive[count].offset = *offset + 4;

            loader->mReadCount++;
            offset++;

            switch (RFLiReadAsync(RFLiFileType_Resource, loader->mHeaderBuf2, scTmpSize2, loadResRead2ndcallback_, *offset)) {
                case RFLErrcode_Busy:
                case RFLErrcode_Success: {
                    break;
                }
                default: {
                    doClose = TRUE;
                    break;
                }
            }
        }
        else {
            doClose = TRUE;
            cb = NULL;
        }
    }
    else {
        doClose = TRUE;
        RFLiSetFileBroken(RFLiFileBrokenType_ResBroken);
    }

    if (doClose) {
        RFLiFree(loader->mHeaderBuf1);
        loader->mHeaderBuf1 = NULL;

        RFLiFree(loader->mHeaderBuf2);
        loader->mHeaderBuf2 = NULL;

        RFLiCloseAsync(RFLiFileType_Resource, cb);
    }
}

static void errclosecallback_() {
    RFLExit();
}

static void loadResRead1stcallback_() {
    RFLiNANDLoader* loader = RFLiGetLoader();
    BOOL doClose = FALSE;

    static const u32 scTmpSize2 = RFL_BUFFER_ALIGN;

    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        s32* offset = (s32*)loader->mHeaderBuf1;
        u16* ptr = (u16*)offset;

        loader->mVersion = ptr[1];
        RFLi_REPORT("RFL: Load Resource Version = %06d\n", loader->mVersion);
        RFLi_ASSERTLINE_MSG(loader->mVersion >= 0x39D, 208, "RFL : resource is old.");

        offset++;

        RFLi_ASSERTLINE(loader->mHeaderBuf2 == 0L /* NULL */, 213);

        loader->mHeaderBuf2 = RFLiAlloc32(scTmpSize2);
        loader->mReadCount = 0;

        switch (RFLiReadAsync(RFLiFileType_Resource, loader->mHeaderBuf2, scTmpSize2, loadResRead2ndcallback_, *offset)) {
            case RFLErrcode_Busy:
            case RFLErrcode_Success: {
                break;
            }
            default: {
                doClose = TRUE;
                break;
            }
        }
    }
    else {
        doClose = TRUE;
        RFLiSetFileBroken(RFLiFileBrokenType_ResBroken);
    }

    if (doClose) {
        RFLiFree(loader->mHeaderBuf1);
        loader->mHeaderBuf1 = NULL;

        if (loader->mHeaderBuf2 != NULL) {
            RFLiFree(loader->mHeaderBuf2);
            loader->mHeaderBuf2 = NULL;
        }

        RFLiCloseAsync(RFLiFileType_Resource, errclosecallback_);
    }
}

static void loadResGetlengthcallback_() {
    {
        RFLiNANDLoader* loader = RFLiGetLoader();
        static const u32 scTmpSize1 = 0x100;

        if (RFLGetAsyncStatus() == RFLErrcode_Success) {
            RFLi_ASSERTLINE(loader->mHeaderBuf1 == 0L /* NULL */, 261);

            loader->mHeaderBuf1 = RFLiAlloc32(scTmpSize1);

            switch (RFLiReadAsync(RFLiFileType_Resource, loader->mHeaderBuf1, scTmpSize1, loadResRead1stcallback_, 0)) {
                case RFLErrcode_Busy:
                case RFLErrcode_Success: {
                    break;
                }
                default: {
                    RFLiFree(loader->mHeaderBuf1);
                    loader->mHeaderBuf1 = NULL;
                    RFLiCloseAsync(RFLiFileType_Resource, NULL);
                    break;
                }
            }
            return;
        }
    }

    RFLiCloseAsync(RFLiFileType_Resource, errclosecallback_);
}

static void loadResOpencallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        u32* store = &RFLiGetLoader()->mCacheSize;
        *store = 0;

        switch (RFLiGetLengthAsync(RFLiFileType_Resource, store,loadResGetlengthcallback_)) {
            case RFLErrcode_Busy:
            case RFLErrcode_Success: {
                break;
            }
            default: {
                RFLiCloseAsync(RFLiFileType_Resource, NULL);
                break;
            }
        }

        return;
    }

    RFLExit();
}

RFLErrcode RFLiLoadResourceHeaderAsync() {
    RFLiNANDLoader* loader = RFLiGetLoader();

    if (loader == NULL) {
        RFLiEndWorking(RFLErrcode_Fatal);
        return RFLErrcode_Fatal;
    }

    RFLi_ASSERTLINE(loader->mHeaderBuf1 == 0L /* NULL */, 327);
    RFLi_ASSERTLINE(loader->mHeaderBuf2 == 0L /* NULL */, 328);

    if (RFLIsResourceCached()) {
        parseOnmemoryRes_();
        RFLiEndWorking(RFLErrcode_Success);
        return RFLErrcode_Busy;
    }

    return RFLiOpenAsync(RFLiFileType_Resource, 1, loadResOpencallback_);
}

static u32 getSafetyLength_(NANDFileInfo* info) {
    u8 buffer[RFL_BUFFER_ALIGN] ATTRIBUTE_ALIGN(RFL_BUFFER_ALIGN);

    if (NANDRead(info, buffer, sizeof(buffer)) == (s32)sizeof(buffer)) {
        return *(u16*)&buffer[0];
    }
    else {
        return NULL;
    }
}

static u32 getCachedLength_(RFLiNANDLoader* loader, RFLiArcID arcID, u16 index) {
    RFLiNANDArchive* arc;
    u32* pos;
    u8* head;

    head = (u8*)loader->mCacheBuffer;
    arc = &loader->archive[arcID];
    pos = (u32*)(head + arc->offset);

    return pos[index+1] - pos[index];
}

static u32 getNANDLength_(RFLiNANDLoader* loader, RFLiArcID arcID, u16 index) {
    RFLiNANDArchive* arc;
    void* buffer;
    NANDFileInfo file;
    u32 ret = FALSE;

    static const u32 scTmpSize = 0x400;

    buffer = RFLiAlloc32(scTmpSize);
    arc = &loader->archive[arcID];

    if (NANDPrivateOpen(scResFileFullPathName, &file, NAND_ACCESS_READ) == NAND_RESULT_OK) {
        u32 readSize = OSRoundUp32B(arc->num * 4+4);
        RFLi_ASSERTLINE(readSize <= scTmpSize, 413);

        NANDSeek(&file, arc->offset, NAND_SEEK_BEG);

        if (NANDRead(&file, buffer, readSize) == readSize) {
            u32* pos = buffer;
            ret = pos[index+1] - pos[index];
        }

        NANDClose(&file);
    }
    RFLiFree(buffer);

    return ret;
}

static u32 getLength_(RFLiArcID arcID, u16 index) {
    RFLiNANDLoader* loader = RFLiGetLoader();
    RFLiNANDArchive* arc;

    if (loader == NULL) {
        return 0;
    }

    arc = &loader->archive[arcID];
    if (index >= arc->num) {
        return 0;
    }

    if (RFLIsResourceCached()) {
        return getCachedLength_(loader, arcID, index);
    }

    return getNANDLength_(loader, arcID, index);
}

static void* getCachedFile_(void* dst, RFLiNANDLoader* loader, RFLiArcID arcID, u16 index) {
    RFLiNANDArchive* arc;
    void* ret;
    u8* head;
    u32* pos;
    s32 glbOffset;
    u32 fileSize;

    ret = NULL;

    head = loader->mCacheBuffer;
    arc = &loader->archive[arcID];
    pos = (u32*)(head + arc->offset);

    glbOffset = (arc->offset + (arc->num * 4)) + 4 + pos[index];
    fileSize = pos[index+1] - pos[index];
    memcpy(dst, head + glbOffset, fileSize);

    ret = dst;

    return ret;
}

static void* getNANDFile_(void* dst, RFLiNANDLoader* loader, RFLiArcID arcID, u16 index) {
    RFLiNANDArchive* arc;
    NANDFileInfo file;

    u8* buffer1 = NULL;
    u8* buffer2 = NULL;
    void* ret = NULL;

    static const u32 scTmpSize1 = 0x400;

    arc = &loader->archive[arcID];
    buffer1 = RFLiAlloc32(scTmpSize1);

    if (NANDPrivateOpen(scResFileFullPathName, &file, NAND_ACCESS_READ) == NAND_RESULT_OK) {
        u32 readSize, offsetSize;
        s32 glbOffset;
        u32 fileSize, fileOffset;
        u32* pos;

        readSize = OSRoundUp32B(arc->num * 4+4);
        fileSize = 0;
        fileOffset = 0;

        RFLi_ASSERTLINE(readSize <= scTmpSize1, 523);

        NANDSeek(&file, arc->offset, NAND_SEEK_BEG);
        
        if (NANDRead(&file, buffer1, readSize) == readSize) {
            pos = (u32*)buffer1;
            fileSize = pos[index+1] - pos[index];
            fileOffset = pos[index];
        }
        else {
            RFLiSetFileBroken(RFLiFileBrokenType_ResBroken);
            RFLiFree(buffer1);
            return NULL;
        }

        glbOffset = (arc->offset + (arc->num * 4)) + 4 + fileOffset;
        offsetSize = OSRoundUp32B(fileSize);
        buffer2 = RFLiAlloc32(offsetSize);
        NANDSeek(&file, glbOffset, NAND_SEEK_BEG);
        if (NANDRead(&file, buffer2, offsetSize) == offsetSize) {
            memcpy(dst, buffer2, fileSize);
            ret = dst;
        }
        else {
            RFLiSetFileBroken(RFLiFileBrokenType_ResBroken);
            RFLiFree(buffer1);
            RFLiFree(buffer2);
            return NULL;
        }

        RFLiFree(buffer2);
        NANDClose(&file);
    }
    else {
        RFLiSetFileBroken(RFLiFileBrokenType_ResBroken);
    }

    RFLiFree(buffer1);

    return ret;
}

static void* getFile_(void* dst, RFLiArcID arcID, u16 index) {
    RFLiNANDLoader* loader = NULL;
    RFLiNANDArchive* arc;

    if (!RFLAvailable()) {
        return NULL;
    }

    loader = RFLiGetLoader();
    if (loader == NULL) {
        return NULL;
    }

    arc = &loader->archive[arcID];
    if (index >= arc->num) {
        return NULL;
    }

    if (RFLIsResourceCached()) {
        return getCachedFile_(dst, loader, arcID, index);
    }

    return getNANDFile_(dst, loader, arcID, index);
}

u32 RFLiGetTexSize(RFLiPartsTex parts, u16 index) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_Eye, RFLiArcID_Eyebrow, RFLiArcID_Mouth, RFLiArcID_Mustache, RFLiArcID_Mole };
    return getLength_(scParts2Arc[parts], index);    
}

RFLTexture* RFLiLoadTexture(RFLiPartsTex parts, u16 index, void* texBuffer) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_Eye, RFLiArcID_Eyebrow, RFLiArcID_Mouth, RFLiArcID_Mustache, RFLiArcID_Mole };
    return getFile_(texBuffer, scParts2Arc[parts], index);
}

u32 RFLiGetShpTexSize(RFLiPartsShpTex parts, u16 index) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_FaceTex, RFLiArcID_CapTex, RFLiArcID_NlineTex, RFLiArcID_GlassTex };
    return getLength_(scParts2Arc[parts], index);
}

RFLTexture* RFLiLoadShpTexture(RFLiPartsShpTex parts, u16 index, void* texBuffer) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_FaceTex, RFLiArcID_CapTex, RFLiArcID_NlineTex, RFLiArcID_GlassTex };
    return getFile_(texBuffer, scParts2Arc[parts], index);
}

u32 RFLiGetShapeSize(RFLiPartsShp parts, u16 index) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_Nose, RFLiArcID_ForeHead, RFLiArcID_Faceline, RFLiArcID_Hair, RFLiArcID_Cap, RFLiArcID_Beard, RFLiArcID_Nline, RFLiArcID_Mask, RFLiArcID_Glass };
    return getLength_(scParts2Arc[parts], index);
}

void* RFLiLoadShape(RFLiPartsShp parts, u16 index, void* shpBuffer) {
    static const RFLiArcID scParts2Arc[] = { RFLiArcID_Nose, RFLiArcID_ForeHead, RFLiArcID_Faceline, RFLiArcID_Hair, RFLiArcID_Cap, RFLiArcID_Beard, RFLiArcID_Nline, RFLiArcID_Mask, RFLiArcID_Glass };
    return getFile_(shpBuffer, scParts2Arc[parts], index);
}

static void cachereadcallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiGetLoader()->mCached = TRUE;
    }
    RFLiCloseAsync(RFLiFileType_Resource, NULL);
}

static void cacheopencallback_() {
    if (RFLGetAsyncStatus() == RFLErrcode_Success) {
        RFLiNANDLoader* loader = RFLiGetLoader();
        RFLiReadAsync(RFLiFileType_Resource, loader->mCacheBuffer, loader->mCacheSize, cachereadcallback_, 0);
    }
}

RFLErrcode RFLCacheResource(void* resBuffer, u32 resSize) {
    RFLiNANDLoader* loader = NULL;
    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    loader = RFLiGetLoader();
    if (loader == NULL) {
        return RFLErrcode_NotAvailable;
    }

    if (loader->mCached) {
        return RFLErrcode_NotAvailable;
    }

    loader->mCacheBuffer = resBuffer;
    loader->mCacheSize = resSize;
    loader->mCached = TRUE;

    return RFLErrcode_Success;
}

RFLErrcode RFLFreeCachedResource() {
    RFLiNANDLoader* loader = NULL;
    if (!RFLAvailable()) {
        return RFLErrcode_NotAvailable;
    }

    if (RFLiIsWorking()) {
        return RFLErrcode_NotAvailable;
    }

    loader = RFLiGetLoader();
    if (loader == NULL) {
        return RFLErrcode_NotAvailable;
    }

    loader->mCached = FALSE;
    loader->mCacheBuffer = NULL;
    loader->mCacheSize = 0;

    return RFLErrcode_Success;
}

BOOL RFLIsResourceCached() {
    RFLiNANDLoader* loader = NULL;
    if (!RFLAvailable()) {
        return FALSE;
    }

    loader = RFLiGetLoader();
    if (loader == NULL) {
        return FALSE;
    }

    return loader->mCached;
}

u16 RFLGetResourceVersion() {
    RFLiNANDLoader* loader;
    if (!RFLAvailable()) {
        return 0;
    }

    loader = RFLiGetLoader();
    if (loader == NULL) {
        return 0;
    }

    return loader->mVersion;
}
