#include <nw4r/snd/RemoteSpeaker.h>

#include <nw4r/ut.h>

#include <revolution/os.h>

#include <cstring>

namespace nw4r {
    namespace snd {
        RemoteSpeaker::RemoteSpeaker() :
        mInitFlag(false),
        mRemoteInitFlag(false),
        mPlayFlag(false),
        mEnableFlag(false),
        mSetupBusyFlag(false),
        mSetupCallback(NULL),
        mFirstEncodeFlag(false),
        mForceResumeFlag(false) {
            OSCreateAlarm(&mContinueAlarm);
            OSSetAlarmUserData(&mContinueAlarm, this);

            OSCreateAlarm(&mInvervalAlarm);
            OSSetAlarmUserData(&mInvervalAlarm, this);
        }

        void RemoteSpeaker::InitParam() {
            ClearParam();

            mPlayFlag = false;
            mEnableFlag = true;

            memset(&mEncodeInfo, 0, sizeof(WENCInfo));

            mForceResumeFlag = false;
            mContinueFlag = false;
            mIntervalFlag = false;
            mFirstEncodeFlag = false;
        }

        void RemoteSpeaker::ClearParam() {
            mPlayFlag = false;
            mEnableFlag = false;

            OSCancelAlarm(&mContinueAlarm);
            mContinueFlag = false;

            OSCancelAlarm(&mInvervalAlarm);
            mIntervalFlag = false;
        }

        void RemoteSpeaker::Update(const s16* pRmtSamples) {
            if (!IsAvailable()) {
                return;
            }

            bool playFlag = true;
            bool silentFlag = mEnableFlag ? IsAllSampleZero(pRmtSamples) : true;

            if (silentFlag || mForceResumeFlag) {
                playFlag = false;
            }

            u32 wencMode;
            bool firstFlag = false;
            bool lastFlag = false;

            if (mPlayFlag) {
                if (playFlag) {
                    wencMode = 1;
                }
                else {
                    wencMode = 1;
                    lastFlag = true;
                }
            }
            else {
                if (playFlag) {
                    if (mFirstEncodeFlag) {
                        wencMode = 0;
                    }
                    else {
                        wencMode = 1;
                    }

                    mFirstEncodeFlag = false;
                    firstFlag = true;
                }
                else {
                    wencMode = -1;
                }
            }

            if (wencMode != -1) {
                u8 adpcmBuffer[SAMPLES_PER_ENCODED_PACKET];
                WENCGetEncodeData(&mEncodeInfo, wencMode, pRmtSamples,
                                wencMode == 2 ? SAMPLES_PER_AUDIO_PACKET-8 : SAMPLES_PER_AUDIO_PACKET, adpcmBuffer);

                s32 result = WPADSendStreamData(mChannelIndex, adpcmBuffer, SAMPLES_PER_ENCODED_PACKET);
            }

            if (firstFlag) {
                ut::AutoInterruptLock lock;

                if (!mContinueFlag) {
                    OSSetAlarm(&mContinueAlarm, OSSecondsToTicks(CONTINUOUS_PLAY_INTERVAL_MINUTES * 60LL), ContinueAlarmHandler);

                    mContinueBeginTime = OSGetTime();
                    mContinueFlag = true;
                }

                OSCancelAlarm(&mInvervalAlarm);
                mIntervalFlag = false;
            }

            if (lastFlag) {
                ut::AutoInterruptLock lock;

                mIntervalFlag = true;
                OSCancelAlarm(&mInvervalAlarm);
                OSSetAlarm(&mInvervalAlarm, OSSecondsToTicks(1LL), IntervalAlarmHandler);
            }

            mPlayFlag = playFlag;
        }

        bool RemoteSpeaker::IsAllSampleZero(const s16* pSample) {
            const u32* buffer = reinterpret_cast<const u32*>(pSample);
            bool zeroFlag = true;

            for (int i = 0; i < SAMPLES_PER_ENCODED_PACKET; i++) {
                if (buffer[i] != 0) {
                    zeroFlag = false;
                    break;
                }
            }

            return zeroFlag;
        }

        void RemoteSpeaker::ContinueAlarmHandler(OSAlarm* alarm, OSContext* context) {
            ut::AutoInterruptLock lock;
            RemoteSpeaker* speaker = static_cast<RemoteSpeaker*>(OSGetAlarmUserData(alarm));

            speaker->mForceResumeFlag = true;
            speaker->mContinueFlag = false;
        }

        void RemoteSpeaker::IntervalAlarmHandler(OSAlarm* alarm, OSContext* context) {
            ut::AutoInterruptLock lock;
            RemoteSpeaker* speaker = static_cast<RemoteSpeaker*>(OSGetAlarmUserData(alarm));

            if (speaker->mIntervalFlag) {
                OSCancelAlarm(&speaker->mContinueAlarm);
                speaker->mForceResumeFlag = false;
                speaker->mContinueFlag = false;
            }

            speaker->mIntervalFlag = false;
        }
    }
}
