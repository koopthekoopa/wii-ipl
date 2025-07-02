#include <nw4r/snd/AxManager.h>
#include <nw4r/snd/DisposeCallbackManager.h>

#include <nw4r/ut.h>

#include <revolution/os.h>
#include <revolution/dvd.h>

#include <cstring>
#include <cstddef>

namespace nw4r {
    namespace snd {
        namespace detail {
            u8 AxManager::sZeroBuffer[ZERO_BUFFER_SIZE];

            AxManager::AxManager() :
            mOutputMode(OUTPUT_MODE_STEREO),
            mZeroBufferAddress(NULL),
            mCallbackList(),
            mPrioVoiceList(),
            mFreeVoiceList(),
            mVoices(),
            mInitialized(false),
            mUpdateVoicePrioFlag(true),
            mHomeButtonMuteFlag(false),
            mDiskErrorFlag(false),
            mHomeButtonMenuVolume(),
            mMasterVolume(),
            mVolumeForReset(),
            mOldAidCallback(NULL),
            mResetReadyCounter(-1),
            mAuxUserVolume(),
            mFxList() {
                mHomeButtonMenuVolume.InitValue(1.0f);
                mMasterVolume.InitValue(1.0f);
                mVolumeForReset.InitValue(1.0f);
                for (int i = 0; i < AUX_BUS_NUM; i++) {
                    mAuxFadeVolume[i].InitValue(1.0f);
                    mAuxUserVolume[i].InitValue(1.0f);
                    mAuxCallback[i] = NULL;
                    mAuxCallbackContext[i] = NULL;
                }
            }

            AxManager& AxManager::GetInstance() {
                static AxManager instance;
                return instance;
            }

            #pragma push
            #pragma ppc_iro_level 0 // uh
            void AxManager::Init() {
                if (mInitialized) {
                    return;
                }

                for (int i = 0; i < AX_VOICE_MAX; i++) {
                    mFreeVoiceList.PushBack(&mVoices[i]);
                }

                memset(sZeroBuffer, 0, sizeof(sZeroBuffer));
                DCFlushRange(sZeroBuffer, sizeof(sZeroBuffer));
                mZeroBufferAddress = sZeroBuffer;

                ut::AutoInterruptLock lock;

                AXRegisterAuxACallback(NULL, NULL);
                AXRegisterAuxBCallback(NULL, NULL);
                AXRegisterAuxCCallback(NULL, NULL);

                mNextAxRegisterCallback = AXRegisterCallback(AxCallbackFunc);
                mInitialized = true;
            }
            #pragma pop

            f32 AxManager::GetOutputVolume() const {
                f32 volume = mMasterVolume.GetValue();
                volume *= mVolumeForReset.GetValue();
                volume *= mHomeButtonMenuVolume.GetValue();
                return volume;
            }

            void AxManager::Update() {
                s32 status = DVDGetDriveStatus();

                if (status == DVD_STATE_IDLE) {
                    if (mDiskErrorFlag) {
                        mDiskErrorFlag = false;
                        UpdateAllVoicesSync(AxVoice::SYNC_AX_VOICE);
                    }
                }
                else if (status != DVD_STATE_BUSY) {
                    if (!mDiskErrorFlag) {
                        mDiskErrorFlag = true;
                        UpdateAllVoicesSync(AxVoice::SYNC_AX_VOICE);
                    }
                }

                bool update = false;

                if (!mMasterVolume.IsFinished()) {
                    mMasterVolume.Update();
                    update = true;
                }

                if (!mVolumeForReset.IsFinished()) {
                    mVolumeForReset.Update();
                    update = true;
                }

                if (!mHomeButtonMenuVolume.IsFinished()) {
                    mHomeButtonMenuVolume.Update();
                    update = true;
                }

                if (update) {
                    UpdateAllVoicesSync(AxVoice::SYNC_AX_VE);
                }
            }

            void* AxManager::GetZeroBufferAddress() {
                return mZeroBufferAddress;
            }

            void AxManager::RegisterCallback(CallbackListNode* node, AXOutCallback callback) {
                ut::AutoInterruptLock lock;
                node->callback = callback;
                mCallbackList.PushBack(node);
            }

            void AxManager::UnregisterCallback(CallbackListNode* node) {
                ut::AutoInterruptLock lock;
                mCallbackList.Erase(node);
            }

            void AxManager::SetOutputMode(OutputMode mode) {
                if (mOutputMode != mode) {
                    mOutputMode = mode;

                    switch (mode) {
                        case OUTPUT_MODE_STEREO: {
                            AXSetMode(AX_OUTPUT_STEREO);
                            break;
                        }
                        case OUTPUT_MODE_SURROUND: {
                            AXSetMode(AX_OUTPUT_SURROUND);
                            break;
                        }
                        case OUTPUT_MODE_DPL2: {
                            AXSetMode(AX_OUTPUT_DPL2);
                            break;
                        }
                        case OUTPUT_MODE_MONO: {
                            AXSetMode(AX_OUTPUT_STEREO);
                            break;
                        }
                    }

                    UpdateAllVoicesSync(AxVoice::SYNC_AX_MIX);
                }
            }

            OutputMode AxManager::GetOutputMode() {
                return mOutputMode;
            }

            void AxManager::AppendVoiceList(AxVoice* voice) {
                ut::AutoInterruptLock lock;

                mFreeVoiceList.Erase(voice);

                AxVoiceList::Iterator it;
                for (it = mPrioVoiceList.GetBeginIter(); it != mPrioVoiceList.GetEndIter(); it++) {
                    if (it->GetPriority() > voice->GetPriority()) {
                        break;
                    }
                }

                mPrioVoiceList.Insert(it, voice);
            }

            void AxManager::RemoveVoiceList(AxVoice* voice) {
                ut::AutoInterruptLock lock;
                mPrioVoiceList.Erase(voice);
                mFreeVoiceList.PushBack(voice);
            }

            AxVoice* AxManager::AllocVoice(int channels, int voices, int priority, AxVoice::AxVoiceCallback callback, void* callbackArg) {
                ut::AutoInterruptLock lock;

                if (mFreeVoiceList.IsEmpty() && DropLowestPriorityVoice(priority) == 0) {
                    return NULL;
                }

                AxVoice& rVoice = mFreeVoiceList.GetFront();
                if (!rVoice.Acquire(channels, voices, priority, callback, callbackArg)) {
                    return NULL;
                }

                rVoice.mPriority = priority & AxVoice::PRIORITY_MAX;
                AppendVoiceList(&rVoice);
                if (mUpdateVoicePrioFlag) {
                    UpdateAllVoicesPriority();
                }

                return &rVoice;
            }

            void AxManager::FreeVoice(AxVoice* voice) {
                ut::AutoInterruptLock lock;
                RemoveVoiceList(voice);
            }

            void AxManager::ChangeVoicePriority(AxVoice* voice) {
                ut::AutoInterruptLock lock;
                RemoveVoiceList(voice);
                AppendVoiceList(voice);
                if (mUpdateVoicePrioFlag) {
                    UpdateAllVoicesPriority();
                }
            }

            void AxManager::LockUpdateVoicePriority() {
                ut::AutoInterruptLock lock;
                mUpdateVoicePrioFlag = false;
            }

            void AxManager::UnlockUpdateVoicePriority() {
                ut::AutoInterruptLock lock;
                mUpdateVoicePrioFlag = true;
                UpdateAllVoicesPriority();
            }

            void AxManager::UpdateAllVoicesSync(u32 syncFlag) {
                ut::AutoInterruptLock lock;

                for (AxVoiceList::Iterator it = mPrioVoiceList.GetBeginIter(); it != mPrioVoiceList.GetEndIter();) {
                    AxVoiceList::Iterator currIt = it++;
                    if (currIt->mActiveFlag) {
                        currIt->mSyncFlag |= syncFlag;
                    }
                }
            }

            void AxManager::UpdateAllVoices() {
                ut::AutoInterruptLock lock;

                for (AxVoiceList::Iterator it = mPrioVoiceList.GetBeginIter(); it != mPrioVoiceList.GetEndIter();) {
                    AxVoiceList::Iterator currIt = it++;
                    currIt->Update();
                }
            }

            void AxManager::UpdateAllVoicesPriority() {
                for (AxVoiceList::Iterator it = mPrioVoiceList.GetBeginIter(); it != mPrioVoiceList.GetEndIter(); it++) {
                    if (it->GetPriority() == AxVoice::PRIORITY_MAX) {
                        continue;
                    }
                    it->SetAxParam(AXSetVoicePriority, (u32)16);
                }
            }

            void AxManager::SetMasterVolume(f32 volume, int frame) {
                mMasterVolume.SetTarget(volume, (frame + 2) / 3);

                if (frame == 0) {
                    UpdateAllVoicesSync(AxVoice::SYNC_AX_VE);
                }
            }
            
            void AxManager::AxCallbackFunc() {
                for (CallbackList::Iterator it = GetInstance().mCallbackList.GetBeginIter(); it != GetInstance().mCallbackList.GetEndIter();) {
                    CallbackList::Iterator currIt = it++;
                    currIt->callback();
                }

                if (GetInstance().mNextAxRegisterCallback != NULL) {
                    GetInstance().mNextAxRegisterCallback();
                }
            }

            bool AxManager::AppendEffect(AuxBus bus, FxBase* fx) {
                if (!fx->StartUp()) {
                    return false;
                }

                ut::AutoInterruptLock lock;

                if (GetEffectList(bus).IsEmpty()) {
                    switch (bus) {
                        case AUX_A: {
                            AXRegisterAuxACallback(AuxCallbackFunc, reinterpret_cast<void*>(bus));
                            break;
                        }
                        case AUX_B: {
                            AXRegisterAuxBCallback(AuxCallbackFunc, reinterpret_cast<void*>(bus));
                            break;
                        }
                        case AUX_C: {
                            AXRegisterAuxCCallback(AuxCallbackFunc, reinterpret_cast<void*>(bus));
                            break;
                        }
                        default: {
                            break;
                        }
                    }

                    mAuxCallbackWaitCounter[bus] = 2;
                }

                GetEffectList(bus).PushBack(fx);
                return true;
            }

            void AxManager::ClearEffect(AuxBus bus, int frame) {
                ShutdownEffect(bus);
            }

            void AxManager::ShutdownEffect(AuxBus bus) {
                ut::AutoInterruptLock lock;

                FxList& fxList = GetEffectList(bus);
                if (fxList.IsEmpty()) {
                    return;
                }
                for (FxList::Iterator it = fxList.GetBeginIter(); it != fxList.GetEndIter(); it++) {
                    it->Shutdown();
                }
                fxList.Clear();

                switch (bus) {
                    case AUX_A: {
                        AXRegisterAuxACallback(NULL, NULL);
                        break;
                    }
                    case AUX_B: {
                        AXRegisterAuxBCallback(NULL, NULL);
                        break;
                    }
                    case AUX_C: {
                        AXRegisterAuxCCallback(NULL, NULL);
                        break;
                    }
                    default: {
                        break;
                    }
                }
            }

            int AxManager::DropLowestPriorityVoice(int priority) {
                int dropped = 0;

                if (mFreeVoiceList.IsEmpty()) {
                    AxVoice& rVoice = mPrioVoiceList.GetFront();

                    if (rVoice.GetPriority() > priority) {
                        return 0;
                    }

                    dropped = rVoice.GetAxVoiceCount();

                    rVoice.Stop();
                    rVoice.Free();

                    if (rVoice.mCallback != NULL) {
                        rVoice.mCallback(&rVoice, AxVoice::CALLBACK_STATUS_DROP_VOICE, rVoice.mCallbackData);
                    }
                }

                return dropped;
            }

            void AxManager::AuxCallbackFunc(void* chans, void* context) {
                int num;
                void* buffer[AX_DPL2_MAX];

                void** ppChans = static_cast<void**>(chans);
                AuxBus bus = static_cast<AuxBus>(reinterpret_cast<u32>(context));

                if (GetInstance().GetOutputMode() == OUTPUT_MODE_DPL2) {
                    num = AX_DPL2_MAX;

                    buffer[AX_DPL2_L] = ppChans[AX_DPL2_L];
                    buffer[AX_DPL2_R] = ppChans[AX_DPL2_R];
                    buffer[AX_DPL2_LS] = ppChans[AX_DPL2_LS];
                    buffer[AX_DPL2_RS] = ppChans[AX_DPL2_RS];
                }
                else {
                    num = AX_STEREO_MAX;

                    buffer[AX_STEREO_L] = ppChans[AX_STEREO_L];
                    buffer[AX_STEREO_R] = ppChans[AX_STEREO_R];
                    buffer[AX_STEREO_S] = ppChans[AX_STEREO_S];
                }

                if (GetInstance().mAuxCallbackWaitCounter[bus] > 0) {
                    GetInstance().mAuxCallbackWaitCounter[bus]--;

                    for (int i = 0; i < num; i++) {
                        memset(buffer[i], 0, FX_BUFFER_SIZE);
                    }
                }
                else if (GetInstance().GetEffectList(bus).IsEmpty()) {
                    for (int i = 0; i < num; i++) {
                        memset(buffer[i], 0, FX_BUFFER_SIZE);
                    }
                }
                else {
                    for (FxList::Iterator it = GetInstance().GetEffectList(bus).GetBeginIter();
                        it != GetInstance().GetEffectList(bus).GetEndIter(); it++) {

                        it->UpdateBuffer(num, buffer, FX_BUFFER_SIZE, FX_SAMPLE_FORMAT, FX_SAMPLE_RATE, GetInstance().GetOutputMode());
                    }
                }
            }
        }
    }
}
