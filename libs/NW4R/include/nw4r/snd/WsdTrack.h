#ifndef NW4R_SND_WSD_TRACK_H
#define NW4R_SND_WSD_TRACK_H

#include <nw4r/snd/types.h>

#include <nw4r/snd/Lfo.h>
#include <nw4r/snd/WsdFile.h>
#include <nw4r/snd/Channel.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class WsdPlayer;
            class WsdTrack {
                public:
                    class WsdCallback {
                        public:
                            virtual ~WsdCallback() {}   // 0x08

                            virtual bool GetWaveSoundData(WaveSoundInfo* info, WaveSoundNoteInfo* noteInfo, WaveData* waveData, const void* waveSoundData, int index, int noteIndex, u32 userData) const;
                    };

                    typedef enum StartOffsetType {
                        START_OFFSET_TYPE_SAMPLE = 0,
                        START_OFFSET_TYPE_MILLISEC
                    } StartOffsetType;

                    WsdTrack() :
                    mWsdPlayer(NULL) {}

                    void        Init(WsdPlayer* player);

                    void        Start(const void* wsdData, int index);
                    void        Close();

                    void        UpdateChannel();
                    void        ReleaseAllChannel(int release) NO_INLINE;
                    void        PauseAllChannel(bool flag);
                    void        FreeAllChannel();
                    void        AddChannel(Channel* channel);

                    int         Parse(const WsdCallback* callback, u32 callbackData, bool doNoteOn);
                    int         ParseNextTick(const WsdCallback* callback, u32 callbackData, bool doNoteOn);

                    static void ChannelCallbackFunc(Channel* dropChannel, Channel::ChannelCallbackStatus status, u32 userData);

                    const void* GetWsdDataAddress() const   { return mWsdData; }

                private:
                    const void*     mWsdData;       // 0x00
                    int             mIndex;         // 0x04

                    u32             mCounter;       // 0x08
                    LfoParam        mLfoParam;      // 0x0C
                    u8              mBendRange;     // 0x1C
                    u8              mPriority;      // 0x1D

                    WaveSoundInfo   mWaveSoundInfo; // 0x20
                    WsdPlayer*      mWsdPlayer;     // 0x2C

                    Channel*        mChannelList;   // 0x30
            };
        }
    }
}

#endif // NW4R_SND_WSD_TRACK_H
