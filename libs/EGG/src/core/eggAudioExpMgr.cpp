#include <egg/core.h>

namespace EGG {
    SimpleAudioMgrWithFx::SimpleAudioMgrWithFx() {
    }

    SimpleAudioMgrWithFx::~SimpleAudioMgrWithFx() {
    }

    SimpleAudioMgrWithFx::ArgWithFx::ArgWithFx() : fxArg() {
        // auto generates constructors
        SimpleAudioMgrArg unused0;
        AudioFxMgr::AudioFxMgrArg unused1;
    }

    void SimpleAudioMgrWithFx::initialize(IAudioMgr::Arg* arg) {
        SimpleAudioMgr::initialize(arg);

        if (arg != NULL) {
            arg = (IAudioMgr::Arg*)&((ArgWithFx*)arg)->fxArg;
        }

        initializeFx(&mHeap, (AudioFxMgrArg*)arg);

        setFxReverbHi(nw4r::snd::AUX_A, AudioFxMgr::getDefaultFxReverbHi());
        setFxChorus(nw4r::snd::AUX_B, AudioFxMgr::getDefaultFxChorus());

        mHeap.SaveState();
    }
}  // namespace EGG
