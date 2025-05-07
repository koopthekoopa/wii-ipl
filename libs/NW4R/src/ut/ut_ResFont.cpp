#include <nw4r/ut/ResFont.h>
#include <nw4r/ut/Font.h>
#include <nw4r/ut/binaryFileFormat.h>

#include <nw4r/config.h>

namespace nw4r {
    namespace ut {
        #define CONVERT_OFFSET_TO_PTR(type_, ptr_, offset_) reinterpret_cast<type_ *>(reinterpret_cast<u32>(ptr_) + offset_)

        namespace {
            template<typename T> void ResolveOffset(T*& ptr, void* base) {
                *reinterpret_cast<u32*>(&ptr) = reinterpret_cast<u32>(base) + reinterpret_cast<u32>(ptr);
            }
        }

        ResFont::ResFont() {}

        ResFont::~ResFont() {}

        bool ResFont::SetResource(void* brfnt) {
            FontInformation*    pFontInfo = NULL;
            BinaryFileHeader*   fileHeader = static_cast<BinaryFileHeader*>(brfnt);

            if (!IsManaging(NULL)) {
                return false;
            }

            if (fileHeader->signature == SIGNATURE_FONT_UNPACKED) {
                BinaryBlockHeader* blockHeader;

                int nBlocks = 0;

                blockHeader = CONVERT_OFFSET_TO_PTR(BinaryBlockHeader, fileHeader, fileHeader->headerSize);

                while (nBlocks < fileHeader->dataBlocks) {
                    if (blockHeader->kind == SIGNATURE_FONT_INFO) {
                        pFontInfo = CONVERT_OFFSET_TO_PTR(FontInformation, blockHeader, sizeof(*blockHeader));
                        break;
                    }

                    blockHeader = CONVERT_OFFSET_TO_PTR(BinaryBlockHeader, blockHeader, blockHeader->size);
                    nBlocks++;
                }
            }
            else {
                if (fileHeader->version == NW4R_VERSION(1, 4)) {
                    if (!IsValidBinaryFile(fileHeader, SIGNATURE_FONT, NW4R_VERSION(1, 4), 2)) {
                        return false;
                    }
                }
                else {
                    if (!IsValidBinaryFile(fileHeader, SIGNATURE_FONT, NW4R_VERSION(1, 2), 2)) {
                        return false;
                    }
                }

                pFontInfo = Rebuild(fileHeader);
            }

            if (!pFontInfo) {
                return false;
            }

            SetResourceBuffer(brfnt, pFontInfo);
            InitReaderFunc(GetEncoding());

            return true;
        }

        FontInformation* ResFont::Rebuild(BinaryFileHeader* fileHeader) {
            BinaryBlockHeader*  blockHeader;
            FontInformation*    info = NULL;

            int nBlocks = 0;

            blockHeader = CONVERT_OFFSET_TO_PTR(BinaryBlockHeader, fileHeader, fileHeader->headerSize);

            while (nBlocks < fileHeader->dataBlocks) {
                switch (blockHeader->kind) {
                    case SIGNATURE_FONT_INFO: {
                        info = CONVERT_OFFSET_TO_PTR(FontInformation, blockHeader, sizeof(*blockHeader));

                        ResolveOffset(info->pGlyph, fileHeader);

                        if (info->pWidth) {
                            ResolveOffset(info->pWidth, fileHeader);
                        }
                        if (info->pMap) {
                            ResolveOffset(info->pMap, fileHeader);
                        }
                        break;
                    }
                    case SIGNATURE_TEX_GLYPH: {
                        FontTextureGlyph* glyph = CONVERT_OFFSET_TO_PTR(FontTextureGlyph, blockHeader, sizeof(*blockHeader));
                        ResolveOffset(glyph->sheetImage, fileHeader);
                        break;
                    }

                    case SIGNATURE_CHAR_WIDTH: {
                        FontWidth* width = CONVERT_OFFSET_TO_PTR(FontWidth, blockHeader, sizeof(*blockHeader));
                        if (width->pNext) {
                            ResolveOffset(width->pNext, fileHeader);
                        }
                        break;
                    }

                    case SIGNATURE_CODE_MAP: {
                        FontCodeMap* map = CONVERT_OFFSET_TO_PTR(FontCodeMap, blockHeader, sizeof(*blockHeader));
                        if (map->pNext) {
                            ResolveOffset(map->pNext, fileHeader);
                        }
                        break;
                    }
                    case SIGNATURE_GLGR: {
                        break;
                    }
                    default: {
                        return NULL;
                    }
                }

                blockHeader = CONVERT_OFFSET_TO_PTR(BinaryBlockHeader, blockHeader, blockHeader->size);
                nBlocks++;
            }

            fileHeader->signature = SIGNATURE_FONT_UNPACKED;

            return info;
        }
    }
}
