#ifndef NW4R_SND_FX_CHORUS_H
#define NW4R_SND_FX_CHORUS_H

#include <nw4r/snd/FxBase.h>

namespace nw4r {
    namespace snd {
        class FxChorus : public FxBase {
            public:
                typedef struct ChorusParam {
                    f32 delayTime;  // 0x00
                    f32 depth;      // 0x04
                    f32 rate;       // 0x08
                } ChorusParam;

            public:
                FxChorus();

                virtual ~FxChorus() {
                    Shutdown();
                    ReleaseWorkBuffer();
                }

                virtual bool    StartUp();                                                                                                  // 0x0C
                virtual void    Shutdown();                                                                                                 // 0x10

                virtual void    UpdateBuffer(int channels, void** buffer, u32 size, SampleFormat format, f32 sampleRate, OutputMode mode);  // 0x14

                virtual bool    AssignWorkBuffer(void* buffer, u32 size);                                                                  // 0x18
                virtual void    ReleaseWorkBuffer();                                                                                        // 0x1C

                u32             GetRequiredMemSize();
                bool            SetParam(const ChorusParam& chorusParam) NO_INLINE;

            private:
                detail::AxfxImpl    mImpl;      // 0x0C

                ChorusParam         mParam;     // 0x18
                AXFX_CHORUS         mAxfxParam; // 0x24
        };
    }
}

#endif // NW4R_SND_FX_CHORUS_H
