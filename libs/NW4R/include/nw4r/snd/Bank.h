#ifndef NW4R_SND_BANK_H
#define NW4R_SND_BANK_H

#include <nw4r/snd/BankFile.h>
#include <nw4r/snd/NoteOnCallback.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class Channel;
            class Bank {
                public:
                    explicit Bank(const void* bankData);
                    ~Bank();

                    Channel*    NoteOn(const NoteOnInfo& noteOnInfo) const;

                    void        SetWaveDataAddress(const void* waveData)    { mWaveDataAddress = waveData; }

                private:
                    BankFileReader  mBankReader;        // 0x00
                    const void*     mWaveDataAddress;   // 0x0C
            };
        }
    }
}

#endif // NW4R_SND_BANK_H
