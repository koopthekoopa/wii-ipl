#include "system/iplMessageManager.h"

#include <revolution/sc.h>

#include "system/iplSystem.h"

namespace ipl {
    namespace message {
        /**
         * @note Address: 0x8133E7D4
         * @note Size: 0x50
         */
        Manager::Manager(EGG::Heap* pHeap) {
            mpMessageData = new(pHeap, 4) Message();
            initMessage();
        }

        /**
         * @note Address: 0x8133E824
         * @note Size: 0x50
         */
        void Manager::initMessage() {
            switch(System::getLanguage()) {
                case SC_LANG_ENGLISH: {
                    mpMessageData->setResource(System::getEngArg()->getMessageData());
                    break;
                }
                case SC_LANG_FRENCH: {
                    mpMessageData->setResource(System::getFraArg()->getMessageData());
                    break;
                }
                case SC_LANG_GERMAN: {
                    mpMessageData->setResource(System::getGerArg()->getMessageData());
                    break;
                }
                case SC_LANG_ITALIAN: {
                    mpMessageData->setResource(System::getItaArg()->getMessageData());
                    break;
                }
                case SC_LANG_JAPANESE: {
                    mpMessageData->setResource(System::getJpnArg()->getMessageData());
                    break;
                }
                case SC_LANG_DUTCH: {
                    mpMessageData->setResource(System::getDutArg()->getMessageData());
                    break;
                }
                case SC_LANG_SPANISH: {
                    mpMessageData->setResource(System::getSpaArg()->getMessageData());
                    break;
                }
                case SC_LANG_SIMPLE_CHINESE: {
                    mpMessageData->setResource(System::getChnSimpleArg()->getMessageData());
                    break;
                }
                case SC_LANG_KOREAN: {
                    mpMessageData->setResource(System::getKorArg()->getMessageData());
                    break;
                }
                default: {
                    mpMessageData->setResource(System::getEngArg()->getMessageData());
                    break;
                }
            }
        }
    }
}


