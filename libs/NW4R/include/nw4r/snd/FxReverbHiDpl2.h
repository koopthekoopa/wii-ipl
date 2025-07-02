#ifndef NW4R_SND_FX_REVERB_HI_DPL2_H
#define NW4R_SND_FX_REVERB_HI_DPL2_H

#include <nw4r/snd/FxBase.h>

namespace nw4r {
    namespace snd {
        class FxReverbHiDpl2 : public FxBase {
            public:
                typedef struct ReverbHiDpl2Param  {
                    f32 preDelayTime;   // 0x00
                    f32 fusedTime;      // 0x04
                    f32 coloration;     // 0x08
                    f32 damping;        // 0x0C
                    f32 crossTalk;      // 0x10
                    f32 outGain;        // 0x14
                } ReverbHiDpl2Param;
            public:
                FxReverbHiDpl2();

                virtual ~FxReverbHiDpl2() {
                    Shutdown();
                    ReleaseWorkBuffer();
                }

                virtual bool    StartUp();                                                                                                  // 0x0C
                virtual void    Shutdown();                                                                                                 // 0x10

                virtual void    UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode);  // 0x14

                virtual bool    AssignWorkBuffer(void* buffer, u32 size);                                                                   // 0x18
                virtual void    ReleaseWorkBuffer();                                                                                        // 0x1C

                u32             GetRequiredMemSize();
                bool            SetParam(const ReverbHiDpl2Param& reverbHiDpl2Param) NO_INLINE;

            private:
                detail::AxfxImpl    mImpl;      // 0x0C

                ReverbHiDpl2Param   mParam;     // 0x18
                AXFX_REVERBHI_DPL2  mAxfxParam; // 0x30
        };
    }
}

#endif // NW4R_SND_FX_REVERB_HI_DPL2_H
