#include "bannerSound/AxAdpcmPlayer.h"

#include "bannerSound/AudioWavePlayer.h"

#include <revolution/sc.h>

VoiceInfo Voices[AX_VOICE_MAX];
u8 sZeroMem[0x100];

void* zeroBuffer;
bool AxAdpcmSimplePlayer::sSysInit;
bool AxAdpcmSimplePlayer::sSysPauseFlag;
bool AxAdpcmSimplePlayer::sPlayingFlag;
AXOutCallback AxAdpcmSimplePlayer::sCallback;

void VoiceCallback(void* _voice) {
    AXVPB* voice = (AXVPB*)_voice;
    Voices[voice->index].setAXVPB(0);
    Voices[voice->index].setState(0);
}

inline u8* getCurrAddr(VoiceInfo* voice) {
    AXPB* iVar4 = &voice->getAXVPB()->pb;
    nw4r::ut::AutoInterruptLock lock;
    if (iVar4 == NULL) {
        return 0;
    }

    u16 addrHi = iVar4->addr.currentAddressHi;
    u16 addrLo = iVar4->addr.currentAddressLo;
    return (u8*)((addrHi << 16) + addrLo);
}

inline bool currAddrInZeroBuf(VoiceInfo* currVoice) {
    nw4r::ut::AutoInterruptLock lock;
    u8* apbCurrAddr = getCurrAddr(currVoice);
    u8* zeroBufAddr = (u8*)SimpleWavePlayer::convertDSPAddr(zeroBuffer, 0, 0);
    if (zeroBufAddr <= apbCurrAddr && apbCurrAddr < zeroBufAddr + 0x200) {
        return true;
    } else {
        return false;
    }
}

void AudioFrameCallback() {
    u32 i;
    bool isDone;

    isDone = false;
    if (AxAdpcmSimplePlayer::sCallback != NULL) {
        (*AxAdpcmSimplePlayer::sCallback)();
    }

    for (i = 0; i < AX_VOICE_MAX; i++) {
        VoiceInfo* currVoice = &Voices[i];
        if (currVoice->getAXVPB() == NULL && currVoice->getUnk_0x0C() != 2) {
            continue;
        }

        if (currAddrInZeroBuf(currVoice)) {
            isDone = true;
        } else {
            switch (Voices[i].getState()) {
                case 1: {
                    AXSetVoiceState(currVoice->getAXVPB(), (u16)AX_VOICE_RUN);
                    currVoice->setState(2);
                    break;
                }
                case 2: {
                    currVoice->setState(3);
                    break;
                }
                case 3: {
                    if (currVoice->getAXVPB()->pb.state == 0) {
                        isDone = true;
                    } else if (AxAdpcmSimplePlayer::sSysPauseFlag) {
                        currVoice->setState(4);
                    }
                    break;
                }
                case 7: {
                    isDone = true;
                    break;
                }
                case 4: {
                    AXSetVoiceState(currVoice->getAXVPB(), (u16)AX_VOICE_STOP);
                    currVoice->setState(5);
                    break;
                }
                case 5: {
                    if (!AxAdpcmSimplePlayer::sSysPauseFlag) {
                        AXSetVoiceState(currVoice->getAXVPB(), (u16)AX_VOICE_RUN);
                        currVoice->setState(6);
                    }
                    break;
                }
                case 6: {
                    currVoice->setState(3);
                    break;
                }
            }
        }
        if (isDone) {
            AXSetVoiceState(currVoice->getAXVPB(), (u16)AX_VOICE_STOP);
            AXFreeVoice(currVoice->getAXVPB());
            currVoice->setAXVPB(NULL);
            isDone = false;
            currVoice->setState(0);
            currVoice->setUnk_0x08(0);
        }
        currVoice->setUnk_0x0C(0);
    }
    return;
}

void VoiceInfo::initAXPBMIX(AXPBMIX* mix) {
    for (int i = 0; i < sizeof(AXPBMIX) / sizeof(u16); i++) {
        ((u16*)mix)[i] = 0;
    }
    mix->vL = 32768;
    mix->vR = 32768;
}

#define ADD_OFFSET(OUTTYPE, PTR, OFFSET) (OUTTYPE*)((int)PTR + OFFSET)

bool AxAdpcmSimplePlayer::checkFile(void* data, u32 length) {
    Header* head = (Header*)data;
    if (head->byteOrder != 0xFEFF) {
        return false;
    }

    u32 loopEnd;
    u32 storedLen;
    u8 channelCount;

    INFOBlock* infoBlock = ADD_OFFSET(INFOBlock, data, head->infoHead.offset);
    DATABlock* dataBlock = ADD_OFFSET(DATABlock, data, head->dataHead.offset);
    if (infoBlock->head.sig != 'INFO') {
        return false;
    }
    if (dataBlock->head.sig != 'DATA') {
        return false;
    }

    if (infoBlock->sampleRate > 48000 || infoBlock->sampleRate < 4000) {
        return false;
    }

    if (infoBlock->channelCount == 0 || infoBlock->channelCount > 2) {
        return false;
    }

    channelCount = infoBlock->channelCount;

    loopEnd = infoBlock->loopEnd;
    if (infoBlock->loopStart >= loopEnd)
        return false;

    if ((dataBlock->head.size * 14) / 8 <= infoBlock->loopStart) {
        return false;
    }
    if ((dataBlock->head.size * 14) / 8 < loopEnd) {
        return false;
    }

    // Check that provided size and stored file size are equal (up to alignment)
    storedLen = head->fileSize;
    if (OSRoundUp32B(length) != OSRoundUp32B(storedLen)) {
        return false;
    }

    ChannelInfo* bufA[2];
    ChannelInfo* bufB[2];

    void* infoBlockDataBase = &infoBlock->codec;
    ChannelInfo** pBufA = bufA;
    ChannelInfo** pBufB = bufB;
    u32* channelStartOffsets = ADD_OFFSET(u32, infoBlockDataBase, infoBlock->offsToChannelStart);
    for (int i = 0; i < channelCount; i++) {
        if (storedLen <= channelStartOffsets[i]) {
            return false;
        }

        pBufA[i] = ADD_OFFSET(ChannelInfo, infoBlockDataBase, channelStartOffsets[i]);
        pBufB[i] = ADD_OFFSET(ChannelInfo, infoBlockDataBase, channelStartOffsets[i]);
        if (storedLen <= pBufA[i]->dataOff) {
            return false;
        }
        if (storedLen <= pBufA[i]->coeffOff) {
            return false;
        }
    }
    return true;
}

void AxAdpcmSimplePlayer::init() {
    if (!sSysInit) {
        sCallback = AXRegisterCallback(AudioFrameCallback);
        sSysInit = true;
        for (int i = 0; i < 0x100; i++) {
            sZeroMem[i] = 0;
        }
        zeroBuffer = &sZeroMem;
    }
}

int AxAdpcmSimplePlayer::start(void* data, u32 length, AxAdpcmHandle* handle) {
    Header* head = mpBNSBuffer = (Header*)data;

    sSysPauseFlag = false;

    if (mpBNSBuffer == NULL) {
        return -1;
    }

    AXPBADPCM axAdpcm;
    AXPBSRC axSrc;
    AXPBADDR axAddr;
    AXVPB* axVoiceBuf[2];
    AXPBADPCMLOOP axAdpcmLoop;
    AdpcmCoeffs* coeffsBufB[2];
    AdpcmCoeffs* coeffsBufA[2];
    void* chanDataBuf[2];
    ChannelInfo* chanInfoBufB[2];
    ChannelInfo* chanInfoBufA[2];

    AdpcmCoeffs** pCoeffsBufB = NULL;
    int i;
    u32* channelStartOffsets;
    INFOBlock* infoBlock;
    DATABlock* dataBlock;
    void* dataBlockDataBase;
    void* infoBlockDataBase;

    ChannelInfo** pChanInfoBufA;
    ChannelInfo** pChanInfoBufB;
    AdpcmCoeffs** pCoeffsBufA;
    AXVPB** pAxvpbBuf;
    void** pChanDataBuf;

    int chanCount;
    {
        if (head->byteOrder != 0xFEFF) {
            chanCount = 0;
            goto clean_up;
        }

        infoBlock = ADD_OFFSET(INFOBlock, data, head->infoHead.offset);
        dataBlock = ADD_OFFSET(DATABlock, data, head->dataHead.offset);
        if (infoBlock->head.sig != 'INFO') {
            chanCount = 0;
            goto clean_up;
        }
        if (dataBlock->head.sig != 'DATA') {
            chanCount = 0;
            goto clean_up;
        }

        if (infoBlock->channelCount == 0 || infoBlock->channelCount > 2) {
            chanCount = 0;
            goto clean_up;
        }

        infoBlockDataBase = &infoBlock->codec;
        channelStartOffsets = ADD_OFFSET(u32, infoBlockDataBase, infoBlock->offsToChannelStart);
        dataBlockDataBase = &dataBlock->head + 1;
        pChanInfoBufA = chanInfoBufA;
        pChanInfoBufB = chanInfoBufB;
        pChanDataBuf = chanDataBuf;
        pCoeffsBufA = coeffsBufA;
        pCoeffsBufB = coeffsBufB;
        pAxvpbBuf = axVoiceBuf;
        for (i = 0; chanCount = infoBlock->channelCount, i < chanCount; i++) {
            int chanStartOffs = channelStartOffsets[i];
            ChannelInfo* chanInfo = ADD_OFFSET(ChannelInfo, infoBlockDataBase, chanStartOffs);

            pChanInfoBufA[i] = chanInfo;
            pChanInfoBufB[i] = chanInfo;
            pChanDataBuf[i] = ADD_OFFSET(void, dataBlockDataBase, chanInfo->dataOff);
            pCoeffsBufA[i] = ADD_OFFSET(AdpcmCoeffs, infoBlockDataBase, chanInfo->coeffOff);
            pCoeffsBufB[i] = ADD_OFFSET(AdpcmCoeffs, infoBlockDataBase, chanInfo->coeffOff);

            pAxvpbBuf[i] = AXAcquireVoice(0x1f, VoiceCallback, 0);
            if (pAxvpbBuf[i] == NULL) {
                chanCount = 0;
                break;
            }

            axAddr.loopFlag = infoBlock->hasLoop;
            axAddr.format = infoBlock->codec;

            void* loopAddr;
            if (axAddr.loopFlag) {
                axAdpcmLoop.loop_pred_scale = coeffsBufB[i]->cfg.loopPredScale;
                axAdpcmLoop.loop_yn1 = coeffsBufB[i]->cfg.loopYn1;
                // @bug Doesn't copy the loop value correctly :(
                axAdpcmLoop.loop_yn2 = coeffsBufB[i]->cfg.loopYn1;
                loopAddr = SimpleWavePlayer::convertDSPAddr(chanDataBuf[i], infoBlock->loopStart, 0);
            } else {
                loopAddr = SimpleWavePlayer::convertDSPAddr(zeroBuffer, 0, 0);
            }

            void* chanData = chanDataBuf[i];
            axAddr.loopAddressHi = (u32)loopAddr >> 0x10;
            axAddr.loopAddressLo = (u32)loopAddr;

            void* endAddr = SimpleWavePlayer::convertDSPAddr(chanData, infoBlock->loopEnd, 0);
            axAddr.endAddressHi = (u32)endAddr >> 0x10;
            axAddr.endAddressLo = (u32)endAddr & 0xFFFF;

            void* currAddr = SimpleWavePlayer::convertDSPAddr(chanData, 0, 0);
            axAddr.currentAddressHi = (u32)currAddr >> 0x10;
            axAddr.currentAddressLo = (u32)currAddr & 0xFFFF;

            axAdpcm.a[0][0] = pCoeffsBufB[i]->a[0][0];
            axAdpcm.a[0][1] = pCoeffsBufB[i]->a[0][1];
            axAdpcm.a[1][0] = pCoeffsBufB[i]->a[1][0];
            axAdpcm.a[1][1] = pCoeffsBufB[i]->a[1][1];
            axAdpcm.a[2][0] = pCoeffsBufB[i]->a[2][0];
            axAdpcm.a[2][1] = pCoeffsBufB[i]->a[2][1];
            axAdpcm.a[3][0] = pCoeffsBufB[i]->a[3][0];
            axAdpcm.a[3][1] = pCoeffsBufB[i]->a[3][1];
            axAdpcm.a[4][0] = pCoeffsBufB[i]->a[4][0];
            axAdpcm.a[4][1] = pCoeffsBufB[i]->a[4][1];
            axAdpcm.a[5][0] = pCoeffsBufB[i]->a[5][0];
            axAdpcm.a[5][1] = pCoeffsBufB[i]->a[5][1];
            axAdpcm.a[6][0] = pCoeffsBufB[i]->a[6][0];
            axAdpcm.a[6][1] = pCoeffsBufB[i]->a[6][1];
            axAdpcm.a[7][0] = pCoeffsBufB[i]->a[7][0];
            axAdpcm.a[7][1] = pCoeffsBufB[i]->a[7][1];
            axAdpcm.gain = pCoeffsBufB[i]->cfg.gain;
            axAdpcm.pred_scale = pCoeffsBufB[i]->cfg.predScale;
            axAdpcm.yn1 = pCoeffsBufB[i]->cfg.yn1;
            axAdpcm.yn2 = pCoeffsBufB[i]->cfg.yn2;

            u32 ratio = infoBlock->sampleRate / 32000.0f * 65536.0f;
            axSrc.ratioHi = ratio >> 16;
            axSrc.ratioLo = ratio & 0xFFFF;
            axSrc.currentAddressFrac = 0;
            axSrc.last_samples[0] = 0;
            axSrc.last_samples[1] = 0;
            axSrc.last_samples[2] = 0;
            axSrc.last_samples[3] = 0;

            AXVPB* vpbA = axVoiceBuf[i];
            AXSetVoiceType(vpbA, 0);
            AXSetVoiceAddr(vpbA, &axAddr);
            AXSetVoiceAdpcm(vpbA, &axAdpcm);
            AXSetVoiceAdpcmLoop(vpbA, &axAdpcmLoop);

            VoiceInfo::initAXPBMIX(Voices[vpbA->index].getMix());
            if (infoBlock->channelCount == 2) {
                if (SCGetSoundMode() == SC_SOUND_MODE_MONO) {
                    Voices[vpbA->index].getMix()->vL = 23170;
                    Voices[vpbA->index].getMix()->vR = 23170;
                } else if (i == 0) {
                    Voices[vpbA->index].getMix()->vR = 0;
                } else {
                    Voices[vpbA->index].getMix()->vL = 0;
                }
            }
            AXVPB* vpbB = axVoiceBuf[i];
            AXSetVoiceMix(vpbB, Voices[vpbA->index].getMix());
            static AXPBVE voiceVe = {32768, 0};
            AXSetVoiceVe(vpbB, &voiceVe);
            AXSetVoiceSrcType(vpbB, AX_SRC_TYPE_LINEAR);
            AXSetVoiceSrc(vpbB, &axSrc);
        }
    }

clean_up:
    if (chanCount != 0) {
        for (u32 i = 0; i < chanCount; i++) {
            if (axVoiceBuf[i] == NULL) {
                return -1;
            }
            Voices[axVoiceBuf[i]->index].setAXVPB(axVoiceBuf[i]);
            Voices[axVoiceBuf[i]->index].setState(1);
            Voices[axVoiceBuf[i]->index].setUnk_0x0C(1);
        }
        if (handle != NULL) {
            for (u32 i = 0; i < chanCount; i++) {
                handle->setVoice(i, &Voices[axVoiceBuf[i]->index]);
            }
        }
        sPlayingFlag = true;
        handle->setVolume(mVolume);
    }
    return chanCount;
}

bool AxAdpcmHandle::setVolume(f32 newVolume) {
    bool a = false;
    for (int i = 0; i < 2; i++) {
        if (mpVoices[i] == NULL || mpVoices[i]->getAXVPB() == NULL) {
            continue;
        }

        AXPBMIX mix;
        VoiceInfo::initAXPBMIX(&mix);

        mix.vL = newVolume * mpVoices[i]->getMix()->vL;
        mix.vR = newVolume * mpVoices[i]->getMix()->vR;

        AXSetVoiceMix(mpVoices[i]->getAXVPB(), &mix);
        mpVoices[i]->setUnk_0x0C(1);
        a = true;
    }
    return a;
}

void AxAdpcmSimplePlayer::stop(AxAdpcmHandle* handle) {
    nw4r::ut::AutoInterruptLock lock;
    if (handle != NULL) {
        for (int i = 0; i < 2; i++) {
            if (handle->getVoice(i) == NULL) {
                continue;
            }

            if (handle->getVoice(i)->getAXVPB() == NULL) {
                continue;
            }

            handle->getVoice(i)->setState(7);
            handle->getVoice(i)->setUnk_0x0C(1);
            if (handle->getVoice(i)->getUnk_0x08() != 0) {
                handle->getVoice(i)->setUnk_0x08(0);
            }
        }
    }
}
int AxAdpcmSimplePlayer::pause(bool flag) {
    nw4r::ut::AutoInterruptLock lock;
    sSysPauseFlag = flag;
    return TRUE;
}

void AxAdpcmSimplePlayer::setVolume(AxAdpcmHandle* handle, f32 volume) {
    if (handle == NULL) {
        return;
    }

    handle->setVolume(volume);
    mVolume = volume;
}

void AxAdpcmSimplePlayer::calc() {
    for (int i = 0; i < AX_VOICE_MAX; i++) {
        if (Voices[i].getUnk_0x0C() == 1) {
            Voices[i].setUnk_0x0C(2);
        }
    }
}
