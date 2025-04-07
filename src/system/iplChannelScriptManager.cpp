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

            OSAssertMsg(INIT_CS_LIB(&smCSVm, system),       "CHANSVmSystemMenuInit error\n",    101);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, layout),       "VmLayoutInit error\n",             105);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, pane),         "VmPaneInit error\n",               109);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, material),     "VmMaterialInit error\n",           113);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, texture),      "VmTextureInit error\n",            117);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, savedata),     "VmSaveDataInit error\n",           121);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, vec3),         "VmVec3Init error\n",               125);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, mtx34),        "VmMTX34Init error\n",              129);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, gx),           "VmGXInit error\n",                 133);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, textwriter),   "VmTextWriterInit error\n",         137);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, font),         "VmFontInit error\n",               141);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, rect),         "VmRectInit error\n",               145);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, color),        "VmColorInit error\n",              149);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, color_s10),    "VmColorS10Init error\n",           153);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, size),         "VmSizeInit error\n",               157);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, anim),         "VmAnimInit error\n",               161);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, sound),        "VmSoundInit error\n",              165);
            OSAssertMsg(INIT_CS_LIB(&smCSVm, iplimage),     "VmIplImageInit error\n",           169);

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
