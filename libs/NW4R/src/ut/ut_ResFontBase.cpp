#include <nw4r/ut/ResFont.h>
#include <nw4r/ut/Font.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            #define GLYPH_INDEX_NOT_FOUND    0xFFFF

            typedef struct CMapScanEntry {
                u16 ccode;  // 0x00
                u16 index;  // 0x02
            } CMapScanEntry;

            typedef struct CMapInfoScan {
                u16             num;        // 0x00
                CMapScanEntry   entries[];  // 0x02
            } CMapInfoScan;

            ResFontBase::ResFontBase() :
            mResource(NULL),
            mFontInfo(NULL) {}

            ResFontBase::~ResFontBase() {}

            void ResFontBase::SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo) {
                mResource = pUserBuffer;
                mFontInfo = pFontInfo;
            }

            int ResFontBase::GetWidth() const {
                return mFontInfo->width;
            }

            int ResFontBase::GetHeight() const {
                return mFontInfo->height;
            }

            int ResFontBase::GetAscent() const {
                return mFontInfo->ascent;
            }

            int ResFontBase::GetDescent() const {
                return mFontInfo->height - mFontInfo->ascent;
            }

            int ResFontBase::GetBaselinePos() const {
                return mFontInfo->pGlyph->baselinePos;
            }

            int ResFontBase::GetCellHeight() const {
                return mFontInfo->pGlyph->cellHeight;
            }

            int ResFontBase::GetCellWidth() const {
                return mFontInfo->pGlyph->cellWidth;
            }

            int ResFontBase::GetMaxCharWidth() const {
                return mFontInfo->pGlyph->maxCharWidth;
            }

            Font::Type ResFontBase::GetType() const {
                return TYPE_RESOURCE;
            }

            GXTexFmt ResFontBase::GetTextureFormat() const {
                return static_cast<GXTexFmt>(mFontInfo->pGlyph->sheetFormat);
            }

            int ResFontBase::GetLineFeed() const {
                return mFontInfo->linefeed;
            }

            CharWidths ResFontBase::GetDefaultCharWidths() const {
                return mFontInfo->defaultWidth;
            }

            void ResFontBase::SetDefaultCharWidths(const CharWidths& widths) {
                mFontInfo->defaultWidth = widths;
            }

            bool ResFontBase::SetAlternateChar(u16 c) {
                u16 index = FindGlyphIndex(c);

                if (index != GLYPH_INDEX_NOT_FOUND) {
                    mFontInfo->alterCharIndex = index;
                    return true;
                }
                else {
                    return false;
                }
            }

            void ResFontBase::SetLineFeed(int linefeed) {
                mFontInfo->linefeed = linefeed;
            }

            int ResFontBase::GetCharWidth(u16 c) const {
                return GetCharWidths(c).charWidth;
            }

            CharWidths ResFontBase::GetCharWidths(u16 c) const {
                u16 index = GetGlyphIndex(c);
                return GetCharWidthsFromIndex(index);
            }

            void ResFontBase::GetGlyph(Glyph* glyph, u16 c) const {
                u16 index = GetGlyphIndex(c);
                GetGlyphFromIndex(glyph, index);
            }

            FontEncoding ResFontBase::GetEncoding() const {
                return static_cast<FontEncoding>(mFontInfo->encoding);
            }

            u16 ResFontBase::GetGlyphIndex(u16 c) const {
                u16 index = FindGlyphIndex(c);
                return index != GLYPH_INDEX_NOT_FOUND ? index : mFontInfo->alterCharIndex;
            }

            u16 ResFontBase::FindGlyphIndex(u16 c) const {
                FontCodeMap* pMap;
                for (pMap = mFontInfo->pMap; pMap; pMap = pMap->pNext) {
                    if (pMap->ccodeBegin <= c && c <= pMap->ccodeEnd) {
                        return FindGlyphIndex(pMap, c);
                    }
                }
                return GLYPH_INDEX_NOT_FOUND;
            }

            u16 ResFontBase::FindGlyphIndex(const FontCodeMap* pMap, u16 c) const {
                u16 index = GLYPH_INDEX_NOT_FOUND;

                switch (pMap->mappingMethod) {
                    case FONT_MAP_DIRECT: {
                        u16 offset = *pMap->mapInfo;
                        index = c - pMap->ccodeBegin + offset;
                        break;
                    }
                    case FONT_MAP_TABLE: {
                        int table_index = c - pMap->ccodeBegin;
                        index = pMap->mapInfo[table_index];
                        break;
                    }
                    case FONT_MAP_SCAN: {
                        const CMapInfoScan*     scanInfo = reinterpret_cast<const CMapInfoScan*>(pMap->mapInfo);
                        const CMapScanEntry*    first = scanInfo->entries;
                        const CMapScanEntry*    last = scanInfo->entries + (scanInfo->num - 1);

                        while (first <= last) {
                            const CMapScanEntry* mid = first + (last - first) / 2;

                            if (mid->ccode < c) {
                                first = mid + 1;
                            }
                            else if (c < mid->ccode) {
                                last = mid - 1;
                            }
                            else {
                                index = mid->index;
                                break;
                            }
                        }
                        break;
                    }
                    default: {
                        break;
                    }
                }

                return index;
            }

            const CharWidths& ResFontBase::GetCharWidthsFromIndex(u16 index) const {
                const FontWidth* pWidth;
                for (pWidth = mFontInfo->pWidth; pWidth; pWidth = pWidth->pNext) {
                    if (pWidth->indexBegin <= index && index <= pWidth->indexEnd)
                        return GetCharWidthsFromIndex(pWidth, index);
                }

                return mFontInfo->defaultWidth;
            }

            const CharWidths& ResFontBase::GetCharWidthsFromIndex(const FontWidth* pWidth, u16 index) const {
                return pWidth->widthTable[index - pWidth->indexBegin];
            }

            void ResFontBase::GetGlyphFromIndex(Glyph* glyph, u16 index) const {
                FontTextureGlyph& tg = *mFontInfo->pGlyph;

                u32 cellsInASheet = tg.sheetRow * tg.sheetLine;
                u32 sheetNo = index / cellsInASheet;

                u32 cellNo = index % cellsInASheet;
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
        }
    }
}
