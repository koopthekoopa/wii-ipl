#ifndef EGG_AUDIO_FX_MGR_H
#define EGG_AUDIO_FX_MGR_H

#include <nw4r/snd.h>

namespace EGG {
    class ExpHeap;

    class AudioFx {
    public:
        enum Type {
            TYPE_AXFX_REVERBHI = 0,
            TYPE_AXFX_REVERBHI_DPL2,
            TYPE_AXFX_REVERBSTD,
            TYPE_AXFX_CHORUS,
            TYPE_AXFX_DELAY,
            TYPE_AXFX_MAX
        };

    public:
        AudioFx();
        ~AudioFx();

        void init(nw4r::snd::AuxBus bus, void* pHeapBuffer, u32 heapSize);
        bool create(Type fxType, const void* pParam);
        bool destroy();

    private:
        bool createFxReverbHi(const nw4r::snd::FxReverbHi::ReverbHiParam* pParam);
        bool createFxReverbHiDpl2(const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param* pParam);
        bool createFxReverbStd(const nw4r::snd::FxReverbStd::ReverbStdParam* pParam);
        bool createFxChorus(const nw4r::snd::FxChorus::ChorusParam* pParam);
        bool createFxDelay(const nw4r::snd::FxDelay::DelayParam* pParam);

        nw4r::snd::FxBase* mpFxBase;  // 0x00
        nw4r::snd::AuxBus mAuxBus;    // 0x04
        const void* mpParam;          // 0x08
        Type mType;                   // 0x0C
        ExpHeap* mpHeap;              // 0x10
        u8* mpWorkBuffer;             // 0x14
    };

    class AudioFxMgr {
    public:
        struct AudioFxMgrArg {
            AudioFxMgrArg() NO_INLINE {
                for (int i = 0; i < nw4r::snd::AUX_BUS_NUM; i++) {
                    heapSize[i] = 0x25800;
                }
            }
            u32 heapSize[nw4r::snd::AUX_BUS_NUM];  // 0x00
        };

    public:
        AudioFxMgr();
        ~AudioFxMgr();

        bool initializeFx(nw4r::snd::SoundHeap* pHeap, AudioFxMgrArg* pArg);

        bool setFxReverbHi(nw4r::snd::AuxBus bus, const nw4r::snd::FxReverbHi::ReverbHiParam* pParam);
        bool setFxReverbHiDpl2(nw4r::snd::AuxBus bus, const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param* pParam);
        bool setFxChorus(nw4r::snd::AuxBus bus, const nw4r::snd::FxChorus::ChorusParam* pParam);
        bool setFxDelay(nw4r::snd::AuxBus bus, const nw4r::snd::FxDelay::DelayParam* pParam);

        void clearFx(nw4r::snd::AuxBus bus);

        static const nw4r::snd::FxReverbHi::ReverbHiParam* getDefaultFxReverbHi();
        static const nw4r::snd::FxChorus::ChorusParam* getDefaultFxChorus();

    private:
        AudioFx mAudioFx[nw4r::snd::AUX_BUS_NUM];  // 0x00

        static const nw4r::snd::FxReverbHi::ReverbHiParam scReverbHiParam;
        static const nw4r::snd::FxChorus::ChorusParam scChorusParam;
    };
}  // namespace EGG

#endif  // EGG_AUDIO_FX_MGR_H
