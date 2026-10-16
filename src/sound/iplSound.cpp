#include "iplSound.h"

#include "iplSystem.h"

#define MAX_SE 16

#define IS_SOUND_ID(handle, id) (handle != NULL && handle->mHandle.GetId() == id)

// TODO: Get rid of this fakematch. SetPan generates it's weak function, even though it shouldn't.
#define SET_PAN(se, pan)                                                                                                                             \
    do {                                                                                                                                             \
        f32 __val = (pan);                                                                                                                           \
        if (se->mHandle.IsAttachedSound()) {                                                                                                         \
            se->mHandle.detail_GetAttachedSound()->SetPan(__val);                                                                                    \
        }                                                                                                                                            \
    } while (FALSE)

namespace ipl {
    namespace snd {
        SSeInfo _seBlk[MAX_SE];

        SBgmInfo _bgmBlk;
        SBgmInfo* _mainBGMHandle;

        BOOL m_isLocked;

        System sSystem;
        BannerSoundPlayer sBannerSoundPlayer;

        static const nw4r::snd::FxReverbHi::ReverbHiParam reverbHiParam[] = {0.0f, 2.5f, 0.5f, 0.0f, 0.0f, 1.0f};

        // rude
        void System::shutup(BOOL isLocked) {
            if (m_isLocked == isLocked) {
                return;
            }

            m_isLocked = isLocked;

            if (isLocked) {
                AIStopDMA();
            } else {
                AIStartDMA();
            }
        }

        void System::initOnMemory(const void* data, EGG::Heap* heap, u32 soundHeapSize) {
            mFreeBlock = 0;
            unk_0x624 = 0;

            _mainBGMHandle = NULL;

            EGG::SimpleAudioMgrWithFx::ArgWithFx arg;
            arg.pHeap = heap;
            arg.soundHeapSize = soundHeapSize;
            arg.fxArg.heapSize[0] = 0x30000;
            arg.fxArg.heapSize[1] = 0;
            arg.fxArg.heapSize[2] = 0;

            initialize(&arg);
            mpSoundArcPlayer = setupMemoryArchive(data, &EGG::SoundHeapMgr::getSoundHeap());

            initFx();
            sBannerSoundPlayer.init(5);

            for (int i = 0; i < MAX_SE; i++) {
                _seBlk[i].mpName = NULL;
                _seBlk[i].mID = (u16)nw4r::snd::SoundArchive::INVALID_ID;
            }

            sBannerSoundPlayer.setMasterVolume(0.89999998f);
        }

        void System::initFx() {
            setFxReverbHi(nw4r::snd::AUX_A, reverbHiParam);
        }

        void System::calc() {
            EGG::SimpleAudioMgr::calc();
            sBannerSoundPlayer.calc();
        }

        SBgmInfo* System::startBGM(const char* bgmName) {
            if (m_isLocked) {
                return NULL;
            }

            EGG::ArcPlayer::startSound(&_bgmBlk.mHandle, bgmName);

            SBgmInfo* bgm = &_bgmBlk;
            _mainBGMHandle = &_bgmBlk;
            return bgm;
        }

        SSeInfo* System::startSE(const char* seName) {
            if (m_isLocked) {
                return NULL;
            }

            SSeInfo* se;

            se = FIsSEActive(seName);
            if (IS_SOUND_ID(se, WIPL_SE_GRAY_BUTTON) || IS_SOUND_ID(se, WIPL_SE_ERROR)) {
                return se;
            }

            if (se == NULL) {
                se = getFreeSEBlock(true);
            }
            if (se == NULL) {
                return NULL;
            }

            se->mHandle.Stop();

            EGG::ArcPlayer::startSound(&se->mHandle, seName);
            se->mpName = seName;
            se->mID = se->mHandle.GetId();

            return se;
        }

        SSeInfo* System::startSEIndex(u32 seIndex) {
            if (m_isLocked) {
                return NULL;
            }

            SSeInfo* se;

            se = FIsSEActive(seIndex);
            if (IS_SOUND_ID(se, WIPL_SE_GRAY_BUTTON) || IS_SOUND_ID(se, WIPL_SE_ERROR)) {
                return se;
            }

            if (se == NULL) {
                se = getFreeSEBlock(true);
            }
            if (se == NULL) {
                return NULL;
            }

            se->mHandle.Stop();

            EGG::ArcPlayer::startSound(&se->mHandle, seIndex);
            se->mID = seIndex;

            return se;
        }

        SSeInfo* System::startSEwithPos(const char* seName, f32 pos) {
            if (m_isLocked) {
                return NULL;
            }

            SSeInfo* se = FIsSEActive(seName);

            se = getFreeSEBlock(se == NULL);
            if (se == NULL) {
                return NULL;
            }

            se->mHandle.Stop();

            EGG::ArcPlayer::startSound(&se->mHandle, seName);
            se->mpName = seName;
            se->mID = se->mHandle.GetId();

            nw4r::ut::Rect projRect;
            ipl::System::getProjectionRect(&projRect);

            SET_PAN(se, pos / projRect.right);

            return se;
        }

        SSeInfo* System::holdSE(const char* seName) {
            if (m_isLocked) {
                return NULL;
            }

            SSeInfo* se = FIsSEActive(seName);

            if (se == NULL) {
                se = getFreeSEBlock(true);
            }
            if (se == NULL) {
                return NULL;
            }

            EGG::ArcPlayer::holdSound(&se->mHandle, seName);
            se->mpName = seName;
            se->mID = se->mHandle.GetId();

            return se;
        }

        SSeInfo* System::holdSEwithPosDis(const char* seName, f32 pos, f32 dis) {
            if (m_isLocked) {
                return NULL;
            }

            SSeInfo* se = FIsSEActive(seName);

            if (se == NULL) {
                se = getFreeSEBlock(true);
            }
            if (se == NULL) {
                return NULL;
            }

            EGG::ArcPlayer::holdSound(&se->mHandle, seName);
            se->mpName = seName;
            se->mID = se->mHandle.GetId();

            nw4r::ut::Rect projRect;
            ipl::System::getProjectionRect4x3(&projRect);

            SET_PAN(se, pos / projRect.right);

            f32 panVolume = ((dis * 2.0f) / projRect.right);
            if (1.0f < panVolume) {
                panVolume = 1.0f;
            }

            se->mHandle.SetVolume(panVolume);

            if (30.0f < dis) {
                f32 finalDis = dis / 30.0f;
                se->mHandle.SetPitch(finalDis);
            } else {
                if (60.0f < dis) {
                    se->mHandle.SetPitch(2.0f);
                }
            }

            return se;
        }

        void System::stopBGM(int fadeOut) {
            if (_mainBGMHandle != NULL && _mainBGMHandle->mHandle.IsAttachedSound()) {
                _mainBGMHandle->mHandle.Stop(fadeOut);
            }
        }

        void System::stopSE(nw4r::snd::SoundHandle* handle, int fadeOut) {
            if (handle != NULL && handle->IsAttachedSound()) {
                for (int i = 0; i < MAX_SE; i++) {
                    if (handle == &_seBlk[i].mHandle) {
                        _seBlk[i].mHandle.Stop(fadeOut);

                        _seBlk[i].mpName = NULL;
                        _seBlk[i].mID = (u16)nw4r::snd::SoundArchive::INVALID_ID;
                    }
                }
            }
        }

        void System::stopAllSound(int fadeOut) {
            for (int i = 0; i < MAX_SE; i++) {
                _seBlk[i].mHandle.Stop(fadeOut);

                _seBlk[i].mpName = NULL;
                _seBlk[i].mID = (u16)nw4r::snd::SoundArchive::INVALID_ID;
            }

            if (_mainBGMHandle != NULL) {
                _mainBGMHandle->mHandle.Stop(fadeOut);
            }

            sBannerSoundPlayer.stop(fadeOut);

            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_A, (fadeOut * 1000) / 60);
            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_B, (fadeOut * 1000) / 60);
            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_C, (fadeOut * 1000) / 60);
        }

        void System::resetAllSound() {
            for (int i = 0; i < MAX_SE; i++) {
                _seBlk[i].mHandle.Stop(0);

                _seBlk[i].mpName = NULL;
                _seBlk[i].mID = (u16)nw4r::snd::SoundArchive::INVALID_ID;
            }

            if (_mainBGMHandle != NULL) {
                _mainBGMHandle->mHandle.Stop(0);
            }

            sBannerSoundPlayer.stop(0);

            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_A, 0);
            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_B, 0);
            nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_C, 0);

            nw4r::snd::SoundSystem::SetMasterVolume(0.0f, 0);
            sBannerSoundPlayer.setMasterVolume(0.0f);
        }

        void System::muteOnBGM(int fadeOut) {
            SBgmInfo* mainBGMHandle = _mainBGMHandle;  // thanks
            if (mainBGMHandle != NULL && mainBGMHandle->mHandle.IsAttachedSound()) {
                mainBGMHandle->mHandle.SetVolume(0.0f, fadeOut);
            }
        }

        void System::muteOffBGM(int fadeOut) {
            SBgmInfo* mainBGMHandle = _mainBGMHandle;  // thanks
            if (mainBGMHandle != NULL && mainBGMHandle->mHandle.IsAttachedSound()) {
                mainBGMHandle->mHandle.SetVolume(1.0f, fadeOut);
            }
        }

        void System::pauseOnBGM() {
            if (_mainBGMHandle != NULL) {
                if (_mainBGMHandle->mHandle.IsAttachedSound()) {
                    _mainBGMHandle->mHandle.Pause(true, 5);
                }

                pauseOnSE();

                sBannerSoundPlayer.pause(true);

                nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_A, 250);
                nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_B, 250);
                nw4r::snd::SoundSystem::ClearEffect(nw4r::snd::AUX_C, 250);
            }
        }

        void System::pauseOffBGM() {
            if (_mainBGMHandle != NULL) {
                initFx();

                if (_mainBGMHandle->mHandle.IsAttachedSound()) {
                    _mainBGMHandle->mHandle.Pause(false, 5);
                }

                pauseOffSE();

                sBannerSoundPlayer.pause(false);
            }
        }

        void System::pauseOnSE() {
            for (int i = 0; i < MAX_SE; i++) {
                if (_seBlk[i].mHandle.IsAttachedSound()) {
                    _seBlk[i].mHandle.Pause(true, 5);
                }
            }
        }

        void System::pauseOffSE() {
            for (int i = 0; i < MAX_SE; i++) {
                if (_seBlk[i].mHandle.IsAttachedSound()) {
                    _seBlk[i].mHandle.Pause(false, 5);
                }
            }
        }

        void System::setOutputMode(EAudioOutputMode outputMode) {
            nw4r::snd::OutputMode nw4rOutputMode;
            switch (outputMode) {
                case AUDIO_OUTPUT_MODE_STEREO: {
                    nw4rOutputMode = nw4r::snd::OUTPUT_MODE_STEREO;
                    break;
                }
                case AUDIO_OUTPUT_MODE_SURROUND: {
                    nw4rOutputMode = nw4r::snd::OUTPUT_MODE_SURROUND;
                    break;
                }
                case AUDIO_OUTPUT_MODE_MONO: {
                    nw4rOutputMode = nw4r::snd::OUTPUT_MODE_MONO;
                    break;
                }
                default: {
                    return;
                }
            }

            nw4r::snd::SoundSystem::SetOutputMode(nw4rOutputMode);
        }

        BOOL System::isSEActive(const char* seName) {
            return FIsSEActive(seName) != NULL;
        }

        SSeInfo* System::FIsSEActive(const char* seName) {
            for (int i = 0; i < MAX_SE; i++) {
                // @BUG copy and paste error? because it should use a strcmp function instead...
                if (seName == _seBlk[i].mpName && _seBlk[i].mHandle.IsAttachedSound()) {
                    return &_seBlk[i];
                }
            }
            return NULL;
        }

        SSeInfo* System::FIsSEActive(u32 seIndex) {
            for (int i = 0; i < MAX_SE; i++) {
                if (seIndex == _seBlk[i].mID && _seBlk[i].mHandle.IsAttachedSound()) {
                    return &_seBlk[i];
                }
            }
            return NULL;
        }

        BOOL System::isSEActive(u32 seIndex) {
            return FIsSEActive(seIndex) != NULL;
        }

        SSeInfo* System::getFreeSEBlock(bool a) {
            mFreeBlock = clipGELT_S32(mFreeBlock + 1, 0, MAX_SE);
            for (int i = 0; i < MAX_SE; i++) {
                s32 clip = clipGELT_S32(mFreeBlock + i, 0, MAX_SE);
                if (!_seBlk[clip].mHandle.IsAttachedSound()) {
                    mFreeBlock = clip;
                    return &_seBlk[mFreeBlock];
                }
            }

            if (!a) {
                return NULL;
            } else {
                return &_seBlk[mFreeBlock];
            }
        }

        BOOL System::startBannerSound(void* data, u32 dataSize, bool ignoreSize) {
            if (sBannerSoundPlayer.checkData(data, dataSize, ignoreSize) == false) {
                return FALSE;
            }
            return sBannerSoundPlayer.start(data, dataSize);
        }

        void System::stopBannerSound(int fadeOut) {
            sBannerSoundPlayer.stop(fadeOut);
        }

        BOOL System::checkTmpSoundFile(void* data, u32 dataSize) {
            return sBannerSoundPlayer.checkData(data, dataSize, false);
        }

        s32 System::clipGELT_S32(s32 value, s32 min, s32 max) {
            s32 diff = max - min;
            if (diff < 0) {
                s32 oldMin = min;
                min = max;
                max = oldMin;
                diff = oldMin - min;
            }

            if (value < min) {
                value += diff;
            } else if (value >= max) {
                value -= diff;
            }

            return value;
        }

    }  // namespace snd
}  // namespace ipl
