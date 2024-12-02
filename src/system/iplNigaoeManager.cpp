#include "system/iplNigaoeManager.h"

#include "system/iplSystem.h"
#include "system/iplNwc24Manager.h"

#include "scene/setting/iplNCDSetting.h"

#include "titledb.h"

#include <cstdlib>
#include <cstring>

namespace ipl {
    namespace nigaoe {
        #define IPL_NIGAOE_ICON_MAX 10

        Manager::Manager(EGG::Heap* pHeap) {
            mResFile = System::getRFLArc();

            void* work = pHeap->alloc(RFLGetWorkSize(FALSE), BUFFER_HEAP);

            mErrcode = RFLInitRes(work, mResFile->getBuffer(), mResFile->getLength(), FALSE);

            nw4r::ut::List_Init(&mObjects, 0x48);
            
            {
                // init strings
                unsigned char mac[NCD_MACADDRESS_LENGTH + 1];
                mac[6] =  mac[5] = mac[4] = mac[3] = mac[2] = mac[1] = mac[0] = 0;

                unsigned char temp[3];
                temp[2] = temp[1] = temp[0] = 0;

                // setup work
                unsigned char* ncd_mac = ncd::NCDSetting::getMacAddr();
                
                // get mac values
                for (int i = 1; i < NCD_MACADDRESS_LENGTH; i++) {
                    memcpy(temp, &ncd_mac[i * sizeof(temp)], sizeof(temp) - 1);
                    mac[i] = strtol((char*)temp, NULL, 16);
                }

                RFLiSetMacAddr(mac);
            }
        }

        Object* Manager::create(EGG::Heap* pHeap, int width, int height, int faceId, Object::MakeIconCallback callback, void* callbackWork) {
            // Create mii and append to list
            Object* obj = new(pHeap, CLASS_HEAP) Object(pHeap, width, height, faceId, callback, callbackWork);
            nw4r::ut::List_Append(&mObjects, obj);
            return obj;
        }

        Object* Manager::create(EGG::Heap* pHeap, int width, int height, RFLiCharData* faceData, Object::MakeIconCallback callback, void* callbackWork) {
            // Create mii and append to list
            Object* obj = new(pHeap, CLASS_HEAP) Object(pHeap, width, height, faceData, callback, callbackWork);
            nw4r::ut::List_Append(&mObjects, obj);
            return obj;
        }

        void Manager::makeIcon() {
            int i = 0;
            
            if (RFLGetAsyncStatus() != RFLErrcode_Busy) {
                Object* obj;
                for (; (obj = (Object*)nw4r::ut::List_GetFirst(&mObjects)) != NULL && i < IPL_NIGAOE_ICON_MAX; i++) {
                    obj->make_icon();
                    nw4r::ut::List_Remove(&mObjects, obj);
                }
            }
        }

        void Manager::detach(Object* obj) {
            for (u16 i = 0; i < mObjects.numObjects; i++) {
                if (obj == (Object*)nw4r::ut::List_GetNth(&mObjects, i)) {
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
            nwc24::Manager*     nwc24Mgr = System::isSafeMode() ? NULL : System::getNwc24Manager();
            
            RFLiNWC24MsgWork    work;
            NWC24MsgObj         msgObj;

            if (nwc24Mgr) {
                if (nwc24Mgr->open()) {
                    if (RFLiMakeNWC24MsgforExchange(&msgObj, &work) == RFLErrcode_Success) {
                        nwc24Mgr->setMsgAppId(&msgObj, TITLE_NIGAOE);
                        nwc24Mgr->commitMsg(&msgObj);
                    }
                    nwc24Mgr->close();
                }
            }
        }
    }
}


