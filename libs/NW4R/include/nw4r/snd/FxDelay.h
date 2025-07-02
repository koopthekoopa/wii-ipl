#ifndef NW4R_SND_FX_DELAY_H
#define NW4R_SND_FX_DELAY_H

#include <nw4r/snd/FxBase.h>

namespace nw4r {
    namespace snd {
        class FxDelay : public FxBase {
            public:
                typedef struct DelayParam {
                    f32 delay;    // 0x00
                    f32 feedback; // 0x04
                    f32 outGain;  // 0x08
                } DelayParam;

            public:
                FxDelay();

                virtual ~FxDelay() {
                    Shutdown();
                    ReleaseWorkBuffer();
                }

                virtual bool    StartUp();                                                                                                  // 0x0C
                virtual void    Shutdown();                                                                                                 // 0x10

                virtual void    UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode);  // 0x14

                virtual bool    AssignWorkBuffer(void* buffer, u32 size);                                                                   // 0x18
                virtual void    ReleaseWorkBuffer();                                                                                        // 0x1C

                u32             GetRequiredMemSize();
                bool            SetParam(const DelayParam& delayParam);

            private:
                detail::AxfxImpl    mImpl;      // 0x0C

                DelayParam          mParam;     // 0x18
                AXFX_DELAY          mAxfxParam; // 0x24
        };
    }
}

#endif // NW4R_SND_FX_DELAY_H
