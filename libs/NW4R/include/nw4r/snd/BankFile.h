#ifndef NW4R_SND_BANK_FILE_H
#define NW4R_SND_BANK_FILE_H

#include <nw4r/snd/WaveFile.h>
#include <nw4r/snd/Util.h>

#include <nw4r/ut/binaryFileFormat.h>

#include <nw4r/config.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            inline u8 ReadByte(const void* address) {
                return *static_cast<const u8*>(address);
            }

            namespace BankFile {
                typedef struct InstParam {
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
                    u8                  padding2;           // 0x0F
                    f32                 tune;               // 0x10

                    Util::DataRef<void> lfoTableRef;        // 0x14
                    Util::DataRef<void> graphEnvTablevRef;  // 0x1C
                    Util::DataRef<void> randomizerTableRef; // 0x24

                    u32                 reserved;           // 0x2C
                } InstParam;

                typedef struct RangeTable {
                    u8  tableSize;  // 0x00
                    u8  key[];      // 0x01
                } RangeTable;

                typedef struct IndexTable IndexTable;

                typedef Util::DataRef<void, InstParam, RangeTable, IndexTable> DataRegion;
                typedef Util::DataRef<WaveFile::WaveInfo> WaveRegion;

                struct IndexTable {
                    u8          min;        // 0x00
                    u8          max;        // 0x01
                    u16         reserved;   // 0x02
                    DataRegion  ref[];      // 0x04
                };

                typedef struct Header {
                    ut::BinaryFileHeader    fileHeader;         // 0x00

                    u32                     dataBlockOffset;    // 0x10
                    u32                     dataBlockSize;      // 0x14
                    u32                     waveBlockOffset;    // 0x18
                    u32                     waveBlockSize;      // 0x1C
                } Header;

                typedef struct DataBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    Util::Table<DataRegion> instTable;      // 0x08
                } DataBlock;

                typedef struct WaveBlock {
                    ut::BinaryBlockHeader   blockHeader;    // 0x00
                    Util::Table<WaveRegion> waveInfoTable;  // 0x08
                } WaveBlock;

            }

            typedef struct InstInfo {
                s32 waveIndex;      // 0x00
                u8  attack;         // 0x04
                u8  decay;          // 0x05
                u8  sustain;        // 0x06
                u8  release;        // 0x07
                u8  originalKey;    // 0x08
                u8  pan;            // 0x09
                u8  volume;         // 0x0A
                f32 tune;           // 0x0C
            } InstInfo;

            class BankFileReader {
                public:
                    static const u32 SIGNATURE = 'RBNK';
                    static const int VERSION = NW4R_VERSION(1, 1);

                public:
                    explicit                    BankFileReader(const void* bankData);

                    bool                        IsValidFileHeader(const void* bankData);

                    bool                        ReadInstInfo(InstInfo* instInfo, int prgNo, int key, int velocity) const;
                    bool                        ReadWaveParam(WaveData* waveData, int waveIndex, const void* waveDataAddress) const;

                private:
                    const BankFile::DataRegion* GetReferenceToSubRegion(const BankFile::DataRegion* ref, int splitKey) const;

                private:
                    const BankFile::Header*     mHeader;    // 0x00
                    const BankFile::DataBlock*  mDataBlock; // 0x04
                    const BankFile::WaveBlock*  mWaveBlock; // 0x08
            };
        }
    }
}

#endif // NW4R_SND_BANK_FILE_H
