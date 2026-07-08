#include <nw4r/ut/ArchiveFont.h>
#include <nw4r/ut/Font.h>
#include <nw4r/ut/fontResources.h>

#include <nw4r/math/arithmetic.h>

#include <revolution/os.h>

#include <string.h>

namespace nw4r {
    namespace ut {
        ArchiveFont::ArchiveFont() {
        }

        ArchiveFont::~ArchiveFont() {
        }

        u32 ArchiveFont::GetRequireBufferSize(const void* fontData, const char* includedGroups) {
            const HeaderedGlyphGroups* pGlgr;
            const ArchiveFontBinaryLayout* font;

            u16 countName, countSheet, count0A, count0C;

            u32 stepSheets, step0A, step0C;

            u32 dataSheetsOff, data0AOff, data0COff;
            const u32* dataSheets;
            const u32* data0A;
            const u32* data0C;

            u32 flagsSheetsOff, flags0AOff, flags0COff;
            const u32* flagsSheets;
            const u32* flags0A;
            const u32* flags0C;

            int i, j;
            int entryI;
            const HeaderedGlyphGroups* offsetPGlgr;
            u32 loadedSheetCount, loadedSmth0ASize, loadedSmth0CSize;
            u32 flagWord;
            const u8* offsetFlags;
            const char* groupName;
            const u32* offsetData;

            u32 sheetOffsetsSize;
            u32 loadedSheetsSize;
            u32 neededCharacterSize;
            u32 baseSize;

            if (!ArchiveFontBase::IsValidResource(fontData, 0x4000)) {
                return 0;
            }

            font = (ArchiveFontBinaryLayout*)fontData;
            pGlgr = &font->glgr;

            countName = font->glgr.inner.nameCount;
            countSheet = font->glgr.inner.sheetCount;
            count0A = font->glgr.inner.smthCount_0x0a;
            count0C = font->glgr.inner.smthCount_0x0c;

            stepSheets = ((s32)countSheet + 0x1f) / 32 * 4;
            step0A = ((s32)count0A + 0x1f) / 32 * 4;
            step0C = ((s32)count0C + 0x1f) / 32 * 4;

            dataSheetsOff = ROUNDUP(offsetof(ArchiveFontBinaryLayout, glgr.inner.nameOffsets) + countName * sizeof(u16), 4);
            data0AOff = ROUNDUP(dataSheetsOff + countSheet * sizeof(u32), 4);
            data0COff = ROUNDUP(data0AOff + count0A * sizeof(u32), 4);
            dataSheets = lyt::detail::ConvertOffsToPtr<u32>(fontData, dataSheetsOff);
            data0A = lyt::detail::ConvertOffsToPtr<u32>(fontData, data0AOff);
            data0C = lyt::detail::ConvertOffsToPtr<u32>(fontData, data0COff);

            flagsSheetsOff = ROUNDUP(data0COff + count0C * sizeof(u32), 4);
            flags0AOff = ROUNDUP(flagsSheetsOff + stepSheets * countName, 4);
            flags0COff = ROUNDUP(flags0AOff + step0A * countName, 4);

            flagsSheets = lyt::detail::ConvertOffsToPtr<u32>(fontData, flagsSheetsOff);
            flags0A = lyt::detail::ConvertOffsToPtr<u32>(fontData, flags0AOff);
            flags0C = lyt::detail::ConvertOffsToPtr<u32>(fontData, flags0COff);

            loadedSheetCount = 0;
            loadedSmth0ASize = 0;
            loadedSmth0CSize = 0;

            // Get the NUMBER of sheets that should be loaded
            for (i = 0, entryI = 0; entryI < pGlgr->inner.sheetCount; entryI += 0x20, i++) {
                offsetFlags = (const u8*)flagsSheets + i * sizeof(u32);

                flagWord = 0;
                for (j = 0, offsetPGlgr = pGlgr; j < pGlgr->inner.nameCount;
                     offsetPGlgr = (const HeaderedGlyphGroups*)((const u8*)offsetPGlgr + 2), j++) {
                    groupName = (const char*)fontData + offsetPGlgr->inner.nameOffsets[0];
                    if (*includedGroups == '\0' || detail::ArchiveFontBase::IncludeName(includedGroups, groupName)) {
                        flagWord |= *(const u32*)((const u8*)offsetFlags + ROUNDDOWN(j * stepSheets, 4));
                    }
                }

                loadedSheetCount += math::CntBit1(flagWord);
            }
            // getLoadedSheetCount(pGlgr, flagsSheets, stepSheets, fontData, includedGroups, &loadedSheetCount);

            // Get the SIZE of unk_0x0a that should be loaded
            for (i = 0, entryI = 0; entryI < pGlgr->inner.smthCount_0x0a; entryI += 32, i++) {
                offsetFlags = (const u8*)flags0A + i * sizeof(u32);

                flagWord = 0;
                for (j = 0; j < pGlgr->inner.nameCount; j++) {
                    groupName = (const char*)fontData + pGlgr->inner.nameOffsets[j];
                    if (*includedGroups == '\0' || detail::ArchiveFontBase::IncludeName(includedGroups, groupName)) {
                        flagWord |= *(const u32*)((const u8*)offsetFlags + ROUNDDOWN(j * step0A, 4));
                    }
                }

                offsetData = (const u32*)data0A + i * 32;
                for (j = 0; j < 32; j++) {
                    if ((flagWord << j) & 0x80000000U) {
                        loadedSmth0ASize += offsetData[j] - sizeof(BinaryBlockHeader);
                    }
                }
            }

            // Get the SIZE of unk_0x0C that should be loaded
            for (i = 0, entryI = 0; entryI < pGlgr->inner.smthCount_0x0c; entryI += 32, i++) {
                offsetFlags = (const u8*)flags0C + i * sizeof(u32);

                flagWord = 0;
                for (j = 0; j < pGlgr->inner.nameCount; j++) {
                    groupName = (const char*)fontData + pGlgr->inner.nameOffsets[j];
                    if (*includedGroups == '\0' || detail::ArchiveFontBase::IncludeName(includedGroups, groupName)) {
                        flagWord |= *(const u32*)((const u8*)offsetFlags + ROUNDDOWN(j * step0C, 4));
                    }
                }

                offsetData = (const u32*)data0C + i * 32;
                for (j = 0; j < 32; j++) {
                    if ((flagWord << j) & 0x80000000U) {
                        loadedSmth0CSize += offsetData[j] - sizeof(BinaryBlockHeader);
                    }
                }
            }

            // Calculate the final buffer size based on the three previously
            // accessed components
            sheetOffsetsSize = ROUNDUP(pGlgr->inner.sheetCount * 2, 4);
            loadedSheetsSize = ROUNDUP(loadedSheetCount * pGlgr->inner.uncompSheetSize, 4);

            neededCharacterSize = sizeof(CXUncompContextHuffman);
            if (loadedSmth0ASize + loadedSmth0CSize >= sizeof(CXUncompContextHuffman)) {
                neededCharacterSize = loadedSmth0ASize + loadedSmth0CSize;
            }

            baseSize = OSRoundUp32B(sizeof(FontInformation) + sizeof(FontTextureGlyph) + sheetOffsetsSize);
            return baseSize + neededCharacterSize + loadedSheetsSize;
        }

        detail::ArchiveFontBase::ConstructState ArchiveFont::StreamingConstruct(ConstructContext* ctx, const void* fontData, u32 fontDataSize) {
            ConstructState state;
            CachedStreamReader* reader;

            // If there's already data bound, exit early
            if (mFontInfo != NULL) {
                return ctx->mBlocksParsed < ctx->mTotalBlocks ? CONSTRUCT_STATE_FATAL_ERR : CONSTRUCT_STATE_DONE;
            }

            state = CONSTRUCT_STATE_WORKING;
            reader = &ctx->mReader;
            reader->Attach(fontData, fontDataSize);

            while (state == CONSTRUCT_STATE_WORKING) {
                switch (ctx->mNextCmd) {
                    case CONSTRUCT_CMD_DISPATCH: {
                        state = detail::ArchiveFontBase::ConstructOpDispatch(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_FILE_HEADER: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeFileHeader(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_GLGR: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeGLGR(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_FINF: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeFINF(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_CMAP: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeCMAP(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_CWDH: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeCWDH(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_ANALYZE_TGLP: {
                        state = detail::ArchiveFontBase::ConstructOpAnalyzeTGLP(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_PREPAIR_COPY_SHEET: {
                        state = detail::ArchiveFontBase::ConstructOpPrepairCopySheet(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_PREPAIR_EXPAND_SHEET: {
                        state = detail::ArchiveFontBase::ConstructOpPrepairExpandSheet(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_COPY: {
                        state = detail::ArchiveFontBase::ConstructOpCopy(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_SKIP: {
                        state = detail::ArchiveFontBase::ConstructOpSkip(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_EXPAND: {
                        state = detail::ArchiveFontBase::ConstructOpExpand(ctx, reader);
                        break;
                    }
                    case CONSTRUCT_CMD_FATAL_ERR: {
                        state = detail::ArchiveFontBase::ConstructOpFatalError(ctx, reader);
                        break;
                    }
                    default: {
                        ctx->mNextCmd = CONSTRUCT_CMD_FATAL_ERR;
                        state = CONSTRUCT_STATE_FATAL_ERR;
                    }
                }
            }

            // If everything went well, bind the work data to the resource
            // buffer, adjust the alternate character index to respect unloaded
            // sheets, and set the reader function (for displaying strings) to
            // use the encoding in mFontInfo
            if (state == CONSTRUCT_STATE_DONE && mFontInfo == NULL) {
                DCFlushRange(ctx->pWorkStart, ctx->pWorkEnd - ctx->pWorkStart);
                SetResourceBuffer(ctx->pWorkStart, ctx->pFontInfo, ctx->pSheetOffsets);
                if (AdjustIndex(mFontInfo->alterCharIndex) == detail::GLYPH_INDEX_NOT_FOUND) {
                    mFontInfo->alterCharIndex = 0;
                }
                Font::InitReaderFunc(GetEncoding());
            }
            return state;
        }

        bool ArchiveFont::Construct(void* work, u32 workSize, const void* fontData, const char* includedGroups) {
            u32 fontDataSize = ((BinaryFileHeader*)fontData)->fileSize;

            detail::ArchiveFontBase::ConstructContext ctx;
            ctx.mReader.Init();

            // Set up data outlining which groups should be loaded and how they
            // should be used
            ctx.pIncludedGroups = includedGroups;
            ctx.pSheetOffsets = NULL;

            // Set up work pointers
            ctx.pWorkStart = (u8*)work;
            ctx.pWorkEnd = ctx.pWorkStart + workSize;
            ctx.pWorkCurr = ctx.pWorkStart;

            // Setup huffman context at the end of the work buffer
            ctx.pHuffmanCtx = (CXUncompContextHuffman*)ROUNDDOWN((u32)(ctx.pWorkEnd - sizeof(CXUncompContextHuffman)), 4);

            // Queued command params (set up only by other commands, and won't
            // be relevant otherwise)
            ctx.mQueuedCmd = CONSTRUCT_CMD_INVALID;
            ctx.mNextCmdParam = 0;

            ctx.mTotalBlocks = 1;
            ctx.mBlocksParsed = 0;

            // Clear sheet expansion/copy variables
            ctx.mSheetsHandled = 0;
            ctx.mSheetCount = 0;
            ctx.mGlyphsPerSheet = 0;

            // Clear pointers
            ctx.mDataOffset = 0;
            ctx.pFontInfo = NULL;
            ctx.pLastWidth = NULL;
            ctx.pLastMap = NULL;

            // Clear other stuff???
            ctx.mNextCmd = CONSTRUCT_CMD_ANALYZE_FILE_HEADER;

            return StreamingConstruct(&ctx, fontData, fontDataSize) == CONSTRUCT_STATE_DONE;
        }

        void ArchiveFont::GetGlyph(Glyph* glyph, u16 c) const {
            u16 idx = ResFontBase::GetGlyphIndex(c);
            GetGlyphFromIndex(glyph, idx);
        }

        void ArchiveFont::GetGlyphFromIndex(Glyph* glyph, u16 index) const {
            FontTextureGlyph& tg = *mFontInfo->pGlyph;

            u16 realIndex = ArchiveFontBase::AdjustIndex(index);
            if (realIndex == detail::GLYPH_INDEX_NOT_FOUND) {
                index = mFontInfo->alterCharIndex;
                realIndex = ArchiveFontBase::AdjustIndex(index);
            }

            u32 cellsInASheet = tg.sheetRow * tg.sheetLine;
            u32 sheetNo = realIndex / cellsInASheet;

            u32 cellNo = realIndex % cellsInASheet;
            u32 cellUnitX = cellNo % tg.sheetRow;
            u32 cellUnitY = cellNo / tg.sheetRow;
            u32 cellPixelX = cellUnitX * (tg.cellWidth + 1);
            u32 cellPixelY = cellUnitY * (tg.cellHeight + 1);

            u32 offsetBytes = sheetNo * tg.sheetSize;

            void* pSheet = tg.sheetImage + offsetBytes;

            glyph->pTexture = pSheet;
            glyph->widths = GetCharWidthsFromIndex(index);
            glyph->height = static_cast<u8>(tg.cellHeight);
            glyph->texFormat = static_cast<GXTexFmt>(tg.sheetFormat);
            glyph->texWidth = static_cast<u16>(tg.sheetWidth);
            glyph->texHeight = static_cast<u16>(tg.sheetHeight);
            glyph->cellX = cellPixelX + 1;
            glyph->cellY = cellPixelY + 1;
        }
    }  // namespace ut
}  // namespace nw4r
