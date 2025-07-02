#ifndef NW4R_SND_SEQ_FILE_H
#define NW4R_SND_SEQ_FILE_H
#include <nw4r/snd/types.h>

#include <nw4r/config.h>

#include <nw4r/ut/binaryFileFormat.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace SeqFile {
                typedef struct Header {
                    ut::BinaryFileHeader    fileHeader;         // 0x00
                    u32                     dataBlockOffset;    // 0x10
                    u32                     dataBlockSize;      // 0x14
                    u32                     labelBlockOffset;   // 0x18
                    u32                     labelBlockSize;     // 0x1C
                } Header;

                typedef struct DataBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    u32                     baseOffset;     // 0x08
                } DataBlock;
            }

            class SeqFileReader {
                public:
                    static const u32 SIGNATURE = 'RSEQ';
                    static const int VERSION = NW4R_VERSION(1, 0);

                    explicit SeqFileReader(const void* seqData);

                    bool        IsValidFileHeader(const void* seqData);

                    const void* GetBaseAddress() const;

                private:
                    const SeqFile::Header*      mHeader;    // 0x00
                    const SeqFile::DataBlock*   mDataBlock; // 0x04
            };

        }
    }
}

#endif
