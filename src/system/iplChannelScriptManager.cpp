#include "system/iplChannelScriptManager.h"

#include "channelScript/iplCSLibrary.h"

#include "sound/iplSound.h"

#include <cstring>

namespace ipl {
    namespace channel {
        int         ChannelScriptManager::smCSState;
        RsoThread*  ChannelScriptManager::smpThread;
        CHANSVm     ChannelScriptManager::smCSVm;

        ChannelScriptManager::ChannelScriptManager() {
            mpChansWork = NULL;
            mpHeap = NULL;
        }

        void ChannelScriptManager::create(EGG::ExpHeap* heap) {
            if (mpChansWork == NULL) {
                mpChansWork = new(heap, CLASS_HEAP) u8[CHANS_VM_DEFAULT_WORK_SIZE];
            }

            if (mpHeap == NULL) {
                mpHeap = heap;
            }

            memset(&mCSData, 0, sizeof(mCSData));
            memset(unk_0x28, 0, sizeof(unk_0x28));

            smCSState = CHANS_VM_STATE_CREATE;

            unk_0x30 = 0;
            unk_0x34 = 0;
        }

        BOOL ChannelScriptManager::init(nand::File* file, RsoThread* thread) {
            smpThread = thread;

            memset(mpChansWork, 0, CHANS_VM_DEFAULT_WORK_SIZE);

            CHANSVmInit(&smCSVm, mpChansWork, CHANS_VM_DEFAULT_WORK_SIZE);

            OSAssertMsg(cs::system::init(&smCSVm),      "CHANSVmSystemMenuInit error\n",    101);
            OSAssertMsg(cs::layout::init(&smCSVm),      "VmLayoutInit error\n",             105);
            OSAssertMsg(cs::pane::init(&smCSVm),        "VmPaneInit error\n",               109);
            OSAssertMsg(cs::material::init(&smCSVm),    "VmMaterialInit error\n",           113);
            OSAssertMsg(cs::texture::init(&smCSVm),     "VmTextureInit error\n",            117);
            OSAssertMsg(cs::savedata::init(&smCSVm),    "VmSaveDataInit error\n",           121);
            OSAssertMsg(cs::vec3::init(&smCSVm),        "VmVec3Init error\n",               125);
            OSAssertMsg(cs::mtx34::init(&smCSVm),       "VmMTX34Init error\n",              129);
            OSAssertMsg(cs::gx::init(&smCSVm),          "VmGXInit error\n",                 133);
            OSAssertMsg(cs::textwriter::init(&smCSVm),  "VmTextWriterInit error\n",         137);
            OSAssertMsg(cs::font::init(&smCSVm),        "VmFontInit error\n",               141);
            OSAssertMsg(cs::rect::init(&smCSVm),        "VmRectInit error\n",               145);
            OSAssertMsg(cs::color::init(&smCSVm),       "VmColorInit error\n",              149);
            OSAssertMsg(cs::color_s10::init(&smCSVm),   "VmColorS10Init error\n",           153);
            OSAssertMsg(cs::size::init(&smCSVm),        "VmSizeInit error\n",               157);
            OSAssertMsg(cs::anim::init(&smCSVm),        "VmAnimInit error\n",               161);
            OSAssertMsg(cs::sound::init(&smCSVm),       "VmSoundInit error\n",              165);
            OSAssertMsg(cs::iplimage::init(&smCSVm),    "VmIplImageInit error\n",           169);

            BOOL retResult;
            if (CHANSVmGetFreeExeSize(&smCSVm) == 0) {
                retResult = FALSE;
            }
            else {
                void* freeBuf = CHANSVmGetFreeExeBufp(&smCSVm);
                if (freeBuf == NULL) {
                    retResult = FALSE;
                }
                else {
                    memcpy(freeBuf, file->getBuffer(), file->getLength());

                    if (CHANSVmAddExe(&smCSVm, 1, 0) == FALSE) {
                        if (CHANSVmLinkModules(&smCSVm, 1) == 0) {
                            smpThread->setCalcFunc(calcCSThread);
                            smpThread->start();

                            retResult = TRUE;

                            smCSState = CHANS_VM_STATE_UNK1;
                        }
                        else {
                            retResult = FALSE;
                        }
                    }
                    else {
                        retResult = FALSE;
                    }
                }
            }

            return retResult;
        }

        void ChannelScriptManager::calc() {
            if (smCSState == CHANS_VM_STATE_UNK2 && smpThread->IsThreadSuspended() != FALSE) {
                OSReceiveMessage(smpThread->getCalcQueue(), &unk_0x30, 0);

                if (unk_0x30 == (OSMessage)1) {
                    smCSState = CHANS_VM_STATE_UNK3;
                    smpThread->Resume();
                }
            }

            if (smCSState == CHANS_VM_STATE_UNK3) {
                if (unk_0x30 == (OSMessage)2) {
                    smpThread->Resume();
                }

                OSReceiveMessage(smpThread->getCalcQueue(), &unk_0x30, 1);

                if (unk_0x34 == (OSMessage)2) {
                    snd::getBannerPlayer()->start(unk_0x28, unk_0x28[1]);
                    unk_0x34 = (OSMessage)0;
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

        void ChannelScriptManager::calcCSThread() {

        }
    }
}
