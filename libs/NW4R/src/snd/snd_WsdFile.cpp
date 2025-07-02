#include <nw4r/snd/WsdFile.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            bool WsdFileReader::IsValidFileHeader(const void* waveData) {
                const ut::BinaryFileHeader* pFileHeader =
                    static_cast<const ut::BinaryFileHeader*>(waveData);

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

            WsdFileReader::WsdFileReader(const void* waveData) :
            mHeader(NULL),
            mDataBlock(NULL),
            mWaveBlock(NULL) {
                if (!IsValidFileHeader(waveData)) {
                    return;
                }

                mHeader = static_cast<const WsdFile::Header*>(waveData);
                mDataBlock = static_cast<const WsdFile::DataBlock*>(ut::AddOffsetToPtr(mHeader, mHeader->dataBlockOffset));
                mWaveBlock = static_cast<const WsdFile::WaveBlock*>(ut::AddOffsetToPtr(mHeader, mHeader->waveBlockOffset));
            }

            bool WsdFileReader::ReadWaveSoundInfo(WaveSoundInfo* soundInfo, int id) const {
                const WsdFile::Wsd* pWsd = Util::GetDataRefAddress0(mDataBlock->refWsd[id], &mDataBlock->wsdCount);
                const WsdFile::WsdInfo* pWsdInfo = Util::GetDataRefAddress0(pWsd->refWsdInfo, &mDataBlock->wsdCount);

                if (mHeader->fileHeader.version == NW4R_VERSION(1, 2)) {
                    soundInfo->pitch = pWsdInfo->pitch;
                    soundInfo->pan = pWsdInfo->pan;
                    soundInfo->surroundPan = pWsdInfo->surroundPan;
                    soundInfo->fxSendA = pWsdInfo->fxSendA;
                    soundInfo->fxSendB = pWsdInfo->fxSendB;
                    soundInfo->fxSendC = pWsdInfo->fxSendC;
                    soundInfo->mainSend = pWsdInfo->mainSend;
                }
                else if (mHeader->fileHeader.version == NW4R_VERSION(1, 1)) {
                    soundInfo->pitch = pWsdInfo->pitch;
                    soundInfo->pan = pWsdInfo->pan;
                    soundInfo->surroundPan = pWsdInfo->surroundPan;
                    soundInfo->fxSendA = 0;
                    soundInfo->fxSendB = 0;
                    soundInfo->fxSendC = 0;
                    soundInfo->mainSend = 127;
                }
                else {
                    soundInfo->pitch = 1.0f;
                    soundInfo->pan = 64;
                    soundInfo->surroundPan = 0;
                    soundInfo->fxSendA = 0;
                    soundInfo->fxSendB = 0;
                    soundInfo->fxSendC = 0;
                    soundInfo->mainSend = 127;
                }

                return true;
            }

            bool WsdFileReader::ReadWaveSoundNoteInfo(WaveSoundNoteInfo* soundNoteInfo, int id, int note) const {
                const WsdFile::Wsd* pWsd = Util::GetDataRefAddress0(mDataBlock->refWsd[id], &mDataBlock->wsdCount);
                const WsdFile::NoteTable* pTable = Util::GetDataRefAddress0(pWsd->refNoteTable, &mDataBlock->wsdCount);
                const WsdFile::NoteInfo* noteInfo = Util::GetDataRefAddress0(pTable->items[note], &mDataBlock->wsdCount);

                soundNoteInfo->waveIndex = noteInfo->waveIndex;
                soundNoteInfo->attack = noteInfo->attack;
                soundNoteInfo->decay = noteInfo->decay;
                soundNoteInfo->sustain = noteInfo->sustain;
                soundNoteInfo->release = noteInfo->release;
                soundNoteInfo->originalKey = noteInfo->originalKey;
                soundNoteInfo->volume = noteInfo->volume;

                if (mHeader->fileHeader.version >= NW4R_VERSION(1, 1)) {
                    soundNoteInfo->pan = noteInfo->pan;
                    soundNoteInfo->surroundPan = noteInfo->surroundPan;
                    soundNoteInfo->pitch = noteInfo->pitch;
                }
                else {
                    soundNoteInfo->pan = 64;
                    soundNoteInfo->surroundPan = 0;
                    soundNoteInfo->pitch = 1.0f;
                }

                return true;
            }

            bool WsdFileReader::ReadWaveParam(int id, WaveData* waveData, const void* waveAddr) const {
                const WaveFile::WaveInfo* waveInfo;

                if (mHeader->fileHeader.version == NW4R_VERSION(1, 0)) {
                    const WsdFile::WaveBlockOld* waveBlockOld = reinterpret_cast<const WsdFile::WaveBlockOld*>(mWaveBlock);
                    waveInfo = static_cast<const WaveFile::WaveInfo*>(ut::AddOffsetToPtr(waveBlockOld, waveBlockOld->offsetTable[id]));
                }
                else {
                    if (id >= mWaveBlock->waveCount) {
                        return false;
                    }

                    waveInfo = static_cast<const WaveFile::WaveInfo*>(ut::AddOffsetToPtr(mWaveBlock, mWaveBlock->offsetTable[id]));
                }

                WaveFileReader reader(waveInfo);
                return reader.ReadWaveParam(waveData, waveAddr);
            }
        }
    }
}
