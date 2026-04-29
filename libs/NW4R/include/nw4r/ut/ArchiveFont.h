#ifndef NW4R_UT_ARCHIVE_FONT_H
#define NW4R_UT_ARCHIVE_FONT_H

#include <nw4r/config.h>
#include <nw4r/ut/ResFont.h>
#include <revolution/cx.h>
#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            inline u32 CalcOffsetNameOffsetData() {
                return offsetof(ArchiveFontBinaryLayout, glgr.inner.nameOffsets);
            }

            inline u32 CalcOffsetSheetData(u16 countNames) {
                return ROUNDUP(CalcOffsetNameOffsetData() + countNames * sizeof(u16), 4);
            }
            inline u32 CalcOffset0AData(u16 countNames, u16 countSheets) {
                return ROUNDUP(CalcOffsetSheetData(countNames) + countSheets * sizeof(u32), 4);
            }
            inline u32 CalcOffset0CData(u16 countNames, u16 countSheets, u16 count0A) {
                return ROUNDUP(CalcOffset0AData(countNames, countSheets) + count0A * sizeof(u32), 4);
            }

            inline u32 CalcOffsetSheetFlags(u16 countNames, u16 countSheets, u16 count0A, u16 count0C) {
                return ROUNDUP(CalcOffset0CData(countNames, countSheets, count0A) + count0C * sizeof(u32), 4);
            }
            inline u32 CalcSizeSheetFlagSet(u32 countSheets) {
                return ((s32)countSheets + 0x1f) / 32 * 4;
            }

            inline u32 CalcOffset0AFlags(u16 countNames, u16 countSheets, u16 count0A, u16 count0C) {
                return ROUNDUP(CalcOffsetSheetFlags(countNames, countSheets, count0A, count0C) + countNames * CalcSizeSheetFlagSet(countSheets), 4);
            }
            inline u32 CalcSize0AFlagSet(u32 count0A) {
                return ((s32)count0A + 0x1f) / 32 * 4;
            }

            inline u32 CalcOffset0CFlags(u16 countNames, u16 countSheets, u16 count0A, u16 count0C) {
                return ROUNDUP(CalcOffsetSheetFlags(countNames, countSheets, count0A, count0C) + countNames * CalcSize0AFlagSet(count0A), 4);
            }
            inline u32 CalcSize0CFlagSet(u32 count0C) {
                return ((s32)count0C + 0x1f) / 32 * 4;
            }

            inline u32 CalcSizeSheetOffsets(u32 countSheets) {
                return ROUNDUP(countSheets * sizeof(u16), 4);
            }

            class ArchiveFontBase : public ResFontBase {
            public:
                ArchiveFontBase();
                virtual ~ArchiveFontBase();

                // protected:
                typedef enum {
                    CONSTRUCT_STATE_DATA_REQUESTED = 0x00,
                    CONSTRUCT_STATE_DONE = 0x01,
                    CONSTRUCT_STATE_FATAL_ERR = 0x02,
                    CONSTRUCT_STATE_WORKING = 0x03,
                } ConstructState;

                typedef enum {
                    CONSTRUCT_CMD_DISPATCH = 0x00,
                    CONSTRUCT_CMD_ANALYZE_FILE_HEADER = 0x01,
                    CONSTRUCT_CMD_ANALYZE_GLGR = 0x02,
                    CONSTRUCT_CMD_ANALYZE_FINF = 0x03,
                    CONSTRUCT_CMD_ANALYZE_CMAP = 0x04,
                    CONSTRUCT_CMD_ANALYZE_CWDH = 0x05,
                    CONSTRUCT_CMD_ANALYZE_TGLP = 0x06,
                    CONSTRUCT_CMD_PREPAIR_COPY_SHEET = 0x07,
                    CONSTRUCT_CMD_PREPAIR_EXPAND_SHEET = 0x08,
                    CONSTRUCT_CMD_COPY = 0x09,
                    CONSTRUCT_CMD_SKIP = 0x0A,
                    CONSTRUCT_CMD_EXPAND = 0x0B,
                    CONSTRUCT_CMD_FATAL_ERR = 0x0C,

                    CONSTRUCT_CMD_MAX_CMD = 0x0D,
                    CONSTRUCT_CMD_INVALID = 0x0E,
                } ConstructCmd;

                class ConstructContext;
                class CachedStreamReader {
                public:
                    void Init();
                    void Attach(const void* data, u32 dataLen);
                    bool RequestData(ConstructContext* ctx, u32 len);

                    inline u32 amtAvailableData() { return pDataEnd - pDataCurr; }
                    inline u32 amtAvailableCached() { return pCachedEnd - pCachedStart; }
                    inline u32 amtAvailable() { return amtAvailableData() + amtAvailableCached(); }
                    inline u32 amtAvailableRevLoadOrder();  // Fakematch enabler :(

                    inline void memcpyToBuf(void* buf, u32 len);
                    inline void memcpyToBufRev(void* buf, u32 len);       // Probably a fakematch enabler :(
                    inline void memcpyToBufReaccess(void* buf, u32 len);  // Fakematch enabler :(
                    inline void skipReaccess(u32 len);                    // Fakematch enabler :(

                    inline u32 getCurrentOffset();

                    u8* pDataStart;    // 0x00
                    u8* pDataCurr;     // 0x04
                    u8* pDataEnd;      // 0x08
                    u8* pCachedBase;   // 0x0C
                    u8* pCachedStart;  // 0x10
                    u8* pCachedEnd;    // 0x14
                    u32 unk_0x18;      // 0x18
                };
                class ConstructContext {
                public:
                    inline void getNumSheetsToLoad(u16* sheetsToLoad) const;
                    inline u32 remWorkSpace() const;

                    inline void updateDataOffset(CachedStreamReader* reader);
                    inline ConstructState requestNewData(CachedStreamReader* reader, u32 amt);
                    inline u16 updateTextureBlockFormat();
                    inline u32 updateTextureBlockPtr();

                    inline void enqueueCmds(ConstructCmd first, u32 firstParam, ConstructCmd after) {
                        mNextCmdParam = firstParam;
                        mNextCmd = first;
                        mQueuedCmd = after;
                    }

                    inline void pushCWDH() {
                        FontWidth* cwdh;
                        cwdh = (FontWidth*)pWorkCurr;
                        if (pLastWidth != NULL)
                            pLastWidth->pNext = cwdh;
                        else
                            pFontInfo->pWidth = cwdh;

                        pLastWidth = cwdh;
                    }
                    inline void pushCMAP() {
                        FontCodeMap* cmap;
                        cmap = (FontCodeMap*)pWorkCurr;
                        if (pLastMap != NULL)
                            pLastMap->pNext = cmap;
                        else
                            pFontInfo->pMap = cmap;

                        pLastMap = cmap;
                    }

                    FontInformation* pFontInfo;           // 0x00
                    FontWidth* pLastWidth;                // 0x04
                    FontCodeMap* pLastMap;                // 0x08
                    u32 mNextCmd;                         // 0x0C
                    BinaryBlockHeader mNextBlockHdr;      // 0x10
                    u32 mDataOffset;                      // 0x18
                    CachedStreamReader mReader;           // 0x1C
                    CXUncompContextHuffman* pHuffmanCtx;  // 0x38
                    const char* pIncludedGroups;          // 0x3C
                    u16* pSheetOffsets;                   // 0x40
                    u8* pWorkStart;                       // 0x44
                    u8* pWorkEnd;                         // 0x48
                    u8* pWorkCurr;                        // 0x4C
                    u32 mQueuedCmd;                       // 0x50
                    u32 mNextCmdParam;                    // 0x54
                    u32 mTotalBlocks;                     // 0x58
                    u32 mBlocksParsed;                    // 0x5C
                    u16 mSheetsHandled;                   // 0x60
                    u16 mSheetCount;                      // 0x62
                    u16 mGlyphsPerSheet;                  // 0x64
                };

                static bool IsValidResource(const void* data, u32 maxPreFinfSize);
                CharWidths GetCharWidths(u16 charcode) const;
                void SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo, u16* pSheetOffsets);
                u16 AdjustIndex(u16 glyphIdx) const;
                static bool IncludeName(const char* nameList, const char* testName);

            protected:
                static ConstructState ConstructOpDispatch(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeFileHeader(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeGLGR(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeFINF(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeTGLP(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeCMAP(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpAnalyzeCWDH(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpPrepairCopySheet(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpPrepairExpandSheet(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpCopy(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpSkip(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpExpand(ConstructContext* ctx, CachedStreamReader* reader);
                static ConstructState ConstructOpFatalError(ConstructContext* ctx, CachedStreamReader* reader);

                static const char LOAD_GLYPH_ALL[1];

            private:
                inline static ConstructState handleAdvanceDry(ConstructContext* ctx, CachedStreamReader* reader, u32 advanced);

                u16* pSheetOffsets;  // 0x18

                static const u16 VERSION = NW4R_VERSION(1, 4);
                static const u32 SIGNATURE_FONT_ARCHIVE = 'RFNA';

                static const u32 SIGNATURE_FONT_INFO = 'FINF';  /* Font INFormation */
                static const u32 SIGNATURE_TEX_GLYPH = 'TGLP';  /* Texture GLyPh */
                static const u32 SIGNATURE_CHAR_WIDTH = 'CWDH'; /* Character WiDtH */
                static const u32 SIGNATURE_CODE_MAP = 'CMAP';   /* Code MAP */

                static const u32 SIGNATURE_GLYPH_GROUPS = 'GLGR'; /* GLyph GRoups */
            };
        };  // namespace detail

        class ArchiveFont : public detail::ArchiveFontBase {
        public:
            ArchiveFont();
            virtual ~ArchiveFont();

            static u32 GetRequireBufferSize(const void* param_1, const char* param_2 = LOAD_GLYPH_ALL);

            bool Construct(void* param_1, u32 param_2, const void* param_3, const char* param_4 = LOAD_GLYPH_ALL);
        };
    }  // namespace ut
}  // namespace nw4r

#endif  // NW4R_UT_ARCHIVE_FONT_H
