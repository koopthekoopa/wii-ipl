#include <nw4r/ut/ArchiveFont.h>
#include <nw4r/ut/Font.h>
#include <nw4r/ut/fontResources.h>

#include <string.h>

#define FORCE_REACCESS_1(VAR, T) (T) * (volatile u8*)&VAR
#define FORCE_REACCESS_2(VAR, T) (T) * (volatile u16*)&VAR
#define FORCE_REACCESS_4(VAR, T) (T) * (volatile u32*)&VAR
#define FORCE_REACCESS_8(VAR, T) (T) * (volatile u64*)&VAR

namespace nw4r {
    namespace ut {
        namespace detail {
            u8* ArchiveFontBase::CachedStreamReader::getDataCurr() {
                return pDataCurr;
            }
            u8* ArchiveFontBase::CachedStreamReader::advanceData(u32 len) {
                u8* ret = getDataCurr();
                pDataCurr = pDataCurr + len;
                return ret;
            }
            size_t ArchiveFontBase::CachedStreamReader::amtAvailableData() {
                return FORCE_REACCESS_4(pDataEnd, u8*) - FORCE_REACCESS_4(pDataCurr, u8*);
            }
            size_t ArchiveFontBase::CachedStreamReader::amtAvailableCached() {
                return FORCE_REACCESS_4(pCachedEnd, u8*) - FORCE_REACCESS_4(pCachedStart, u8*);
            }
            size_t ArchiveFontBase::CachedStreamReader::amtAvailable() {
                u32 availableCached = pCachedEnd - pCachedStart;
                u32 availableData = pDataEnd - pDataCurr;
                return FORCE_REACCESS_4(availableData, u32) + FORCE_REACCESS_4(availableCached, u32);
            }
            size_t ArchiveFontBase::CachedStreamReader::amtAvailableRevLoadOrder() {
                u32 availableData = pDataEnd - pDataCurr;
                u32 availableCached = pCachedEnd - pCachedStart;
                return FORCE_REACCESS_4(availableData, u32) + FORCE_REACCESS_4(availableCached, u32);
            }
            void ArchiveFontBase::CachedStreamReader::copyBugged(void* dst, u32 len) {
                u32 cachedLen = pCachedEnd - pCachedStart;
                if (len <= cachedLen) {
                    memmove(dst, pCachedStart, len);
                    pCachedStart += len;
                } else {
                    memmove(dst, pCachedStart, cachedLen);
                    // @bug Should be dst + cachedLen
                    memmove(dst, FORCE_REACCESS_4(pDataCurr, u8*), len - cachedLen);
                    pCachedStart = pCachedEnd;
                    pDataCurr += len - cachedLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::memcpyToWork(ArchiveFontBase::ConstructContext& ctx, u32 copyLen) {
                u32 cachedLen = amtAvailableCached();
                u8* dst = FORCE_REACCESS_4(ctx.pWorkCurr, u8*);
                if (cachedLen >= copyLen) {
                    memcpy(dst, pCachedStart, copyLen);
                    pCachedStart = FORCE_REACCESS_4(pCachedStart, u8*) + copyLen;
                } else {
                    u32 dataLen = copyLen - cachedLen;
                    memcpy(dst, pCachedStart, cachedLen);
                    memcpy((u8*)dst + cachedLen, pDataCurr, dataLen);
                    pCachedStart = FORCE_REACCESS_4(pCachedEnd, u8*);
                    pDataCurr = pDataCurr + dataLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::copyMemmove(void* dst, u32 len) {
                u32 cachedLen = pCachedEnd - pCachedStart;
                if (len <= cachedLen) {
                    memmove(dst, pCachedStart, len);
                    pCachedStart += len;
                } else {
                    memmove(dst, pCachedStart, cachedLen);
                    memmove((u8*)dst + cachedLen, pDataCurr, len - cachedLen);
                    pCachedStart = pCachedEnd;
                    pDataCurr += len - cachedLen;
                }
            }
            void ArchiveFontBase::CachedStreamReader::Init() {
                pDataStart = NULL;
                pDataCurr = NULL;
                pDataEnd = NULL;

                pCachedBase = NULL;
                pCachedStart = NULL;
                pCachedEnd = NULL;

                unk_0x18 = 0;
            }
            void ArchiveFontBase::CachedStreamReader::Attach(void* data, u32 dataLen) {
                pDataStart = (u8*)data;
                pDataCurr = (u8*)data;
                pDataEnd = (u8*)data + dataLen;
            }
            bool ArchiveFontBase::CachedStreamReader::RequestData(ArchiveFontBase::ConstructContext& ctx, u32 offset) {
                size_t available = amtAvailableRevLoadOrder();
                if (available == 0) {
                    pCachedBase = NULL;
                    pCachedStart = NULL;
                    pCachedEnd = NULL;
                    unk_0x18 = 0;
                } else {
                    if (ctx.remWorkSpace() < (offset << 1))
                        return false;
                    size_t cachedLen = amtAvailableCached();

                    u8* dst = FORCE_REACCESS_4(ctx.pWorkCurr, u8*) + offset;
                    if (cachedLen >= available) {
                        memmove(dst, pCachedStart, available);
                        pCachedStart += available;
                    } else {
                        u32 dataLen = available - cachedLen;
                        memmove(dst, pCachedStart, cachedLen);
                        memmove(dst + cachedLen, pDataCurr, dataLen);
                        pCachedStart = pCachedEnd;
                        pDataCurr = FORCE_REACCESS_4(pDataCurr, u8*) + dataLen;
                    }
                    pCachedBase = dst;
                    pCachedStart = dst;
                    pCachedEnd = dst + available;
                    unk_0x18 = offset;
                }
                return true;
            }

            u32 ArchiveFontBase::ConstructContext::remWorkSpace() {
                return FORCE_REACCESS_4(pWorkEnd, u8*) - FORCE_REACCESS_4(pWorkCurr, u8*);
            }
            void ArchiveFontBase::ConstructContext::updateDataOffset(CachedStreamReader& reader) {
                mDataOffset += (u32)(reader.pDataCurr - reader.pDataStart) + (reader.pCachedStart - reader.pCachedBase);
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructContext::requestNewData(CachedStreamReader& reader, u32 amt) {
                updateDataOffset(reader);
                bool requestSucceeded = reader.RequestData(*this, amt);
                if (requestSucceeded)
                    return CONSTRUCT_STATE_DATA_REQUESTED;
                else
                    return CONSTRUCT_STATE_FATAL_ERR;
            }

            ArchiveFontBase::ArchiveFontBase() : pSheetOffsets(NULL) {
            }
            ArchiveFontBase::~ArchiveFontBase() {
            }

            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeFileHeader(ConstructContext& ctx, CachedStreamReader& reader) {
                int iVar1;
                void* cacheStart;
                u32 cachedLen;
                void* fileHdrDest;
                if (reader.amtAvailable() < sizeof(BinaryFileHeader)) {
                    ctx.updateDataOffset(reader);
                    bool requestSucceeded = reader.RequestData(ctx, sizeof(BinaryFileHeader));
                    if (requestSucceeded)
                        return CONSTRUCT_STATE_DATA_REQUESTED;
                    else
                        return CONSTRUCT_STATE_FATAL_ERR;
                }
                if (ctx.remWorkSpace() < sizeof(BinaryFileHeader))
                    return CONSTRUCT_STATE_FATAL_ERR;
                reader.memcpyToWork(ctx, sizeof(BinaryFileHeader));
                ctx.mNextCmd = CONSTRUCT_CMD_DISPATCH;
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpAnalyzeFINF(ConstructContext& ctx) {
                u32 finfInnerSize = ctx.mNextBlockLen - 8;
                if (ctx.remWorkSpace() < finfInnerSize)
                    return CONSTRUCT_STATE_FATAL_ERR;

                ctx.mNextCmdParam = finfInnerSize;
                ctx.pFinf = (FontInformation*)FORCE_REACCESS_4(ctx.pWorkCurr, u8*);

                ctx.mNextCmd = CONSTRUCT_CMD_COPY;
                ctx.mQueuedCmd = CONSTRUCT_CMD_DISPATCH;
                return CONSTRUCT_STATE_WORKING;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpCopy(ConstructContext& ctx, CachedStreamReader& reader) {
                ConstructState newState;
                u32 copySize = reader.pDataEnd - reader.pDataCurr;
                // u32 totalCopySize = ctx.mNextCmdParam;
                if (copySize <= ctx.mNextCmdParam)
                    ;
                else
                    copySize = ctx.mNextCmdParam;
                memcpy(ctx.pWorkCurr, reader.pDataCurr, copySize);
                reader.pDataCurr += copySize;
                ctx.pWorkCurr += copySize;
                if (copySize <= ctx.mNextCmdParam)
                    ;
                else
                    copySize = FORCE_REACCESS_4(ctx.mNextCmdParam, u32);
                u32 remaining = ctx.mNextCmdParam - copySize;
                ctx.mNextCmdParam = remaining;
                if (remaining == 0) {
                    ctx.mNextCmd = ctx.mQueuedCmd;
                    newState = CONSTRUCT_STATE_WORKING;
                } else {
                    return ctx.requestNewData(reader, remaining);
                }
                return newState;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpSkip(ConstructContext& ctx, CachedStreamReader& reader) {
                ConstructState newState;
                register u32 copySize = ctx.mNextCmdParam;
                register u32 available = reader.amtAvailable();
                if (available < ctx.mNextCmdParam)
                    copySize = available;

                available = reader.amtAvailableCached();
                if (copySize < available) {
                    reader.pCachedStart += copySize;
                } else {
                    reader.pDataCurr += copySize - available;
                    reader.pCachedStart = reader.pCachedEnd;
                }

                if (ctx.mNextCmdParam < copySize)
                    copySize = ctx.mNextCmdParam;
                register u32 remaining = ctx.mNextCmdParam - copySize;
                if (remaining == 0) {
                    ctx.mNextCmd = ctx.mQueuedCmd;
                    newState = CONSTRUCT_STATE_WORKING;
                } else {
                    return ctx.requestNewData(reader, remaining);
                }
                return newState;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpExpand(ConstructContext& ctx, CachedStreamReader& reader) {
                ConstructState nextState;
                // register u32 available = reader.pDataEnd - reader.pDataCurr;
                // register u32 availableCached = reader.pCachedEnd - reader.pCachedStart;
                // available += availableCached;
                register u32 available = reader.amtAvailableRevLoadOrder();

                register u32 cmprSize;
                {
                    if (ctx.mNextCmdParam > available)
                        cmprSize = available;
                    else
                        cmprSize = ctx.mNextCmdParam;
                }

                // u8* cmprBuf = reader.advanceData(cmprSize);
                CXReadUncompHuffman(ctx.pHuffmanCtx, reader.advanceData(cmprSize), cmprSize);

                u32 nextCmdParam = ctx.mNextCmdParam;
                if (cmprSize > nextCmdParam)
                    cmprSize = nextCmdParam;
                register u32 remaining = FORCE_REACCESS_4(ctx.mNextCmdParam, u32) - cmprSize;
                ctx.mNextCmdParam = remaining;

                if (remaining == 0) {
                    ctx.mNextCmd = ctx.mQueuedCmd;
                    nextState = CONSTRUCT_STATE_WORKING;
                } else {
                    return ctx.requestNewData(reader, remaining);
                }
                return nextState;
            }
            ArchiveFontBase::ConstructState ArchiveFontBase::ConstructOpFatalErr(ConstructContext& ctx) {
                ctx.mNextCmd = CONSTRUCT_CMD_FATAL_ERR;
                return CONSTRUCT_STATE_FATAL_ERR;
            }
        }  // namespace detail
    }  // namespace ut
}  // namespace nw4r
