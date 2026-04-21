#ifndef NW4R_UT_ARCHIVE_FONT_H
#define NW4R_UT_ARCHIVE_FONT_H

#include <nw4r/ut/ResFont.h>
#include <revolution/cx.h>
#include <revolution/types.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            class ArchiveFontBase : public ResFontBase {
            public:
                ArchiveFontBase();
                virtual ~ArchiveFontBase();

            protected:
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
                    CONSTRUCT_CMD_PREPARE_COPY_SHEET = 0x07,
                    CONSTRUCT_CMD_PREPARE_EXPAND_SHEET = 0x08,
                    CONSTRUCT_CMD_COPY = 0x09,
                    CONSTRUCT_CMD_SKIP = 0x0A,
                    CONSTRUCT_CMD_EXPAND = 0x0B,
                    CONSTRUCT_CMD_FATAL_ERR = 0x0C,
                    CONSTRUCT_CMD_MAX_CMD = 0x0D,
                } ConstructCmd;

                class ConstructContext;
                class CachedStreamReader {
                public:
                    void Init();
                    void Attach(void* data, u32 dataLen);
                    bool RequestData(ConstructContext& ctx, u32 len);

                    u8* advanceData(u32 len);
                    u32 amtAvailableData();
                    u32 amtAvailableCached();
                    u32 amtAvailable();
                    u32 amtAvailableRevLoadOrder();
                    void copyBugged(void* dst, u32 len);
                    void memcpyToWork(ConstructContext& ctx, u32 len);
                    void copyMemmove(void* dst, u32 len);

                    u8* getDataCurr();

                    u8* pDataStart;
                    u8* pDataCurr;
                    u8* pDataEnd;
                    u8* pCachedBase;
                    u8* pCachedStart;
                    u8* pCachedEnd;
                    u32 unk_0x18;
                };
                class ConstructContext {
                public:
                    u32 remWorkSpace();
                    void updateDataOffset(CachedStreamReader& reader);
                    ConstructState requestNewData(CachedStreamReader& reader, u32 amt);
                    FontInformation* pFinf;
                    u32 unk_0x004;
                    FontCodeMap* pMostRecentCMAP;
                    u32 mNextCmd;
                    u32 mNextBlockSig;
                    u32 mNextBlockLen;
                    u32 mDataOffset;
                    CachedStreamReader mReader;
                    CXUncompContextHuffman* pHuffmanCtx;
                    char* pIncludedSubfonts;
                    u16* pSheetOffsets;
                    u8* pWorkStart;
                    u8* pWorkEnd;
                    u8* pWorkCurr;
                    u32 mQueuedCmd;
                    u32 mNextCmdParam;
                    u32 mTotalBlocks;
                    u32 mBlocksParsed;
                    u16 mSheetsHandled;
                    u16 mSheetCount;
                    u16 mGlyphsPerSheet;
                };

                static ConstructState ConstructOpAnalyzeFileHeader(ConstructContext& ctx, CachedStreamReader& reader);
                static ConstructState ConstructOpAnalyzeFINF(ConstructContext& ctx);
                static ConstructState ConstructOpCopy(ConstructContext& ctx, CachedStreamReader& reader);
                static ConstructState ConstructOpSkip(ConstructContext& ctx, CachedStreamReader& reader);
                static ConstructState ConstructOpExpand(ConstructContext& ctx, CachedStreamReader& reader);
                static ConstructState ConstructOpFatalErr(ConstructContext& ctx);

                u16* pSheetOffsets;

                static const char LOAD_GLYPH_ALL[1];

            private:
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
