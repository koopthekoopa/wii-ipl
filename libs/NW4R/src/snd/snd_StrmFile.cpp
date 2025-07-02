#include <nw4r/snd/StrmFile.h>
#include <nw4r/snd/StrmPlayer.h>
#include <nw4r/snd/WaveFile.h>
#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            bool StrmFileReader::IsValidFileHeader(const void* strmData) {
                const ut::BinaryFileHeader* pFileHeader = static_cast<const ut::BinaryFileHeader*>(strmData);

                if (pFileHeader->signature != SIGNATURE) {
                    return false;
                }

                if (pFileHeader->version < NW4R_VERSION(1, 0)) {
                    return false;
                }

                if (pFileHeader->version > VERSION) {
                    return false;
                }

                return true;
            }

            StrmFileReader::StrmFileReader() : mHeader(NULL), mHeadBlock(NULL) {}

            void StrmFileReader::Setup(const void* strmData) {
                if (!IsValidFileHeader(strmData)) {
                    return;
                }

                mHeader = static_cast<const StrmFile::Header*>(strmData);

                mHeadBlock = static_cast<const StrmFile::HeadBlock*>(ut::AddOffsetToPtr(mHeader, mHeader->headBlockOffset));

                Util::GetDataRefAddress0(mHeadBlock->refDataHeader, &mHeadBlock->refDataHeader); // debug leftover
            }

            bool StrmFileReader::ReadStrmInfo(StrmInfo* strmInfo) const {
                const StrmFile::StrmDataInfo* pStrmData = Util::GetDataRefAddress0(mHeadBlock->refDataHeader, &mHeadBlock->refDataHeader);

                strmInfo->format = pStrmData->format;
                strmInfo->loopFlag = pStrmData->loopFlag;
                strmInfo->numChannels = pStrmData->numChannels;
                strmInfo->sampleRate = (pStrmData->sampleRate24 << 16) + pStrmData->sampleRate;
                strmInfo->blockHeaderOffset = pStrmData->blockHeaderOffset;
                strmInfo->loopStart = pStrmData->loopStart;
                strmInfo->loopEnd = pStrmData->loopEnd;
                strmInfo->dataOffset = pStrmData->dataOffset;
                strmInfo->numBlocks = pStrmData->numBlocks;
                strmInfo->blockSize = pStrmData->blockSize;
                strmInfo->blockSamples = pStrmData->blockSamples;
                strmInfo->lastBlockSize = pStrmData->lastBlockSize;
                strmInfo->lastBlockSamples = pStrmData->lastBlockSamples;
                strmInfo->lastBlockPaddedSize = pStrmData->lastBlockPaddedSize;
                strmInfo->adpcmDataInterval = pStrmData->adpcmDataInterval;
                strmInfo->adpcmDataSize = pStrmData->adpcmDataSize;

                return true;
            }

            bool StrmFileReader::ReadAdpcmInfo(AdpcmInfo* adpcmInfo, int channels) const {
                const StrmFile::StrmDataInfo* pStrmData = Util::GetDataRefAddress0(mHeadBlock->refDataHeader, &mHeadBlock->refDataHeader);

                if (pStrmData->format != WaveFile::FORMAT_ADPCM) {
                    return false;
                }

                const StrmFile::ChannelTable* pChannelTable = Util::GetDataRefAddress0(mHeadBlock->refChannelTable, &mHeadBlock->refDataHeader);

                if (channels >= pChannelTable->channelCount) {
                    return false;
                }

                const StrmFile::ChannelInfo* pChannelInfo = Util::GetDataRefAddress0(pChannelTable->refChannelHeader[channels], &mHeadBlock->refDataHeader);
                const AdpcmInfo* pSrcInfo = Util::GetDataRefAddress0(pChannelInfo->refAdpcmInfo, &mHeadBlock->refDataHeader);

                *adpcmInfo = *pSrcInfo;
                return true;
            }

            bool StrmFileLoader::LoadFileHeader(void* strmData, u32 size) {
                u8 headerArea[HEADER_ALIGNED_SIZE + 32];
                u32 bytesRead;

                mStream.Seek(0, ut::FileStream::SEEK_BEG);
                bytesRead = mStream.Read(ut::RoundUp(headerArea, 32), HEADER_ALIGNED_SIZE);
                if (bytesRead != HEADER_ALIGNED_SIZE) {
                    return false;
                }

                StrmFile::Header* pHeader = static_cast<StrmFile::Header*>(ut::RoundUp(headerArea, 32));

                StrmFileReader reader;
                if (!reader.IsValidFileHeader(pHeader)) {
                    return false;
                }

                if (pHeader->adpcBlockOffset > size) {
                    return false;
                }

                u32 loadSize = pHeader->headBlockOffset + pHeader->headBlockSize;

                mStream.Seek(0, ut::FileStream::SEEK_BEG);
                bytesRead = mStream.Read(strmData, loadSize);
                if (bytesRead != loadSize) {
                    return false;
                }

                mReader.Setup(strmData);
                return true;
            }

            bool StrmFileLoader::ReadAdpcBlockData(u16* yn1, u16* yn2, int block, int channels) {
                if (!mReader.IsAvailable()) {
                    return false;
                }

                s32 offset = mReader.GetAdpcBlockOffset() +
                            block * channels * (2 * sizeof(u16)) +
                            sizeof(ut::BinaryBlockHeader);

                mStream.Seek(offset, ut::FileStream::SEEK_BEG);

                u16 buffer[StrmPlayer::StrmHeader::STRM_CHANNEL_MAX * 2] ALIGN32;
                // @bug Read size not validated
                mStream.Read(buffer, sizeof(buffer));

                for (int i = 0; i < channels; i++) {
                    yn1[i] = buffer[i * 2];
                    yn2[i] = buffer[i * 2 + 1];
                }

                return true;
            }
        }
    }
}
