#include <nw4r/snd/SeqFile.h>
#include <nw4r/snd/Util.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            bool SeqFileReader::IsValidFileHeader(const void* seqData) {
                const ut::BinaryFileHeader* pFileHeader = static_cast<const ut::BinaryFileHeader*>(seqData);

                if (pFileHeader->signature != SIGNATURE) {
                    return false;
                }

                if (Util::ReadBigEndian(pFileHeader->version) < NW4R_VERSION(1, 0)) {
                    return false;
                }

                if (Util::ReadBigEndian(pFileHeader->version) > VERSION) {
                    return false;
                }

                return true;
            }

            SeqFileReader::SeqFileReader(const void* seqData) :
            mHeader(NULL),
            mDataBlock(NULL) {
                if (!IsValidFileHeader(seqData)) {
                    return;
                }

                mHeader = static_cast<const SeqFile::Header*>(seqData);
                mDataBlock = static_cast<const SeqFile::DataBlock*>(ut::AddOffsetToPtr(mHeader, Util::ReadBigEndian(mHeader->dataBlockOffset)));
            }

            const void* SeqFileReader::GetBaseAddress() const {
                return ut::AddOffsetToPtr(mDataBlock,Util::ReadBigEndian(mDataBlock->baseOffset));
            }
        }
    }
}
