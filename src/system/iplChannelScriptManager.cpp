#include "system/iplChannelScriptManager.h"

#include "channelScript/VmSystem.h"
#include "channelScript/iplCSLibrary.h"

#include "sound/iplSound.h"

#include <cstring>

namespace ipl {
    namespace channel {
        CHANSVm ChannelScriptManager::smCSVm;

        RsoThread* ChannelScriptManager::smpThread;
        int ChannelScriptManager::smCSState;

        ChannelScriptManager::ChannelScriptManager() {
            mpChansWork = NULL;
            mpHeap = NULL;
        }

        void ChannelScriptManager::create(EGG::ExpHeap* heap) {
            if (mpChansWork == NULL) {
                mpChansWork = new (heap, 4) u8[CHANS_VM_DEFAULT_WORK_SIZE];
            }

            if (mpHeap == NULL) {
                mpHeap = heap;
            }

            memset(&mCSData, 0, sizeof(mCSData));
            memset(&mAltSound, 0, sizeof(mAltSound));

            smCSState = CHANS_VM_STATE_UNK0;
            mState = CHANS_VM_MSG_STATE_UNK0;
            mAltSoundState = CHANS_VM_ALT_SND_STATE_UNAVAILABLE;
        }

        BOOL ChannelScriptManager::init(nand::File* file, RsoThread* thread) {
            smpThread = thread;

            memset(mpChansWork, 0, CHANS_VM_DEFAULT_WORK_SIZE);

            CHANSVmInit(&smCSVm, mpChansWork, CHANS_VM_DEFAULT_WORK_SIZE);

            OSAssertMsg(cs::system::init(&smCSVm), "CHANSVmSystemMenuInit error\n", 101);
            OSAssertMsg(cs::layout::init(&smCSVm), "VmLayoutInit error\n", 105);
            OSAssertMsg(cs::pane::init(&smCSVm), "VmPaneInit error\n", 109);
            OSAssertMsg(cs::material::init(&smCSVm), "VmMaterialInit error\n", 113);
            OSAssertMsg(cs::texture::init(&smCSVm), "VmTextureInit error\n", 117);
            OSAssertMsg(cs::savedata::init(&smCSVm), "VmSaveDataInit error\n", 121);
            OSAssertMsg(cs::vec3::init(&smCSVm), "VmVec3Init error\n", 125);
            OSAssertMsg(cs::mtx34::init(&smCSVm), "VmMTX34Init error\n", 129);
            OSAssertMsg(cs::gx::init(&smCSVm), "VmGXInit error\n", 133);
            OSAssertMsg(cs::textwriter::init(&smCSVm), "VmTextWriterInit error\n", 137);
            OSAssertMsg(cs::font::init(&smCSVm), "VmFontInit error\n", 141);
            OSAssertMsg(cs::rect::init(&smCSVm), "VmRectInit error\n", 145);
            OSAssertMsg(cs::color::init(&smCSVm), "VmColorInit error\n", 149);
            OSAssertMsg(cs::color_s10::init(&smCSVm), "VmColorS10Init error\n", 153);
            OSAssertMsg(cs::size::init(&smCSVm), "VmSizeInit error\n", 157);
            OSAssertMsg(cs::anim::init(&smCSVm), "VmAnimInit error\n", 161);
            OSAssertMsg(cs::sound::init(&smCSVm), "VmSoundInit error\n", 165);
            OSAssertMsg(cs::iplimage::init(&smCSVm), "VmIplImageInit error\n", 169);

            u32 freeSize = CHANSVmGetFreeExeSize(&smCSVm);
            if (file->getLength() > freeSize) {
                return FALSE;
            }

            void* freeBuf = CHANSVmGetFreeExeBufp(&smCSVm);
            if (freeBuf == NULL) {
                return FALSE;
            }

            memcpy(freeBuf, file->getBuffer(), file->getLength());

            if (CHANSVmAddExe(&smCSVm, 1, 0) != CHANS_VM_OK) {
                return FALSE;
            }

            if (CHANSVmLinkModules(&smCSVm, 1) != CHANS_VM_OK) {
                return FALSE;
            }

            smpThread->setCalcFunc(calcCSThread);
            smpThread->start();

            smCSState = CHANS_VM_STATE_UNK1;

            return TRUE;
        }

        void ChannelScriptManager::calc() {
            OSMessage msg;
            if (smCSState == CHANS_VM_STATE_UNK2 && smpThread->IsThreadSuspended() != FALSE) {
                OSReceiveMessage(smpThread->getCalcQueue(), &msg, 0);
                mState = *(u32*)msg;
                if (mState == CHANS_VM_MSG_STATE_UNK1) {
                    smCSState = CHANS_VM_STATE_UNK3;
                    smpThread->Resume();
                }
            }

            if (smCSState == CHANS_VM_STATE_UNK3) {
                if (mState == CHANS_VM_MSG_STATE_UNK2) {
                    smpThread->Resume();
                }

                OSReceiveMessage(smpThread->getCalcQueue(), &msg, OS_MESSAGE_BLOCK);
                mState = *(u32*)msg;
                if (mAltSoundState == CHANS_VM_ALT_SND_STATE_PLAY) {
                    snd::getBannerPlayer()->start(mAltSound.data, mAltSound.length);
                    mAltSoundState = CHANS_VM_ALT_SND_STATE_UNAVAILABLE;
                }
            }

            if (smCSState == CHANS_VM_STATE_UNK4) {
                smpThread->WaitForThreadExit();
                smCSState = 0;
            }
        }

        void ChannelScriptManager::finish() {
            smpThread->setCalcFunc(NULL);
        }

        void ChannelScriptManager::destroy() {
            if (mpChansWork != NULL) {
                delete[] mpChansWork;
                mpChansWork = NULL;
            }

            if (mpHeap != NULL) {
                mpHeap = NULL;
            }
        }

        void ChannelScriptManager::setData(const CSData& data) {
            mCSData = data;
        }

        void ChannelScriptManager::setAltBannerSound(void* sndData, u32 sndLength) {
            mAltSound.data = sndData;
            mAltSound.length = sndLength;

            if (sndData != NULL) {
                mAltSoundState = CHANS_VM_ALT_SND_STATE_PLAY;
            }
        }

        BOOL ChannelScriptManager::isValidAddr(void* addr) {
            EGG::Heap* heap1 = mpHeap;
            EGG::Heap* heap2 = mCSData.heap;

            return heap1->isHeapPointer(addr) || heap2->isHeapPointer(addr);
        }

        void ChannelScriptManager::calcCSThread() {
            CHANSVmErr result;

            int msgState;

#define SEND_STATE_4()                                                                                                                               \
    {                                                                                                                                                \
        msgState = CHANS_VM_MSG_STATE_UNK4;                                                                                                          \
        BOOL old = OSDisableInterrupts() != FALSE;                                                                                                   \
        OSSendMessage(smpThread->getCalcQueue(), &msgState, OS_MESSAGE_BLOCK);                                                                       \
        smCSState = CHANS_VM_STATE_UNK4;                                                                                                             \
        OSRestoreInterrupts(old);                                                                                                                    \
    }

            while (TRUE) {
                result = CHANSVmStep(&smCSVm, 1);

                // Continue! Nothing has gone wrong yet!
                if (result == CHANS_VM_OK) {
                    continue;
                }

                // CHANSVm is awaiting for render
                if (result == CHANS_VM_ERR_SIGNAL && ((CHANSVmPrivate*)&smCSVm)->curSignal == &VmSystemBeginRenderFlag) {
                    if (smCSState == CHANS_VM_STATE_UNK1) {
                        smCSState = CHANS_VM_STATE_UNK2;

                        msgState = CHANS_VM_MSG_STATE_UNK1;
                        OSSendMessage(smpThread->getCalcQueue(), &msgState, OS_MESSAGE_BLOCK);

                        smpThread->Suspend();

                        continue;
                    }

                    SEND_STATE_4();

                    return;
                }

                // CHANSVm is awaiting for retrace
                if (result == CHANS_VM_ERR_SIGNAL && ((CHANSVmPrivate*)&smCSVm)->curSignal == &VmSystemWaitForRetraceFlag) {
                    if (smCSState == CHANS_VM_STATE_UNK3) {
                        msgState = CHANS_VM_MSG_STATE_UNK2;
                        OSSendMessage(smpThread->getCalcQueue(), &msgState, OS_MESSAGE_BLOCK);

                        smpThread->Suspend();

                        continue;
                    }

                    SEND_STATE_4();

                    return;
                }

                // An error has occured!
                if (result != CHANS_VM_ERR_EXIT) {
                    u16 line = CHANSVmGetSourceLine(&smCSVm);

                    // stripped out code on release
                }

                break;
            }

            SEND_STATE_4();
        }
    }  // namespace channel
}  // namespace ipl
