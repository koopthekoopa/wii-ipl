#ifndef BANNER_SOUND_PLAYER_H
#define BANNER_SOUND_PLAYER_H

#include <revolution/types.h>

extern void* pBSWaveBuffer;

class BannerSoundPlayer {
    public:
        void init(s32);
        void calc();
        
        void pause(bool flag);

        void start(void*, u32);
        void stop(u32);

        void setMasterVolume(f32 volume);

        bool checkHeader(void* data, u32 length);
        bool checkData(void* data, u32 length, bool);

    private:
        u8  unk_0x00[0x518];
};

#endif // BANNER_SOUND_PLAYER_H
