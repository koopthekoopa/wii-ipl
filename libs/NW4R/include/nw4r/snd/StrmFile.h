#ifndef NW4R_SND_STRM_FILE_H
#define NW4R_SND_STRM_FILE_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/Util.h>

#include <nw4r/ut/FileStream.h>
#include <nw4r/ut/binaryFileFormat.h>

#include <nw4r/config.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace StrmFile {
                typedef struct StrmDataInfo {
                    u8  format;                 // 0x00
                    u8  loopFlag;               // 0x01
                    u8  numChannels;            // 0x02
                    u8  sampleRate24;           // 0x03
                    u16 sampleRate;             // 0x04
                    u16 blockHeaderOffset;      // 0x06
                    u32 loopStart;              // 0x08
                    u32 loopEnd;                // 0x0C
                    u32 dataOffset;             // 0x10
                    u32 numBlocks;              // 0x14
                    u32 blockSize;              // 0x18
                    u32 blockSamples;           // 0x1C
                    u32 lastBlockSize;          // 0x20
                    u32 lastBlockSamples;       // 0x24
                    u32 lastBlockPaddedSize;    // 0x28
                    u32 adpcmDataInterval;      // 0x2C
                    u32 adpcmDataSize;          // 0x30
                } StrmDataInfo;

                typedef struct TrackInfo {
                    u8  channelCount;           // 0x00
                    u8  channelIndexTable[];    // 0x01
                } TrackInfo;

                typedef struct TrackTable {
                    u8                          trackCount;         // 0x00
                    u8                          trackDataType;      // 0x01
                    Util::DataRef<TrackInfo>    refTrackHeader[];   // 0x04
                } TrackTable;

                typedef struct ChannelInfo {
                    Util::DataRef<AdpcmInfo>    refAdpcmInfo;   // 0x00
                } ChannelInfo;

                typedef struct ChannelTable {
                    u8                          channelCount;       // 0x00
                    Util::DataRef<ChannelInfo>  refChannelHeader[]; // 0x04
                } ChannelTable;

                typedef struct Header {
                    ut::BinaryFileHeader    fileHeader;         // 0x00

                    u32                     headBlockOffset;    // 0x10
                    u32                     headBlockSize;      // 0x14

                    u32                     adpcBlockOffset;    // 0x18
                    u32                     adpcBlockSize;      // 0x1C

                    u32                     dataBlockOffset;    // 0x20
                    u32                     dataBlockSize;      // 0x24
                } Header;

                typedef struct HeadBlock {
                    ut::BinaryBlockHeader       blockHeader;        // 0x00
                    Util::DataRef<StrmDataInfo> refDataHeader;      // 0x08
                    Util::DataRef<TrackTable>   refTrackTable;      // 0x10
                    Util::DataRef<ChannelTable> refChannelTable;    // 0x18
                } HeadBlock;
            }

            typedef struct StrmInfo {
                u8  format;                 // 0x00
                u8  loopFlag;               // 0x01
                u8  numChannels;            // 0x02
                int sampleRate;             // 0x04
                u16 blockHeaderOffset;      // 0x08
                u32 loopStart;              // 0x0C
                u32 loopEnd;                // 0x10
                u32 dataOffset;             // 0x14
                u32 numBlocks;              // 0x18
                u32 blockSize;              // 0x1C
                u32 blockSamples;           // 0x20
                u32 lastBlockSize;          // 0x24
                u32 lastBlockSamples;       // 0x28
                u32 lastBlockPaddedSize;    // 0x2C
                u32 adpcmDataInterval;      // 0x30
                u32 adpcmDataSize;          // 0x34
            } StrmInfo;

            class StrmFileReader {
                public:
                    static const u32 SIGNATURE = 'RSTM';
                    static const int VERSION = NW4R_VERSION(1, 0);

                    StrmFileReader();

                    bool    IsAvailable() const { return mHeader != NULL; }

                    bool    IsValidFileHeader(const void* buffer);
                    void    Setup(const void* buffer);

                    bool    ReadStrmInfo(StrmInfo* strmInfo) const;
                    bool    ReadAdpcmInfo(AdpcmInfo* adpcmInfo, int channels) const;

                    u32 GetAdpcBlockOffset() const {
                        if (IsAvailable()) {
                            return mHeader->adpcBlockOffset;
                        }
                        return 0;
                    }

                private:
                    const StrmFile::Header*     mHeader;    // 0x00
                    const StrmFile::HeadBlock*  mHeadBlock; // 0x04
            };

            class StrmFileLoader {
                public:
                    explicit StrmFileLoader(ut::FileStream& rFileStream) :
                    mStream(rFileStream) {}

                    bool    LoadFileHeader(void* buffer, u32 size);
                    bool    ReadAdpcBlockData(u16* yn1, u16* yn2, int block, int channels);

                    bool ReadStrmInfo(StrmInfo* strmInfo) const {
                        if (!mReader.IsAvailable()) {
                            return false;
                        }
                        return mReader.ReadStrmInfo(strmInfo);
                    }

                    bool ReadAdpcmInfo(AdpcmInfo* adpcmInfo, int channel) const {
                        if (!mReader.IsAvailable()) {
                            return false;
                        }
                        return mReader.ReadAdpcmInfo(adpcmInfo, channel);
                    }

                private:
                    static const int HEADER_ALIGNED_SIZE = OSRoundUp32B(sizeof(StrmFile::Header));

                    ut::FileStream& mStream;    // 0x00
                    StrmFileReader  mReader;    // 0x04
            };
        }
    }
}

#endif
