#ifndef NW4R_SND_WSD_FILE_H
#define NW4R_SND_WSD_FILE_H

#include <nw4r/config.h>

#include <nw4r/snd/Util.h>
#include <nw4r/snd/types.h>

#include <nw4r/snd/WaveFile.h>

#include <nw4r/ut/binaryFileFormat.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            namespace WsdFile {
                typedef struct WsdInfo {
                    f32                 pitch;              // 0x00
                    u8                  pan;                // 0x04
                    u8                  surroundPan;        // 0x05
                    u8                  fxSendA;            // 0x06
                    u8                  fxSendB;            // 0x07
                    u8                  fxSendC;            // 0x08
                    u8                  mainSend;           // 0x09
                    u8                  padding[2];         // 0x0A
                    Util::DataRef<void> graphEnvTablevRef;  // 0x0C
                    Util::DataRef<void> randomizerTableRef; // 0x14
                    u32                 reserved;           // 0x1C
                } WsdInfo;

                typedef struct TrackInfo {
                    // Nothing
                } TrackInfo;

                typedef struct NoteInfo {
                    s32                 waveIndex;          // 0x00
                    u8                  attack;             // 0x04
                    u8                  decay;              // 0x05
                    u8                  sustain;            // 0x06
                    u8                  release;            // 0x07
                    u16                 hold;               // 0x08
                    u16                 padding;            // 0x0A
                    u8                  originalKey;        // 0x0C
                    u8                  volume;             // 0x0D
                    u8                  pan;                // 0x0E
                    u8                  surroundPan;        // 0x0F
                    f32                 pitch;              // 0x10
                    Util::DataRef<void> lfoTableRef;        // 0x14
                    Util::DataRef<void> graphEnvTablevRef;  // 0x1C
                    Util::DataRef<void> randomizerTableRef; // 0x24
                    u32                 reserved;           // 0x2C
                } NoteInfo;

                typedef Util::Table<Util::DataRef<TrackInfo> > TrackTable;
                typedef Util::Table<Util::DataRef<NoteInfo> > NoteTable;

                typedef struct Wsd {
                    Util::DataRef<WsdInfo>      refWsdInfo;     // 0x00
                    Util::DataRef<TrackTable>   refTrackTable;  // 0x08
                    Util::DataRef<NoteTable>    refNoteTable;   // 0x10
                } Wsd;

                typedef struct Header {
                    ut::BinaryFileHeader    fileHeader;         // 0x00
                    u32                     dataBlockOffset;    // 0x10
                    u32                     dataBlockSize;      // 0x14
                    u32                     waveBlockOffset;    // 0x18
                    u32                     waveBlockSize;      // 0x1C
                } Header;

                typedef struct DataBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    u32                     wsdCount;       // 0x08
                    Util::DataRef<Wsd>      refWsd[];       // 0x0C
                } DataBlock;

                typedef struct WaveBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    u32                     waveCount;      // 0x08
                    u32                     offsetTable[];  // 0x0C
                } WaveBlock;

                // <= NW4R_VERSION(1, 0)
                typedef struct WaveBlockOld {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    u32                     offsetTable[];  // 0x08
                } WaveBlockOld;
            }

            typedef struct WaveSoundInfo {
                f32 pitch;          // 0x00
                u8  pan;            // 0x04
                u8  surroundPan;    // 0x05
                u8  fxSendA;        // 0x06
                u8  fxSendB;        // 0x07
                u8  fxSendC;        // 0x08
                u8  mainSend;       // 0x09
            } WaveSoundInfo;

            typedef struct WaveSoundNoteInfo {
                s32 waveIndex;      // 0x00
                u8  attack;         // 0x04
                u8  decay;          // 0x06
                u8  sustain;        // 0x07
                u8  release;        // 0x08
                u8  originalKey;    // 0x09
                u8  pan;            // 0x0A
                u8  surroundPan;    // 0x0B
                u8  volume;         // 0x0C
                f32 pitch;          // 0x10
            } WaveSoundNoteInfo;

            class WsdFileReader {
                public:
                    static const u32 SIGNATURE = 'RWSD';
                    static const int VERSION = NW4R_VERSION(1, 2);

                    explicit WsdFileReader(const void* waveData);

                    bool    IsValidFileHeader(const void* waveData);

                    bool    ReadWaveSoundInfo(WaveSoundInfo* soundInfo, int id) const;
                    bool    ReadWaveSoundNoteInfo(WaveSoundNoteInfo* soundNoteInfo, int id, int note) const;
                    bool    ReadWaveParam(int id, WaveData* waveData, const void* waveAddr) const;

                private:
                    const WsdFile::Header*      mHeader;    // 0x00
                    const WsdFile::DataBlock*   mDataBlock; // 0x04
                    const WsdFile::WaveBlock*   mWaveBlock; // 0x08
            };
        }
    }
}

#endif // NW4R_SND_WSD_FILE_H
