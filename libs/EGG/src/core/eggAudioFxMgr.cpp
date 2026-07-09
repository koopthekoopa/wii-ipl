#include <egg/core.h>
#include <egg/prim.h>

#include <nw4r/snd.h>

#include <cstring>

namespace EGG {
    AudioFx::AudioFx() : mpFxBase(NULL), mType(TYPE_AXFX_MAX), mpHeap(NULL) {
    }

    AudioFx::~AudioFx() {
        destroy();
        mpHeap->destroy();
    }

    void AudioFx::init(nw4r::snd::AuxBus bus, void* pHeapBuffer, u32 heapSize) {
        if (heapSize > 0) {
            mpHeap = ExpHeap::create(pHeapBuffer, heapSize);
        }

        mAuxBus = bus;
    }

    bool AudioFx::create(Type fxType, const void* pParam) {
        switch (fxType) {
            case TYPE_AXFX_REVERBHI: {
                return createFxReverbHi(static_cast<const nw4r::snd::FxReverbHi::ReverbHiParam*>(pParam));
            }

            case TYPE_AXFX_REVERBHI_DPL2: {
                return createFxReverbHiDpl2(static_cast<const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param*>(pParam));
            }

            // Dead-stripped
            case TYPE_AXFX_REVERBSTD: {
                return createFxReverbStd(static_cast<const nw4r::snd::FxReverbStd::ReverbStdParam*>(pParam));
            }

            case TYPE_AXFX_CHORUS: {
                return createFxChorus(static_cast<const nw4r::snd::FxChorus::ChorusParam*>(pParam));
            }

            case TYPE_AXFX_DELAY: {
                return createFxDelay(static_cast<const nw4r::snd::FxDelay::DelayParam*>(pParam));
            }

            default: {
                destroy();
                return false;
            }
        }
    }

    bool AudioFx::destroy() {
        if (mpFxBase != NULL) {
            nw4r::snd::detail::AxManager::GetInstance().ClearEffect(mAuxBus, 0);

            if (mpHeap != NULL) {
                mpHeap->free(mpWorkBuffer);

                delete mpFxBase;
            }

            mpFxBase = NULL;
            mType = TYPE_AXFX_MAX;
            return true;
        }
        return false;
    }

    bool AudioFx::createFxReverbHi(const nw4r::snd::FxReverbHi::ReverbHiParam* pParam) {
        destroy();

        if (mpHeap == NULL) {
            return false;
        }

        nw4r::snd::FxReverbHi* pReverbHi = new (mpHeap) nw4r::snd::FxReverbHi();
        mpFxBase = pReverbHi;

        if (!pReverbHi->SetParam(*pParam)) {
            return false;
        }

        mpParam = pParam;

        u32 workBufferSize = pReverbHi->GetRequiredMemSize();
        mpWorkBuffer = new (mpHeap) u8[workBufferSize];

        if (mpWorkBuffer != NULL) {
            for (int i = 0; i < workBufferSize; i++) {
                mpWorkBuffer[i] = 0;
            }

            pReverbHi->AssignWorkBuffer(mpWorkBuffer, workBufferSize);
            mType = TYPE_AXFX_REVERBHI;

            return nw4r::snd::detail::AxManager::GetInstance().AppendEffect(mAuxBus, pReverbHi);

        } else {
            return false;
        }
    }

    bool AudioFx::createFxReverbHiDpl2(const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param* pParam) {
        destroy();

        if (mpHeap == NULL) {
            return false;
        }

        nw4r::snd::FxReverbHiDpl2* pReverbHiDpl2 = new (mpHeap) nw4r::snd::FxReverbHiDpl2();
        mpFxBase = pReverbHiDpl2;

        if (!pReverbHiDpl2->SetParam(*pParam)) {
            return false;
        }

        mpParam = pParam;

        u32 workBufferSize = pReverbHiDpl2->GetRequiredMemSize();
        mpWorkBuffer = new (mpHeap) u8[workBufferSize];

        if (mpWorkBuffer != NULL) {
            for (int i = 0; i < workBufferSize; i++) {
                mpWorkBuffer[i] = 0;
            }

            pReverbHiDpl2->AssignWorkBuffer(mpWorkBuffer, workBufferSize);
            mType = TYPE_AXFX_REVERBHI_DPL2;

            return nw4r::snd::detail::AxManager::GetInstance().AppendEffect(mAuxBus, pReverbHiDpl2);

        } else {
            return false;
        }
    }

    bool AudioFx::createFxReverbStd(const nw4r::snd::FxReverbStd::ReverbStdParam* pParam) {
        destroy();

        if (mpHeap == NULL) {
            return false;
        }

        nw4r::snd::FxReverbStd* pReverbStd = new (mpHeap) nw4r::snd::FxReverbStd();
        mpFxBase = pReverbStd;

        if (!pReverbStd->SetParam(*pParam)) {
            return false;
        }

        mpParam = pParam;

        u32 workBufferSize = pReverbStd->GetRequiredMemSize();
        mpWorkBuffer = new (mpHeap) u8[workBufferSize];

        if (mpWorkBuffer != NULL) {
            for (int i = 0; i < workBufferSize; i++) {
                mpWorkBuffer[i] = 0;
            }

            pReverbStd->AssignWorkBuffer(mpWorkBuffer, workBufferSize);
            mType = TYPE_AXFX_REVERBSTD;

            return nw4r::snd::detail::AxManager::GetInstance().AppendEffect(mAuxBus, pReverbStd);

        } else {
            return false;
        }
    }

    bool AudioFx::createFxChorus(const nw4r::snd::FxChorus::ChorusParam* pParam) {
        destroy();

        if (mpHeap == NULL) {
            return false;
        }

        nw4r::snd::FxChorus* pChorus = new (mpHeap) nw4r::snd::FxChorus();
        mpFxBase = pChorus;

        if (!pChorus->SetParam(*pParam)) {
            return false;
        }

        mpParam = pParam;

        u32 workBufferSize = pChorus->GetRequiredMemSize();
        mpWorkBuffer = new (mpHeap) u8[workBufferSize];

        if (mpWorkBuffer != NULL) {
            for (int i = 0; i < workBufferSize; i++) {
                mpWorkBuffer[i] = 0;
            }

            pChorus->AssignWorkBuffer(mpWorkBuffer, workBufferSize);
            mType = TYPE_AXFX_CHORUS;

            return nw4r::snd::detail::AxManager::GetInstance().AppendEffect(mAuxBus, pChorus);

        } else {
            return false;
        }
    }

    bool AudioFx::createFxDelay(const nw4r::snd::FxDelay::DelayParam* pParam) {
        destroy();

        if (mpHeap == NULL) {
            return false;
        }

        nw4r::snd::FxDelay* pDelay = new (mpHeap) nw4r::snd::FxDelay();
        mpFxBase = pDelay;

        if (!pDelay->SetParam(*pParam)) {
            return false;
        }

        mpParam = pParam;

        u32 workBufferSize = pDelay->GetRequiredMemSize();
        mpWorkBuffer = new (mpHeap) u8[workBufferSize];

        if (mpWorkBuffer != NULL) {
            for (int i = 0; i < workBufferSize; i++) {
                mpWorkBuffer[i] = 0;
            }

            pDelay->AssignWorkBuffer(mpWorkBuffer, workBufferSize);
            mType = TYPE_AXFX_DELAY;

            return nw4r::snd::detail::AxManager::GetInstance().AppendEffect(mAuxBus, pDelay);

        } else {
            return false;
        }
    }

    const nw4r::snd::FxReverbHi::ReverbHiParam AudioFxMgr::scReverbHiParam = {
        0.02f,  // preDelayTime
        3.0f,   // fusedTime
        0.6f,   // coloration
        0.4f,   // damping
        0.1f,   // crossTalk
        1.0f    // outGain
    };

    const nw4r::snd::FxChorus::ChorusParam AudioFxMgr::scChorusParam = {
        10.0f,  // delayTime
        0.5f,   // depth
        1.0f    // rate
    };

    AudioFxMgr::AudioFxMgr() {
    }

    AudioFxMgr::~AudioFxMgr() {
    }

    bool AudioFxMgr::initializeFx(nw4r::snd::SoundHeap* pHeap, AudioFxMgrArg* pArg) {
        for (int i = 0; i < nw4r::snd::AUX_BUS_NUM; i++) {
            if (pArg->heapSize[i] == 0) {
                continue;
            }

            void* pHeapBuffer = pHeap->Alloc(pArg->heapSize[i], NULL, NULL);
            if (pHeapBuffer == NULL) {
                return false;
            }

            mAudioFx[i].init(static_cast<nw4r::snd::AuxBus>(i), pHeapBuffer, pArg->heapSize[i]);
        }

        return true;
    }

    bool AudioFxMgr::setFxReverbHi(nw4r::snd::AuxBus bus, const nw4r::snd::FxReverbHi::ReverbHiParam* pParam) {
        return mAudioFx[bus].create(AudioFx::TYPE_AXFX_REVERBHI, pParam);
    }

    bool AudioFxMgr::setFxReverbHiDpl2(nw4r::snd::AuxBus bus, const nw4r::snd::FxReverbHiDpl2::ReverbHiDpl2Param* pParam) {
        return mAudioFx[bus].create(AudioFx::TYPE_AXFX_REVERBHI_DPL2, pParam);
    }

    bool AudioFxMgr::setFxChorus(nw4r::snd::AuxBus bus, const nw4r::snd::FxChorus::ChorusParam* pParam) {
        return mAudioFx[bus].create(AudioFx::TYPE_AXFX_CHORUS, pParam);
    }

    bool AudioFxMgr::setFxDelay(nw4r::snd::AuxBus bus, const nw4r::snd::FxDelay::DelayParam* pParam) {
        return mAudioFx[bus].create(AudioFx::TYPE_AXFX_DELAY, pParam);
    }

    void AudioFxMgr::clearFx(nw4r::snd::AuxBus bus) {
        mAudioFx[bus].destroy();
    }

    const nw4r::snd::FxReverbHi::ReverbHiParam* AudioFxMgr::getDefaultFxReverbHi() {
        return &scReverbHiParam;
    }

    const nw4r::snd::FxChorus::ChorusParam* AudioFxMgr::getDefaultFxChorus() {
        return &scChorusParam;
    }
}  // namespace EGG
