#include "scene/setting/iplAPScanThread.h"

namespace ipl {
    namespace scene {

        APScanThread::APScanThread() : utility::ut_thread() {
        }

        APScanThread::~APScanThread() {
        }

        void* APScanThread::Run() {
            s32 result = WDScanOnce(mpScanBuffer, 2048, &mScanParam);
            if (result != 0) {
                OSReport("ERROR(%d): UpdateScanInfo\n", result);
            }
        }

        void APScanThread::setResultData(unsigned short* buffer) {
            mpScanBuffer = (u8*)buffer;
            setParam();
        }

        void APScanThread::setParam() {
            mScanParam.channelBit = 0;
            mScanParam.maxChannelTime = 300;
            memset(mScanParam.bssid, 255, sizeof(mScanParam.bssid));
            mScanParam.type = 0;
            mScanParam.ssidLength = 0;
            memset(mScanParam.ssid, 0, sizeof(mScanParam.ssid));
            memset(mScanParam.ssidMask, 255, sizeof(mScanParam.ssidMask));
            s32 result = WDCheckEnableChannel(&mScanParam.channelBit);
            if (result != 0) {
                OSReport("ERROR(%d): StartupScanParam\n", result);
            }
        }

    }  // namespace scene
}  // namespace ipl
