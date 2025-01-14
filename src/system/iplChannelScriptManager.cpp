#include "system/iplChannelScriptManager.h"

#include "sound/iplSound.h"

#include "channelScript/iplCSLibrary.h"

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
                mpChansWork = new(heap, CLASS_HEAP) u8[CHANS_VM_WORK_SIZE];
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

            memset(mpChansWork, 0, CHANS_VM_WORK_SIZE);

            CHANSVmInit(&smCSVm, mpChansWork, CHANS_VM_WORK_SIZE);

            BOOL result = INIT_CS_LIB(&smCSVm, system);
            if (result == false) {
                OSHalt("CHANSVmSystemMenuInit error\n", 101);
            }
            result = INIT_CS_LIB(&smCSVm, layout);
            if (result == false) {
                OSHalt("VmLayoutInit error\n", 105);
            }
            result = INIT_CS_LIB(&smCSVm, pane);
            if (result == false) {
                OSHalt("VmPaneInit error\n", 109);
            }
            result = INIT_CS_LIB(&smCSVm, material);
            if (result == false) {
                OSHalt("VmMaterialInit error\n", 113);
            }
            result = INIT_CS_LIB(&smCSVm, texture);
            if (result == false) {
                OSHalt("VmTextureInit error\n", 117);
            }
            result = INIT_CS_LIB(&smCSVm, savedata);
            if (result == false) {
                OSHalt("VmSaveDataInit error\n", 121);
            }
            result = INIT_CS_LIB(&smCSVm, vec3);
            if (result == false) {
                OSHalt("VmVec3Init error\n", 125);
            }
            result = INIT_CS_LIB(&smCSVm, mtx34);
            if (result == false) {
                OSHalt("VmMTX34Init error\n", 129);
            }
            result = INIT_CS_LIB(&smCSVm, gx);
            if (result == false) {
                OSHalt("VmGXInit error\n", 133);
            }
            result = INIT_CS_LIB(&smCSVm, textwriter);
            if (result == false) {
                OSHalt("VmTextWriterInit error\n", 137);
            }
            result = INIT_CS_LIB(&smCSVm, font);
            if (result == false) {
                OSHalt("VmFontInit error\n", 141);
            }
            result = INIT_CS_LIB(&smCSVm, rect);
            if (result == false) {
                OSHalt("VmRectInit error\n", 145);
            }
            result = INIT_CS_LIB(&smCSVm, color);
            if (result == false) {
                OSHalt("VmColorInit error\n", 149);
            }
            result = INIT_CS_LIB(&smCSVm, color_s10);
            if (result == false) {
                OSHalt("VmColorS10Init error\n", 153);
            }
            result = INIT_CS_LIB(&smCSVm, size);
            if (result == false) {
                OSHalt("VmSizeInit error\n", 157);
            }
            result = INIT_CS_LIB(&smCSVm, anim);
            if (result == false) {
                OSHalt("VmAnimInit error\n", 161);
            }
            result = INIT_CS_LIB(&smCSVm, sound);
            if (result == false) {
                OSHalt("VmSoundInit error\n", 165);
            }
            result = INIT_CS_LIB(&smCSVm, iplimage);
            if (result == false) {
                OSHalt("VmIplImageInit error\n", 169);
            }

            BOOL retResult;
            if (CHANSVmGetFreeExeSize(&smCSVm) == 0) {
                retResult = FALSE;
            }
            else {
                void* unused = CHANSVmGetFreeExeBufp(&smCSVm);
                if (unused == NULL) {
                    retResult = FALSE;
                }
                else {
                    memcpy(unused, file->getBuffer(), file->getLength());

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


