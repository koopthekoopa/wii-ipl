#include "system/iplMessage.h"

namespace ipl {
    namespace message {
        /**
         * @note Address: 0x8133E6FC
         * @note Size: 0x14
         */
        Message::Message()
        : mpInfoHeader(NULL), mpInfoData(NULL), mspMessageData(NULL) {}
        
        /**
         * @note Address: 0x8133E710
         * @note Size: 0x40
         */
        Message::~Message() {}

        /**
         * @note Address: 0x8133E750
         * @note Size: 0x6C
         */
        void Message::setResource(u8* msgData) {
            MESGHeader* header = (MESGHeader*)(msgData);

            msgData += sizeof(MESGHeader); // Start after the header

            for (int i = 0; i < header->sectionCount; i++) { // for every section available
                #define CURRENT_SECTION ((MESGDataHeader*)(msgData))

                switch (CURRENT_SECTION->signature) {
                    case 'INF1': { // If it is the information section
                        mpInfoHeader = (MESGInfoHeader*)(msgData);
                        mpInfoData = (MESGInfoBlock*)(msgData + sizeof(MESGInfoHeader));
                        break;
                    }
                    case 'DAT1': { // If it is the data section
                        mspMessageData = (u8*)(msgData + sizeof(MESGDataHeader));
                        break;
                    }
                }

                // Next section!
                msgData += CURRENT_SECTION->size;

                #undef CURRENT_SECTION
            }
        }

        /**
         * @note Address: 0x8133E7BC
         * @note Size: 0x18
         */
        wchar_t* Message::getMessage(u32 id) const {
            u32 addr = ((u32*)(&mpInfoData->offset))[(u16)id];
            return (wchar_t*)(mspMessageData + addr);
        }
    }
}


