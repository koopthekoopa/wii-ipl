#include <nw4r/snd/BankFile.h>

#include <nw4r/snd/Util.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            enum {
                DATATYPE_NONE = Util::DATATYPE_T0,
                DATATYPE_INSTPARAM = Util::DATATYPE_T1,
                DATATYPE_RANGETABLE = Util::DATATYPE_T2,
                DATATYPE_INDEXTABLE = Util::DATATYPE_T3,
            };

            bool BankFileReader::IsValidFileHeader(const void* bankData) {
                const ut::BinaryFileHeader* pFileHeader = static_cast<const ut::BinaryFileHeader*>(bankData);

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

            BankFileReader::BankFileReader(const void* bankData) :
            mHeader(NULL),
            mDataBlock(NULL),
            mWaveBlock(NULL) {
                if (!IsValidFileHeader(bankData)) {
                    return;
                }

                mHeader = static_cast<const BankFile::Header*>(bankData);
                mDataBlock = static_cast<const BankFile::DataBlock*>(ut::AddOffsetToPtr(mHeader, mHeader->dataBlockOffset));
                mWaveBlock = static_cast<const BankFile::WaveBlock*>(ut::AddOffsetToPtr(mHeader, mHeader->waveBlockOffset));
            }

            bool BankFileReader::ReadInstInfo(InstInfo* info, int prgNo, int key, int velocity) const {
                if (mHeader == NULL) {
                    return false;
                }

                if (prgNo < 0 || prgNo >= static_cast<int>(mDataBlock->instTable.count)) {
                    return false;
                }

                const BankFile::DataRegion* ref = &mDataBlock->instTable.items[prgNo];
                if (ref->dataType == Util::DATATYPE_INVALID) {
                    return false;
                }

                if (ref->dataType != DATATYPE_INSTPARAM) {
                    ref = GetReferenceToSubRegion(ref, key);
                    if (ref == NULL) {
                        return false;
                    }
                }

                if (ref->dataType == Util::DATATYPE_INVALID) {
                    return false;
                }

                if (ref->dataType != DATATYPE_INSTPARAM) {
                    ref = GetReferenceToSubRegion(ref, velocity);
                    if (ref == NULL) {
                        return false;
                    }
                }

                if (ref->dataType != DATATYPE_INSTPARAM) {
                    return false;
                }

                const BankFile::InstParam* param = Util::GetDataRefAddress1(*ref, &mDataBlock->instTable);

                if (param == NULL) {
                    return false;
                }

                if (param->waveIndex < 0) {
                    return false;
                }

                info->waveIndex = param->waveIndex;
                info->attack = param->attack;
                info->decay = param->decay;
                info->sustain = param->sustain;
                info->release = param->release;
                info->originalKey = param->originalKey;
                info->pan = param->pan;

                if (mHeader->fileHeader.version == VERSION) {
                    info->volume = param->volume;
                    info->tune = param->tune;
                }
                else {
                    info->volume = 127;
                    info->tune = 1.0f;
                }

                return true;
            }

            const BankFile::DataRegion* BankFileReader::GetReferenceToSubRegion(const BankFile::DataRegion* ref, int splitKey) const {
                const BankFile::DataRegion* pSub = NULL;

                switch (ref->dataType) {
                    case DATATYPE_NONE: {
                        break;
                    }
                    case DATATYPE_INSTPARAM: {
                        pSub = ref;
                        break;
                    }
                    case DATATYPE_RANGETABLE: {
                        const BankFile::RangeTable* pRangeTable =
                            Util::GetDataRefAddress2(*ref, &mDataBlock->instTable);

                        if (pRangeTable == NULL) {
                            return NULL;
                        }

                        int i = 0;
                        while (splitKey > ReadByte(pRangeTable->key + i)) {
                            if (++i >= pRangeTable->tableSize) {
                                return NULL;
                            }
                        }

                        const u8* base = reinterpret_cast<const u8*>(pRangeTable);
                        u32 refOffset = i * sizeof(BankFile::DataRegion);
                        u32 refStart = ut::RoundUp<u32>(pRangeTable->tableSize + 1, 4);

                        pSub = reinterpret_cast<const BankFile::DataRegion*>(base + refOffset + refStart);
                        break;
                    }
                    case DATATYPE_INDEXTABLE: {
                        const BankFile::IndexTable* pIndexTable =
                            Util::GetDataRefAddress3(*ref, &mDataBlock->instTable);

                        if (pIndexTable == NULL) {
                            return NULL;
                        }

                        if (splitKey < pIndexTable->min || splitKey > pIndexTable->max) {
                            return NULL;
                        }

                        pSub = reinterpret_cast<const BankFile::DataRegion*>(pIndexTable->ref + (splitKey - pIndexTable->min));
                        break;
                    }
                }

                return pSub;
            }

            bool BankFileReader::ReadWaveParam(WaveData* data, int waveIndex, const void* waveAddr) const {
                if (mHeader == NULL) {
                    return false;
                }

                if (mWaveBlock == NULL) {
                    return false;
                }

                if (waveIndex >= mWaveBlock->waveInfoTable.count) {
                    return false;
                }

                const BankFile::WaveRegion* ref = &mWaveBlock->waveInfoTable.items[waveIndex];
                const WaveFile::WaveInfo* info = Util::GetDataRefAddress0(*ref, &mWaveBlock->waveInfoTable);

                if (info == NULL) {
                    return false;
                }

                WaveFileReader wfr(info);
                return wfr.ReadWaveParam(data, waveAddr);
            }
        }
    }
}
