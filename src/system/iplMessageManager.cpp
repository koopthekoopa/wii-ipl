#include "system/iplMessage.h"

#include <revolution/sc.h>

#include "system/iplSystem.h"

namespace ipl {
    namespace message {
        /**
         * @note Address: 0x8133E7D4 (4.3U)
         * @note Size: 0x50
         */
        Manager::Manager(EGG::Heap* pHeap) {
            mpMessage = new(pHeap, CLASS_HEAP) Message();
            initMessage();
        }

        /**
         * @note Address: 0x8133E824 (4.3U)
         * @note Size: 0x50
         */
        void Manager::initMessage() {
            switch(System::getLanguage()) {
                case SC_LANG_ENGLISH: {
                    mpMessage->setResource(System::getEngMsg()->getBuffer());
                    break;
                }
                case SC_LANG_FRENCH: {
                    mpMessage->setResource(System::getFraMsg()->getBuffer());
                    break;
                }
                case SC_LANG_GERMAN: {
                    mpMessage->setResource(System::getGerMsg()->getBuffer());
                    break;
                }
                case SC_LANG_ITALIAN: {
                    mpMessage->setResource(System::getItaMsg()->getBuffer());
                    break;
                }
                case SC_LANG_JAPANESE: {
                    mpMessage->setResource(System::getJpnMsg()->getBuffer());
                    break;
                }
                case SC_LANG_DUTCH: {
                    mpMessage->setResource(System::getDutMsg()->getBuffer());
                    break;
                }
                case SC_LANG_SPANISH: {
                    mpMessage->setResource(System::getSpaMsg()->getBuffer());
                    break;
                }
                case SC_LANG_SIMP_CHINESE: {
                    mpMessage->setResource(System::getChnMsg()->getBuffer());
                    break;
                }
                
                // Traditional chinese is unused?
                
                case SC_LANG_KOREAN: {
                    mpMessage->setResource(System::getKorMsg()->getBuffer());
                    break;
                }
                default: {
                    mpMessage->setResource(System::getEngMsg()->getBuffer());
                    break;
                }
            }
        }
    }
}


