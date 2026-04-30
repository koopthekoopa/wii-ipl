#include <nw4r/ut/ArchiveFont.h>
#include <nw4r/ut/Font.h>
#include <nw4r/ut/fontResources.h>

#include <string.h>

// Fakematch enablers
#define FORCE_REACCESS_2(VAR, T) (T) * (volatile u16*)&VAR
#define FORCE_REACCESS_4(VAR, T) (T) * (volatile u32*)&VAR

namespace nw4r {
    namespace ut {
        namespace detail {
#define GLYPH_INDEX_NOT_FOUND 0xFFFF
            typedef union {
                u16 formatRaw;
                struct {
                    u16 isCmpr : 1;   // 0x00:1000000000000000
                    u16 format : 15;  // 0x01:0111111111111111
                };
            } FlaggedImageFormat;

            // CachedStreamReader inlined
            u32 ArchiveFontBase::CachedStreamReader::getCurrentOffset() {
                return (pDataCurr - pDataStart) + (pCachedStart - pCachedBase);
            }

            size_t ArchiveFontBase::CachedStreamReader::amtAvailableRevLoadOrder() {
                u32 availableData = amtAvailableData();
                u32 availableCached = amtAvailableCached();
                return availableData + FORCE_REACCESS_4(availableCached, u32);
            }

            void ArchiveFontBase::CachedStreamReader::memcpyToBufRev(void* _dst, u32 copyLen) {
                u32 dataLen;
                u8* dst;
                u32 cachedLen;

                u8* cachedStart;
                u8* cachedEnd;

                dst = (u8*)_dst;
                cachedStart = pCachedStart;
                cachedEnd = pCachedEnd;
                cachedLen = cachedEnd - cachedStart;
                if (cachedLen >= copyLen) {
                    memcpy(dst, cachedStart, copyLen);
                    pCachedStart += copyLen;
                } else {
                    dataLen = copyLen - cachedLen;
                    memcpy(dst, cachedStart, cachedLen);
                    memcpy((u8*)dst + cachedLen, pDataCurr, dataLen);
                    pCachedStart = pCachedEnd;
                    pDataCurr = pDataCurr + dataLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::memcpyToBufReaccess(void* _dst, u32 copyLen) {
                u32 cachedLen;
                u8* dst;
                u32 dataLen;

                u8* cachedStart;
                u8* cachedEnd;

                dst = (u8*)_dst;
                cachedStart = FORCE_REACCESS_4(pCachedStart, u8*);
                cachedEnd = FORCE_REACCESS_4(pCachedEnd, u8*);
                cachedLen = cachedEnd - cachedStart;
                if (cachedLen >= copyLen) {
                    memcpy(dst, cachedStart, copyLen);
                    pCachedStart += copyLen;
                } else {
                    dataLen = copyLen - cachedLen;
                    memcpy(dst, cachedStart, cachedLen);
                    memcpy((u8*)dst + cachedLen, pDataCurr, dataLen);
                    pCachedStart = pCachedEnd;
                    pDataCurr += dataLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::memcpyToBuf(void* _dst, u32 copyLen) {
                u32 cachedLen;
                u8* dst;
                u32 dataLen;

                u8* cachedStart;
                u8* cachedEnd;

                dst = (u8*)_dst;
                cachedStart = pCachedStart;
                cachedEnd = pCachedEnd;
                cachedLen = cachedEnd - cachedStart;
                if (cachedLen >= copyLen) {
                    memcpy(dst, cachedStart, copyLen);
                    pCachedStart += copyLen;
                } else {
                    dataLen = copyLen - cachedLen;
                    memcpy(dst, cachedStart, cachedLen);
                    memcpy((u8*)dst + cachedLen, pDataCurr, dataLen);
                    pCachedStart = pCachedEnd;
                    pDataCurr += dataLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::skipReaccess(u32 skipLen) {
                u8* start;
                u32 dataLen, cachedLen;
                u8* end;

                end = FORCE_REACCESS_4(pCachedEnd, u8*);
                start = FORCE_REACCESS_4(pCachedStart, u8*);
                cachedLen = end - start;
                if (cachedLen > skipLen) {
                    pCachedStart = start + skipLen;
                } else {
                    dataLen = skipLen - cachedLen;
                    pCachedStart = end;
                    pDataCurr += dataLen;
                }
            }

            // CachedStreamReader retained
            void ArchiveFontBase::CachedStreamReader::Init() {
                pDataStart = NULL;
                pDataCurr = NULL;
                pDataEnd = NULL;

                pCachedBase = NULL;
                pCachedStart = NULL;
                pCachedEnd = NULL;

                unk_0x18 = 0;
            }
            void ArchiveFontBase::CachedStreamReader::Attach(const void* data, u32 dataLen) {
                pDataStart = (u8*)data;
                pDataCurr = (u8*)data;
                pDataEnd = (u8*)data + dataLen;
            }

            bool ArchiveFontBase::CachedStreamReader::RequestData(ArchiveFontBase::ConstructContext* ctx, u32 offset) {
                size_t dataLen;
                size_t cachedLen;
                size_t available;

                u8* cachedEnd;
                u8* cachedStart;
                u8* workCurr;
                u8* dst;

                available = amtAvailableData() + amtAvailableCached();
                if (available == 0) {
                    pCachedBase = NULL;
                    pCachedStart = NULL;
                    pCachedEnd = NULL;
                    unk_0x18 = 0;
                } else {
                    if (ctx->remWorkSpace() < (offset << 1))
                        return false;
                    cachedStart = FORCE_REACCESS_4(pCachedStart, u8*);
                    cachedEnd = FORCE_REACCESS_4(pCachedEnd, u8*);
                    workCurr = FORCE_REACCESS_4(ctx->pWorkCurr, u8*);
                    // return ;
                    cachedLen = cachedEnd - cachedStart;

                    dst = workCurr + offset;
                    if (cachedLen >= available) {
                        memmove(dst, cachedStart, available);
                        pCachedStart += available;
                    } else {
                        dataLen = available - cachedLen;
                        memmove(dst, cachedStart, cachedLen);
                        memmove(dst + cachedLen, pDataCurr, dataLen);
                        pCachedStart = pCachedEnd;
                        pDataCurr += dataLen;
                    }
                    pCachedBase = dst;
                    pCachedStart = dst;
                    pCachedEnd = dst + available;
                    unk_0x18 = offset;
                }
                return true;
            }

            // ConstructContext inlined
            u32 ArchiveFontBase::ConstructContext::remWorkSpace() const {
                return pWorkEnd - pWorkCurr;
            }
            void ArchiveFontBase::ConstructContext::updateDataOffset(CachedStreamReader* reader) {
                mDataOffset += (u32)(reader->pDataCurr - reader->pDataStart) + (reader->pCachedStart - reader->pCachedBase);
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructContext::requestNewData(CachedStreamReader* reader, u32 amt) {
                updateDataOffset(reader);
                bool requestSucceeded = reader->RequestData(this, amt);
                if (requestSucceeded)
                    return CONSTRUCT_STATE_DATA_REQUESTED;
                else
                    return CONSTRUCT_STATE_FATAL_ERR;
            }
            void ArchiveFontBase::ConstructContext::getNumSheetsToLoad(u16* sheetsToLoad) const {
                *sheetsToLoad = 0;
                for (int i = 0; i < mSheetCount; i++) {
                    if (pSheetOffsets[i] != GLYPH_INDEX_NOT_FOUND)
                        (*sheetsToLoad)++;
                }
            }
            u16 ArchiveFontBase::ConstructContext::updateTextureBlockFormat() {
                FlaggedImageFormat origSheetFormat;
                origSheetFormat.formatRaw = pFontInfo->pGlyph->sheetFormat;
                pFontInfo->pGlyph->sheetFormat = origSheetFormat.format;
                return origSheetFormat.isCmpr;
            }
            u32 ArchiveFontBase::ConstructContext::updateTextureBlockPtr() {
                u32 imgDataOffset;
                imgDataOffset = (u32)pFontInfo->pGlyph->sheetImage;
                u8* paddedWork = (u8*)(((u32)pWorkCurr + 0x1f) & (~0x1f));
                pWorkCurr = paddedWork;

                pFontInfo->pGlyph->sheetImage = paddedWork;

                return imgDataOffset;
            }

            // ArchiveFontBase retained
            ArchiveFontBase::ArchiveFontBase() : pSheetOffsets(NULL) {
            }
            ArchiveFontBase::~ArchiveFontBase() {
            }

            CharWidths ArchiveFontBase::GetCharWidths(u16 charcode) const {
                u16 glyphIdx, adjGlyphIdx;

                glyphIdx = GetGlyphIndex(charcode);
                adjGlyphIdx = AdjustIndex(glyphIdx);
                if (adjGlyphIdx == GLYPH_INDEX_NOT_FOUND) {
                    glyphIdx = mFontInfo->alterCharIndex;
                }
                return GetCharWidthsFromIndex(glyphIdx);
            }
            void ArchiveFontBase::SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo, u16* pSheetOffsets) {
                ResFontBase::SetResourceBuffer(pUserBuffer, pFontInfo);
                this->pSheetOffsets = pSheetOffsets;
            }
            u16 ArchiveFontBase::AdjustIndex(u16 glyphIdx) const {
                FontTextureGlyph* pTglp = mFontInfo->pGlyph;
                s32 glyphsPerSheet = (u32)pTglp->sheetRow * (u32)pTglp->sheetLine;
                u32 originalSheetIdx = (s32)glyphIdx / glyphsPerSheet;
                if (pSheetOffsets[originalSheetIdx] != GLYPH_INDEX_NOT_FOUND)
                    return glyphIdx - pSheetOffsets[originalSheetIdx];
                else
                    return GLYPH_INDEX_NOT_FOUND;
            }
            bool ArchiveFontBase::IncludeName(const char* groupList, const char* group) {
                u32 groupLen = strlen(group);
                const char* substr = groupList - 1;
                while (true) {
                    substr = strstr(substr + 1, group);
                    if (substr == NULL)
                        return false;

                    // Check that there is nothing but spaces between the substr
                    // and the preceeding comma
                    // - Fails:
                    //   - groupList = "foo, BAD bar, baz"
                    //   - substr                ^
                    // - Succeeds:
                    //   - groupList = "foo, bar, baz"
                    //   - substr            ^
                    // - Succeeds:
                    //   - groupList = "foo,bar,baz"
                    //   - substr           ^
                    // - Succeeds:
                    //   - groupList = "foo,bar,baz"
                    //   - substr       ^
                    // - Fails (I think this is a bug):
                    //   - groupList = " foo, bar, baz"
                    //   - substr        ^
                    // @bug Should allow for leading spaces in groupList (maybe?)
                    if (substr != groupList) {
                        const char* backsearchStr = substr - 1;
                        while (backsearchStr > groupList && *backsearchStr == ' ')
                            backsearchStr--;
                        if (*backsearchStr != ',')
                            continue;
                    }

                    // Get the length of the section up until the next comma or
                    // the end
                    // - substr = "foo bar, baz"     -> sectionLen = 7
                    // - substr = "foo        , baz" -> sectionLen = 11
                    // - substr = "foo"              -> sectionLen = 3
                    const char* nextComma = strchr(substr, ',');
                    u32 sectionLen;
                    if (nextComma != NULL)
                        sectionLen = nextComma - substr;
                    else
                        sectionLen = strlen(substr);

                    // Check to make sure there is nothing except spaces between
                    // the end of the group name and the next comma:
                    // - Fails:
                    //   - substr = "foo bar, baz"
                    //   - group = "foo"
                    // - Succeeds:
                    //   - substr = "foo     , baz"
                    //   - group = "foo"
                    // - Succeeds:
                    //   - substr = "foo, baz"
                    //   - group = "foo"
                    const char* sectionEnd = substr + groupLen;
                    while (sectionEnd < substr + sectionLen && (*sectionEnd == ' '))
                        sectionEnd++;

                    if (sectionEnd == substr + sectionLen)
                        return true;
                }
            }
            bool ArchiveFontBase::IsValidResource(const void* data, u32 maxPreFinfSize) {
                const u8* fileBuf = (u8*)data;
                const BinaryFileHeader* hdr = (const BinaryFileHeader*)fileBuf;
                const BinaryBlockHeader* glgrHdr = (BinaryBlockHeader*)(fileBuf + sizeof(BinaryFileHeader));
                if (!IsValidBinaryFile((const BinaryFileHeader*)fileBuf, SIGNATURE_FONT_ARCHIVE, VERSION, 2)) {
                    return false;
                } else if (glgrHdr->kind != SIGNATURE_GLYPH_GROUPS) {
                    return false;
                } else {
                    return glgrHdr->size + 0x10 <= maxPreFinfSize;
                }
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpDispatch(ConstructContext* ctx, CachedStreamReader* reader) {
                void* nextBlockHdr;

                if (ctx->mBlocksParsed >= ctx->mTotalBlocks)
                    return CONSTRUCT_STATE_DONE;
                if (reader->amtAvailable() < sizeof(BinaryBlockHeader))
                    return ctx->requestNewData(reader, sizeof(BinaryBlockHeader));

                reader->memcpyToBufReaccess(&ctx->mNextBlockHdr, sizeof(BinaryBlockHeader));
                switch (ctx->mNextBlockHdr.kind) {
                    case SIGNATURE_GLYPH_GROUPS:
                        ctx->mNextCmd = CONSTRUCT_CMD_ANALYZE_GLGR;
                        break;
                    case SIGNATURE_FONT_INFO:
                        ctx->mNextCmd = CONSTRUCT_CMD_ANALYZE_FINF;
                        break;
                    case SIGNATURE_CODE_MAP:
                        ctx->mNextCmd = CONSTRUCT_CMD_ANALYZE_CMAP;
                        break;
                    case SIGNATURE_CHAR_WIDTH:
                        ctx->mNextCmd = CONSTRUCT_CMD_ANALYZE_CWDH;
                        break;
                    case SIGNATURE_TEX_GLYPH:
                        ctx->mNextCmd = CONSTRUCT_CMD_ANALYZE_TGLP;
                        break;
                    default:
                        ctx->mNextCmd = CONSTRUCT_CMD_FATAL_ERR;
                        return CONSTRUCT_STATE_FATAL_ERR;
                }
                ctx->mBlocksParsed++;
                ctx->pWorkCurr = (u8*)(((u32)ctx->pWorkCurr + 3) & (~3));
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeFileHeader(ConstructContext* ctx, CachedStreamReader* reader) {
                if (reader->amtAvailable() < sizeof(BinaryFileHeader))
                    return ctx->requestNewData(reader, sizeof(BinaryFileHeader));
                if (ctx->remWorkSpace() < sizeof(BinaryFileHeader))
                    return CONSTRUCT_STATE_FATAL_ERR;

                reader->memcpyToBufReaccess(ctx->pWorkCurr, sizeof(BinaryFileHeader));
                ctx->mNextCmd = CONSTRUCT_CMD_DISPATCH;
                return CONSTRUCT_STATE_WORKING;
            }

            inline void copyGlgr(ArchiveFontBase::ConstructContext* ctx, ArchiveFontBase::CachedStreamReader* reader, u32 glgrInnerLen) {
                BinaryFileHeader* hdr;
                BinaryBlockHeader* glgrHdr;
                GlyphGroups* glgr;

                hdr = (BinaryFileHeader*)ctx->pWorkCurr;

                // Copy the glgr block header to work
                glgrHdr = (BinaryBlockHeader*)((u8*)hdr + sizeof(BinaryFileHeader));
                memcpy(glgrHdr, &ctx->mNextBlockHdr, sizeof(BinaryBlockHeader));

                // Copy the glgr data to work
                glgr = (GlyphGroups*)((u8*)glgrHdr + sizeof(BinaryBlockHeader));
                reader->memcpyToBuf(glgr, glgrInnerLen);
            }
            inline void updateSheetFlags(const void* glgrHdr, u32 groupIdx, u16* sheetOffsets, u32 sheetFlagsSize, const u32* bitBlocksPtr) {
                const GlyphGroups* glgr = (GlyphGroups*)((u8*)glgrHdr + sizeof(BinaryBlockHeader));
                for (int sheetI = 0; sheetI < glgr->sheetCount; sheetI++) {
                    u32 groupBitIdx = sheetI + groupIdx * sheetFlagsSize * 8;

                    const u32* bitBlockPtr = bitBlocksPtr + (groupBitIdx & ~0x1f) / 32;
                    u32 bitBlock = *(u32*)bitBlockPtr;
                    if (((bitBlock << (groupBitIdx & 0x1f)) & 0x80000000) != 0)
                        sheetOffsets[sheetI] = 1;
                }
            }
            inline void setSheetOffsetBooleans(const ArchiveFontBase::ConstructContext* ctx, const void* glgrHdr, const void* hdr, u16* sheetOffsets,
                                               const u32* bitBlocksPtr, u32 sheetFlagsSize) {
                HeaderedGlyphGroups* pGlgr = (HeaderedGlyphGroups*)glgrHdr;

                for (int i = 0; i < pGlgr->inner.sheetCount; i++)
                    sheetOffsets[i] = 0;

                for (int i = 0; i < pGlgr->inner.nameCount; i++) {
                    const char* includedGroups = ctx->pIncludedGroups;
                    u16 offset = pGlgr->inner.nameOffsets[i];
                    char* name = (char*)((u8*)hdr + offset);
                    if (*includedGroups != 0)
                        if (!ArchiveFontBase::IncludeName(includedGroups, name))
                            continue;

                    updateSheetFlags(glgrHdr, i, sheetOffsets, sheetFlagsSize, bitBlocksPtr);
                }
            }
            inline void convertSheetOffsetBooleansToOffsets(const void* glgrHdr, u16* sheetOffsets) {
                HeaderedGlyphGroups* pGlgr = (HeaderedGlyphGroups*)glgrHdr;
                u16 glyphIdxOffset = 0;
                for (int i = 0; i < pGlgr->inner.sheetCount; i++) {
                    if (sheetOffsets[i] == 1) {
                        sheetOffsets[i] = glyphIdxOffset;
                    } else {
                        sheetOffsets[i] = -1;
                        glyphIdxOffset += pGlgr->inner.sheetGlyphCount;
                    }
                }
            }
            inline void copyFlagOffsets(ArchiveFontBase::ConstructContext* ctx, u16* sheetOffsetsScratch, u32 workSize, u32 scratchSize) {
                u8* sheetOffsets = ctx->pWorkCurr;
                ctx->pWorkCurr = sheetOffsets + workSize;
                memmove(sheetOffsets, sheetOffsetsScratch, scratchSize);
                ctx->pSheetOffsets = (u16*)sheetOffsets;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeGLGR(ConstructContext* ctx, CachedStreamReader* reader) {
                ArchiveFontBinaryLayout* font;
                HeaderedGlyphGroups* glgrHdr;
                u8* glgrEnd;

                u32 expectedMaxSize;
                u32 glgrFullLen, glgrInnerLen;

                font = (ArchiveFontBinaryLayout*)ctx->pWorkCurr;

                glgrFullLen = ctx->mNextBlockHdr.size;
                glgrInnerLen = glgrFullLen - sizeof(BinaryBlockHeader);

                // Check for RFNA
                if (font->hdr.signature != SIGNATURE_FONT_ARCHIVE)
                    return CONSTRUCT_STATE_FATAL_ERR;

                // Check that there's enough data available, and the space to
                // put that data
                if (reader->amtAvailable() < glgrInnerLen)
                    return ctx->requestNewData(reader, glgrInnerLen);
                if (ctx->remWorkSpace() < glgrInnerLen)
                    return CONSTRUCT_STATE_FATAL_ERR;

                expectedMaxSize = glgrFullLen + sizeof(BinaryFileHeader);

                // Copy the glgr to work
                {
                    glgrHdr = &font->glgr;
                    glgrEnd = (u8*)glgrHdr + (u32)ctx->mNextBlockHdr.size;

                    memcpy(glgrHdr, &ctx->mNextBlockHdr, sizeof(BinaryBlockHeader));
                    reader->memcpyToBuf(&glgrHdr->inner, glgrInnerLen);
                }

                if (!ArchiveFontBase::IsValidResource(font, expectedMaxSize))
                    return CONSTRUCT_STATE_FATAL_ERR;

                // Before here is fine (other than regswaps)

                // return analyzeGlgrInner(ctx, font, glgrEnd);
                u8* workCurr;
                u32 fontSizeToEndOfGlgr;
                u16 sheetGlyphCount, dataBlockCount;
                u16 countNames, countSheets;
                u32 sheetFlagsSize, sheetOffsetsSize;
                u32* sheetFlagsPtr;
                u32 remWorkSpace;
                u16* sheetOffsetsScratch;
                u32 workSizeNeeded;
                u32 sheetOffsetsScratchSize;

                workCurr = ctx->pWorkCurr;
                glgrHdr = &font->glgr;

                fontSizeToEndOfGlgr = glgrEnd - (u8*)font;

                sheetGlyphCount = font->glgr.inner.sheetGlyphCount;  // 0x1C
                dataBlockCount = font->hdr.dataBlocks;               // 0x0E

                countNames = font->glgr.inner.nameCount;    // 0x1E
                countSheets = font->glgr.inner.sheetCount;  // 0x20

                // sheetFlagsSize, sheetOffsetsSize, sheetFlagsPtr
                {
                    sheetFlagsSize = CalcSizeSheetFlagSet(countSheets);
                    sheetOffsetsSize = CalcSizeSheetOffsets(countSheets);
                    sheetFlagsPtr =
                        (u32*)(CalcOffsetSheetFlags(countNames, countSheets, font->glgr.inner.smthCount_0x0a, font->glgr.inner.smthCount_0x0c) +
                               (u8*)font);
                }
                remWorkSpace = ctx->pWorkEnd - workCurr;

                sheetOffsetsScratch = (u16*)ROUNDDOWN((u32)((u8*)font + remWorkSpace) - sheetOffsetsSize, 2);

                workSizeNeeded = fontSizeToEndOfGlgr + sheetOffsetsSize;
                if (remWorkSpace < workSizeNeeded)
                    return CONSTRUCT_STATE_FATAL_ERR;

                setSheetOffsetBooleans(ctx, glgrHdr, font, sheetOffsetsScratch, sheetFlagsPtr, sheetFlagsSize);

                convertSheetOffsetBooleansToOffsets(glgrHdr, sheetOffsetsScratch);

                sheetOffsetsScratchSize = (u32)countSheets << 1;
                sheetOffsetsScratchSize += (sheetOffsetsScratchSize >> 31);
                sheetOffsetsScratchSize &= ~1;
                copyFlagOffsets(ctx, sheetOffsetsScratch, sheetOffsetsSize, sheetOffsetsScratchSize);

                ctx->mSheetCount = countSheets;
                ctx->mGlyphsPerSheet = sheetGlyphCount;
                ctx->mTotalBlocks = dataBlockCount;
                ctx->mNextCmd = CONSTRUCT_CMD_DISPATCH;

                return CONSTRUCT_STATE_WORKING;
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeFINF(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 innerSize;

                innerSize = ctx->mNextBlockHdr.size - sizeof(BinaryBlockHeader);
                if (ctx->remWorkSpace() < innerSize)
                    return CONSTRUCT_STATE_FATAL_ERR;

                ctx->pFontInfo = (FontInformation*)ctx->pWorkCurr;

                ctx->enqueueCmds(CONSTRUCT_CMD_COPY, innerSize, CONSTRUCT_CMD_DISPATCH);
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeCMAP(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 innerSize;

                ctx->pushCMAP();

                innerSize = ctx->mNextBlockHdr.size - sizeof(BinaryBlockHeader);
                if (ctx->remWorkSpace() < innerSize)
                    return CONSTRUCT_STATE_FATAL_ERR;

                ctx->enqueueCmds(CONSTRUCT_CMD_COPY, innerSize, CONSTRUCT_CMD_DISPATCH);
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeCWDH(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 innerSize;

                ctx->pushCWDH();

                innerSize = ctx->mNextBlockHdr.size - sizeof(BinaryBlockHeader);
                if (ctx->remWorkSpace() < innerSize)
                    return CONSTRUCT_STATE_FATAL_ERR;

                ctx->enqueueCmds(CONSTRUCT_CMD_COPY, innerSize, CONSTRUCT_CMD_DISPATCH);
                return CONSTRUCT_STATE_WORKING;
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeTGLP(ConstructContext* ctx, CachedStreamReader* reader) {
                ConstructCmd prepCmd;
                u16 isCmpr;
                u32 imgDataOffset;
                FlaggedImageFormat origSheetFormat;
                u16 sheetsToLoad;

                if (reader->amtAvailable() < sizeof(FontTextureGlyph))
                    return ctx->requestNewData(reader, sizeof(FontTextureGlyph));
                if (ctx->remWorkSpace() < sizeof(FontTextureGlyph))
                    return CONSTRUCT_STATE_FATAL_ERR;

                ctx->pFontInfo->pGlyph = (FontTextureGlyph*)ctx->pWorkCurr;
                reader->memcpyToBufRev(ctx->pWorkCurr, sizeof(FontTextureGlyph));
                ctx->pWorkCurr += sizeof(FontTextureGlyph);

                origSheetFormat.formatRaw = ctx->pFontInfo->pGlyph->sheetFormat;
                ctx->pFontInfo->pGlyph->sheetFormat = origSheetFormat.format;
                isCmpr = origSheetFormat.isCmpr;

                ctx->getNumSheetsToLoad(&sheetsToLoad);
                ctx->pFontInfo->pGlyph->sheetNum = sheetsToLoad;

                imgDataOffset = ctx->updateTextureBlockPtr();

                prepCmd = isCmpr ? CONSTRUCT_CMD_PREPAIR_EXPAND_SHEET : CONSTRUCT_CMD_PREPAIR_COPY_SHEET;

                ctx->enqueueCmds(CONSTRUCT_CMD_SKIP, imgDataOffset - (ctx->mDataOffset + reader->getCurrentOffset()), prepCmd);
                return CONSTRUCT_STATE_WORKING;
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpPrepairCopySheet(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 sheetSize;

                if (ctx->mSheetsHandled >= ctx->mSheetCount) {
                    ctx->mNextCmd = CONSTRUCT_CMD_DISPATCH;
                    return CONSTRUCT_STATE_WORKING;
                }
                sheetSize = ctx->pFontInfo->pGlyph->sheetSize;
                if (ctx->pSheetOffsets[ctx->mSheetsHandled] != GLYPH_INDEX_NOT_FOUND) {
                    if (ctx->remWorkSpace() < sheetSize)
                        return CONSTRUCT_STATE_FATAL_ERR;
                    ctx->enqueueCmds(CONSTRUCT_CMD_COPY, sheetSize, CONSTRUCT_CMD_PREPAIR_COPY_SHEET);
                } else {
                    ctx->enqueueCmds(CONSTRUCT_CMD_SKIP, sheetSize, CONSTRUCT_CMD_PREPAIR_COPY_SHEET);
                }
                ctx->mSheetsHandled++;
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpPrepairExpandSheet(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 compressedSize, uncompressedSize;
                u8 compressedSizeBuf[4];
                u8 compressedDataHdr[4];

                if (ctx->mSheetsHandled >= ctx->mSheetCount) {
                    ctx->mNextCmd = CONSTRUCT_CMD_DISPATCH;
                    return CONSTRUCT_STATE_WORKING;
                }
                if (reader->amtAvailable() < 8) {
                    ctx->updateDataOffset(reader);
                    bool requestSucceeded = reader->RequestData(ctx, 8);
                    if (requestSucceeded)
                        return CONSTRUCT_STATE_DATA_REQUESTED;
                    else
                        return CONSTRUCT_STATE_FATAL_ERR;
                }
                reader->memcpyToBufReaccess(compressedSizeBuf, 4);
                memcpy(compressedDataHdr, reader->pDataCurr, 4);
                compressedSize = *(u32*)(u8*)compressedSizeBuf;

                uncompressedSize = CXGetUncompressedSize(compressedDataHdr);
                if (ctx->pSheetOffsets[ctx->mSheetsHandled] != GLYPH_INDEX_NOT_FOUND) {
                    if (ctx->remWorkSpace() < compressedSize + sizeof(CXUncompContextHuffman))
                        return CONSTRUCT_STATE_FATAL_ERR;

                    CXInitUncompContextHuffman(ctx->pHuffmanCtx, ctx->pWorkCurr);

                    ctx->enqueueCmds(CONSTRUCT_CMD_EXPAND, compressedSize, CONSTRUCT_CMD_PREPAIR_EXPAND_SHEET);
                    ctx->pWorkCurr += uncompressedSize;
                } else {
                    ctx->enqueueCmds(CONSTRUCT_CMD_SKIP, compressedSize, CONSTRUCT_CMD_PREPAIR_EXPAND_SHEET);
                }
                ctx->mSheetsHandled++;
                return CONSTRUCT_STATE_WORKING;
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::handleAdvanceDry(ConstructContext* ctx, CachedStreamReader* reader, u32 advanced) {
                advanced = ut::Min(advanced, ctx->mNextCmdParam);

                ctx->mNextCmdParam -= advanced;
                if (ctx->mNextCmdParam == 0)
                    ctx->mNextCmd = ctx->mQueuedCmd;
                else
                    return ctx->requestNewData(reader, ctx->mNextCmdParam);

                return ArchiveFontBase::CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpCopy(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 copySize;
                copySize = ut::Min(reader->amtAvailableData(), ctx->mNextCmdParam);

                memcpy(ctx->pWorkCurr, reader->pDataCurr, copySize);
                reader->pDataCurr += copySize;
                ctx->pWorkCurr += copySize;

                return handleAdvanceDry(ctx, reader, copySize);
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpSkip(ConstructContext* ctx, CachedStreamReader* reader) {
                u8* start;
                u32 dataLen, cachedLen;
                u8* end;

                u32 skipSize;

                skipSize = ut::Min(ctx->mNextCmdParam, reader->amtAvailable());

                end = FORCE_REACCESS_4(reader->pCachedEnd, u8*);
                start = FORCE_REACCESS_4(reader->pCachedStart, u8*);
                cachedLen = end - start;
                if (cachedLen > skipSize) {
                    reader->pCachedStart = start + skipSize;
                } else {
                    dataLen = skipSize - cachedLen;
                    reader->pCachedStart = end;
                    reader->pDataCurr += dataLen;
                }

                return handleAdvanceDry(ctx, reader, skipSize);
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpExpand(ConstructContext* ctx, CachedStreamReader* reader) {
                u32 cmprSize;
                u8* src;

                cmprSize = ut::Min(ctx->mNextCmdParam, reader->amtAvailableRevLoadOrder());

                src = reader->pDataCurr;
                reader->pDataCurr += cmprSize;
                CXReadUncompHuffman(ctx->pHuffmanCtx, src, cmprSize);

                return handleAdvanceDry(ctx, reader, cmprSize);
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpFatalError(ConstructContext* ctx, CachedStreamReader* reader) {
                ctx->mNextCmd = CONSTRUCT_CMD_FATAL_ERR;
                return CONSTRUCT_STATE_FATAL_ERR;
            }
        }  // namespace detail
    }  // namespace ut
}  // namespace nw4r
