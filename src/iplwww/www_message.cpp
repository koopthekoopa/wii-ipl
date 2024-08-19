#include "iplwww/www_message.h"

namespace ext_ead {
    namespace www {
        /**
         * @note Address: 0x8136DEAC (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::SendMessage(OSMessage msg, s32 flags) {
            return OSSendMessage(&mpMsgQueue, msg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x8136DED8 (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::JamMessage(OSMessage msg, s32 flags) {
            return OSJamMessage(&mpMsgQueue, msg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x8136DF04 (4.3U)
         * @note Size: 0x2C
         */
        BOOL ut_message_base::ReceiveMessage(OSMessage* pMsg, s32 flags) {
            return OSReceiveMessage(&mpMsgQueue, pMsg, flags) != FALSE;
        }
        
        /**
         * @note Address: 0x8136DF30 (4.3U)
         * @note Size: 0x8
         */
        void ut_message_base::InitMessageQueue(OSMessage* pMsg, s32 msgCount) {
            OSInitMessageQueue(&mpMsgQueue, pMsg, msgCount);
        }
    }
}


