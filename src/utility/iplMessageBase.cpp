#include "utility/iplMessageBase.h"

namespace ipl {
    namespace utility {
        /**
         * @note Address: 0x81364D78 (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::SendMessage(OSMessage msg, s32 flags) {
            return OSSendMessage(&mpMsgQueue, msg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x81364DA4 (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::JamMessage(OSMessage msg, s32 flags) {
            return OSJamMessage(&mpMsgQueue, msg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x81364DD0 (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::ReceiveMessage(OSMessage* pMsg, s32 flags) {
            return OSReceiveMessage(&mpMsgQueue, pMsg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x81364DFC (4.3U)
         * @note Size: 0x8
         */
        void ut_message_base::InitMessageQueue(OSMessage* pMsg, s32 msgCount) {
            OSInitMessageQueue(&mpMsgQueue, pMsg, msgCount);
        }
    }
}


