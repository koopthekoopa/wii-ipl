#ifndef NW4R_SND_WAVE_FILE_H
#define NW4R_SND_WAVE_FILE_H

#include <nw4r/snd/AxVoice.h>
#include <nw4r/snd/types.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace WaveFile {
                typedef enum Format {
                    FORMAT_PCM8 = 0,
                    FORMAT_PCM16,
                    FORMAT_ADPCM
                } Format;

                typedef struct WaveInfo {
                    u8  format;                 // 0x00
                    u8  loopFlag;               // 0x01
                    u8  numChannels;            // 0x02
                    u8  sampleRate24;           // 0x03
                    u16 sampleRate;             // 0x04
                    u16 padding2;               // 0x06
                    u32 loopStart;              // 0x08
                    u32 loopEnd;                // 0x0C
                    u32 channelInfoTableOffset; // 0x10
                    u32 dataOffset;             // 0x14
                    u32 reserved;               // 0x18
                } WaveInfo;

                typedef struct WaveChannelInfo {
                    u32 channelDataOffset;  // 0x00
                    u32 adpcmOffset;        // 0x04
                    u32 volumeFrontLeft;    // 0x08
                    u32 volumeFrontRight;   // 0x0C
                    u32 volumeRearLeft;     // 0x10
                    u32 volumeRearRight;    // 0x14
                    u32 reserved;           // 0x18
                } WaveChannelInfo;
            }

            typedef struct ChannelParam {
                void*       dataAddr;           // 0x00
                u32         volumeFrontLeft;    // 0x04
                u32         volumeFrontRight;   // 0x08
                u32         volumeRearLeft;     // 0x0C
                u32         volumeRearRight;    // 0x10
                AdpcmInfo   adpcmInfo;          // 0x14
            } ChannelParam;

            typedef struct WaveData {
                u8              format;                     // 0x00
                u8              loopFlag;                   // 0x01
                u8              numChannels;                // 0x02
                int             sampleRate;                 // 0x04
                u32             loopStart;                  // 0x08
                u32             loopEnd;                    // 0x0C
                ChannelParam    channelParam[CHANNEL_MAX];  // 0x10
            } WaveData;

            class WaveFileReader {
                public:
                    explicit WaveFileReader(const WaveFile::WaveInfo* waveInfo);

                    bool                    ReadWaveParam(WaveData* waveData, const void* waveAddr) const;
                    static AxVoice::Format  WaveFormatToAxFormat(u32 format);

                private:
                    const WaveFile::WaveInfo*   mWaveInfo;  // 0x00
            };

            inline AxVoice::Format WaveFormatToAxFormat(u32 format) {
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

#endif // NW4R_SND_WAVE_FILE_H
