#include <nw4r/snd/SoundThread.h>

#include <nw4r/snd/WsdPlayer.h>
#include <nw4r/snd/SeqPlayer.h>
#include <nw4r/snd/WavePlayer.h>
#include <nw4r/snd/StrmPlayer.h>

#include <revolution/os.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            SoundThread& SoundThread::GetInstance() {
                static SoundThread instance;
                return instance;
            }
            
            bool SoundThread::Create(s32 priority) {
                if (mCreateFlag) {
                    return true;
                }

                mCreateFlag = true;

                OSInitThreadQueue(&mThreadQueue);
                OSInitMutex(&mMutex);

                BOOL success = OSCreateThread(&mThread, SoundThreadFunc, &GetInstance(),
                                            mThreadStack + THREAD_STACK_SIZE,
                                            THREAD_STACK_SIZE * 8,
                                            priority, 0);

                if (success) {
                    OSResumeThread(&mThread);
                }

                return success;
            }

            void SoundThread::AxCallback() {
                BOOL result = OSSendMessage(&GetInstance().mMsgQueue, reinterpret_cast<OSMessage>(MSG_AX_CALLBACK), 0);

                WavePlayer::detail_UpdateBufferAllPlayers();
                StrmPlayer::UpdateBufferAllPlayers();
            }

            void* SoundThread::SoundThreadFunc(void* arg) {
                SoundThread* thread = static_cast<SoundThread*>(arg);

                OSInitMessageQueue(&thread->mMsgQueue, thread->mMsgBuffer, MSG_QUEUE_CAPACITY);

                AxManager::GetInstance().RegisterCallback(&thread->mAxCallbackNode, AxCallback);
                thread->SoundThreadProc();
                AxManager::GetInstance().UnregisterCallback(&thread->mAxCallbackNode);

                return NULL;
            }

            void SoundThread::SoundThreadProc() {
                OSMessage message;

                while (true) {
                    OSReceiveMessage(&mMsgQueue, &message, 1);

                    if (reinterpret_cast<u32>(message) == MSG_AX_CALLBACK) {
                        ut::AutoMutexLock autoMutex(mMutex);

                        OSTick start = OSGetTick();
                        {
                            AxManager::GetInstance().Update();

                            SeqPlayer::UpdateAllPlayers();
                            WsdPlayer::UpdateAllPlayers();
                            StrmPlayer::UpdateAllPlayers();
                            WavePlayer::detail_UpdateAllPlayers();

                            for (CallbackList::Iterator it = mCallbackList.GetBeginIter(); it != mCallbackList.GetEndIter();) {
                                CallbackList::Iterator currIt = it++;
                                currIt->UpdatePlayer();
                            }

                            Channel::UpdateAllChannel();
                            Util::CalcRandom();

                            {
                                ut::AutoInterruptLock lock;
                                AxManager::GetInstance().UpdateAllVoices();
                            }
                        }
                        mProcessTick = OSDiffTick(OSGetTick(), start);

                        for (CallbackList::Iterator it = mCallbackList.GetBeginIter(); it != mCallbackList.GetEndIter();) {
                            CallbackList::Iterator currIt = it++;
                            currIt->EndSoundFrame();
                        }
                    }
                    else if (reinterpret_cast<u32>(message) == MSG_SHUTDOWN) {
                        SeqPlayer::StopAllPlayers();
                        WsdPlayer::StopAllPlayers();
                        StrmPlayer::StopAllPlayers();
                        WavePlayer::detail_StopAllPlayers();

                        break;
                    }
                }
            }
        }
    }
}
