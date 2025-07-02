#include <nw4r/snd/WaveFile.h>
#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            WaveFileReader::WaveFileReader(const WaveFile::WaveInfo* waveInfo) :
            mWaveInfo(waveInfo) {}

            bool WaveFileReader::ReadWaveParam(WaveData* waveData, const void* waveAddr) const {
                waveData->format = mWaveInfo->format;
                waveData->numChannels = mWaveInfo->numChannels;
                waveData->sampleRate = (mWaveInfo->sampleRate24 << 16) + mWaveInfo->sampleRate;

                waveData->loopFlag = mWaveInfo->loopFlag;
                waveData->loopStart = AxVoice::GetSampleByDspAddress(NULL, mWaveInfo->loopStart, WaveFormatToAxFormat(mWaveInfo->format));
                waveData->loopEnd = AxVoice::GetSampleByDspAddress(NULL, mWaveInfo->loopEnd, WaveFormatToAxFormat(mWaveInfo->format)) + 1;

                const u32* pInfoOffsetTable = static_cast<const u32*>(ut::AddOffsetToPtr(mWaveInfo, mWaveInfo->channelInfoTableOffset));

                for (int i = 0; i < mWaveInfo->numChannels; i++) {
                    ChannelParam& rParam = waveData->channelParam[i];

                    const WaveFile::WaveChannelInfo* pChannelInfo = reinterpret_cast<const WaveFile::WaveChannelInfo*>(ut::AddOffsetToPtr(mWaveInfo, pInfoOffsetTable[i]));

                    rParam.volumeFrontLeft = pChannelInfo->volumeFrontLeft;
                    rParam.volumeFrontRight = pChannelInfo->volumeFrontRight;
                    rParam.volumeRearLeft = pChannelInfo->volumeRearLeft;
                    rParam.volumeRearRight = pChannelInfo->volumeRearRight;

                    if (pChannelInfo->adpcmOffset != 0) {
                        const AdpcmInfo* adpcmInfo = static_cast<const AdpcmInfo*>(ut::AddOffsetToPtr(mWaveInfo, pChannelInfo->adpcmOffset));
                        rParam.adpcmInfo = *adpcmInfo;
                    }

                    rParam.dataAddr = const_cast<void*>(ut::AddOffsetToPtr(waveAddr, mWaveInfo->dataOffset + pChannelInfo->channelDataOffset));
                }

                return true;
            }

            AxVoice::Format WaveFileReader::WaveFormatToAxFormat(u32 format) {
                if (format == WaveFile::FORMAT_PCM16) {
                    return AxVoice::FORMAT_PCM16;
                }

                if (format == WaveFile::FORMAT_PCM8) {
                    return AxVoice::FORMAT_PCM8;
                }

                return AxVoice::FORMAT_ADPCM;
            }
        }
    }
}
