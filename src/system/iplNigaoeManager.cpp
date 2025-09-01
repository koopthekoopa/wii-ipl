#include "system/iplNigaoeManager.h"

#include "iplSystem.h"
#include "system/iplNwc24Manager.h"

#include "scene/setting/iplNCDSetting.h"

#include "titledb.h"

#include <cstdlib>
#include <cstring>

#include <stddef.h>

namespace ipl {
    namespace nigaoe {
        #define IPL_NIGAOE_ICON_MAX 10

        Manager::Manager(EGG::Heap* heap) {
            mResFile = System::getRFLArc();

            void* work = heap->alloc(RFLGetWorkSize(FALSE), DEFAULT_ALIGN);

            mErrcode = RFLInitRes(work, mResFile->getBuffer(), mResFile->getLength(), FALSE);

            nw4r::ut::List_Init(&mObjects, offsetof(Object, mLink));
            
            {
                // Init arrays
                unsigned char mac[NCD_MAC_ADDRESS_LENGTH + 1];
                mac[6] =  mac[5] = mac[4] = mac[3] = mac[2] = mac[1] = mac[0] = 0;

                unsigned char temp[3];
                temp[2] = temp[1] = temp[0] = 0;

                // Setup work
                unsigned char* ncd_mac = ncd::NCDSetting::getMacAddr();
                
                // Get mac values
                for (int i = 1; i < NCD_MAC_ADDRESS_LENGTH; i++) {
                    memcpy(temp, &ncd_mac[i * ARRSIZE(temp)], sizeof(temp) - 1);
                    mac[i] = strtol((char*)temp, NULL, 16);
                }

                RFLiSetMacAddr(mac);
            }
        }

        Object* Manager::create(EGG::Heap* heap, int width, int height, int faceId, Object::MakeIconCallback callback, void* callbackWork) {
            // Create mii and append to list
            Object* obj = new(heap, CLASS_HEAP) Object(heap, width, height, faceId, callback, callbackWork);
            nw4r::ut::List_Append(&mObjects, obj);
            return obj;
        }

        Object* Manager::create(EGG::Heap* heap, int width, int height, RFLiCharData* faceData, Object::MakeIconCallback callback, void* callbackWork) {
            // Create mii and append to list
            Object* obj = new(heap, CLASS_HEAP) Object(heap, width, height, faceData, callback, callbackWork);
            nw4r::ut::List_Append(&mObjects, obj);
            return obj;
        }

        void Manager::makeIcon() {
            int i = 0;
            
            if (RFLGetAsyncStatus() != RFLErrcode_Busy) {
                Object* obj;
                for (; (obj = reinterpret_cast<Object*>(nw4r::ut::List_GetFirst(&mObjects))) != NULL && i < IPL_NIGAOE_ICON_MAX; i++) {
                    obj->make_icon();
                    nw4r::ut::List_Remove(&mObjects, obj);
                }
            }
        }

        void Manager::detach(Object* obj) {
            for (u16 i = 0; i < mObjects.numObjects; i++) {
                if (obj == static_cast<Object*>(nw4r::ut::List_GetNth(&mObjects, i))) {
                    nw4r::ut::List_Remove(&mObjects, obj);
                    return;
                }
            }
        }

        BOOL Manager::isAvalable(u16 faceId) {
            BOOL result = FALSE;
            if (mErrcode == RFLErrcode_Success) {
                result = RFLIsAvailableOfficialData(faceId);
            }
            return result;
        }

        BOOL Manager::isValid(const RFLiCharData* faceData) const {
            RFLiCharInfo info;
            BOOL result = TRUE;

            RFLiConvertRaw2Info(faceData, &info);

            if (!RFLiIsValidID(&info.createID)) {
                result = FALSE;
            }

            if (!RFLiCheckValidInfo(&info)) {
                result = FALSE;
            }
            
            return result;
        }

        RFLErrcode Manager::addHiddenDB(const NWC24MsgObj* faceDB) {
            OSReport("wait async err %d\n", RFLWaitAsync());
            return RFLiNWC24Msg2HiddenAsync(faceDB);
        }

        void Manager::commitHiddenDB() {
            nwc24::Manager* nwc24Manager = System::getNwc24Manager();
            
            RFLiCharData    charData;
            NWC24MsgObj     msgObj;

            if (nwc24Manager) {
                if (nwc24Manager->open()) {
                    if (RFLiMakeNWC24MsgforExchange(&msgObj, &charData) == RFLErrcode_Success) {
                        nwc24Manager->setMsgAppId(&msgObj, ES_TITLE_CODE(TITLE_NIGAOE_ALL));
                        nwc24Manager->commitMsg(&msgObj);
                    }
                    nwc24Manager->close();
                }
            }
        }
    }
}
