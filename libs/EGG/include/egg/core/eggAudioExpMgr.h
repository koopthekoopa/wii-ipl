#ifndef EGG_AUDIO_EXP_MGR_H
#define EGG_AUDIO_EXP_MGR_H

#include <egg/core/eggAudioFxMgr.h>
#include <egg/core/eggAudioMgr.h>
#include <egg/prim.h>

#include <nw4r/snd.h>

namespace EGG {
    class SimpleAudioMgrWithFx : public SimpleAudioMgr, public AudioFxMgr {
    public:
        typedef struct ArgWithFx : public SimpleAudioMgrArg {
            ArgWithFx();

            AudioFxMgr::AudioFxMgrArg fxArg;  // 0x18
        } ArgWithFx;

        SimpleAudioMgrWithFx();
        virtual ~SimpleAudioMgrWithFx();

        virtual void initialize(IAudioMgr::Arg* arg);
    };
}  // namespace EGG

#endif  // EGG_AUDIO_EXP_MGR_H
