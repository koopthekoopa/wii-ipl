#include "bannerSound/AxAdpcmPlayer.h"

#include "bannerSound/AudioWavePlayer.h"

#include <revolution/sc.h>

VoiceInfo Voices[0x60];
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

inline u32 getCurrAddr(VoiceInfo* voice) {
    AXPB* iVar4 = &voice->getAXVPB()->pb;
    nw4r::ut::AutoInterruptLock auStack_44;
    if (iVar4 == NULL) {
        return 0;
    }

    u16 addrHi = iVar4->addr.currentAddressHi;
    u16 addrLo = iVar4->addr.currentAddressLo;
    return (addrHi << 16) + addrLo;
}

inline bool getSomething(VoiceInfo* currVoice) {
    nw4r::ut::AutoInterruptLock auStack_48;
    u32 axpbitdCurr = getCurrAddr(currVoice);
    u32 uVar3 = AudioWavePlayer_8140D938((u32)zeroBuffer, 0, 0);
    if ((uVar3 <= axpbitdCurr) && (axpbitdCurr < uVar3 + 0x200)) {
        return true;
    } else {
        return false;
    }
}

void AudioFrameCallback() {
    u32 voiceI;
    bool isDone;

    isDone = false;
    if (AxAdpcmSimplePlayer::sCallback != NULL) {
        (*AxAdpcmSimplePlayer::sCallback)();
    }

    for (voiceI = 0; voiceI < 0x60; voiceI++) {
        VoiceInfo* currVoice = &Voices[voiceI];
        if (currVoice->getAXVPB() == NULL && currVoice->getUnk_x0c() != 2)
            continue;

        if (getSomething(currVoice)) {
            isDone = true;
        } else {
            switch (Voices[voiceI].getState()) {
                case 1:
                    AXSetVoiceState(currVoice->getAXVPB(), 1);
                    currVoice->setState(2);
                    break;
                case 2:
                    currVoice->setState(3);
                    break;
                case 3:
                    if (currVoice->getAXVPB()->pb.state == 0) {
                        isDone = true;
                    } else if (AxAdpcmSimplePlayer::sSysPauseFlag != '\0') {
                        currVoice->setState(4);
                    }
                    break;
                case 7:
                    isDone = true;
                    break;
                case 4:
                    AXSetVoiceState(currVoice->getAXVPB(), 0);
                    currVoice->setState(5);
                    break;
                case 5:
                    if (!AxAdpcmSimplePlayer::sSysPauseFlag) {
                        AXSetVoiceState(currVoice->getAXVPB(), 1);
                        currVoice->setState(6);
                    }
                    break;
                case 6:
                    currVoice->setState(3);
                    break;
            }
        }
        if (isDone) {
            AXSetVoiceState(currVoice->getAXVPB(), 0);
            AXFreeVoice(currVoice->getAXVPB());
            currVoice->setAXVPB(NULL);
            isDone = false;
            currVoice->setState(0);
            currVoice->setUnk_x08(0);
        }
        currVoice->setUnk_x0c(0);
    }
    return;
}

void VoiceInfo::initAXPBMIX(AXPBMIX* mix) {
    for (int i = 0; i < sizeof(AXPBMIX) / sizeof(u16); i++) {
        ((u16*)mix)[i] = 0;
    }
    mix->vL = 0x8000;
    mix->vR = 0x8000;
}

#define ADD_OFFSET(OUTTYPE, PTR, OFFSET) (OUTTYPE*)((int)PTR + OFFSET)

bool AxAdpcmSimplePlayer::checkFile(void* data, u32 length) {
    Header* head = (Header*)data;
    if (head->byteOrder != 0xfeff)
        return false;

    u32 loopEnd;
    u32 storedLen;
    u8 channelCount;

    INFOBlock* infoBlock = ADD_OFFSET(INFOBlock, data, head->infoHead.offset);
    DATABlock* dataBlock = ADD_OFFSET(DATABlock, data, head->dataHead.offset);
    if (infoBlock->head.sig != 'INFO')
        return false;
    if (dataBlock->head.sig != 'DATA')
        return false;

    if (infoBlock->sampleRate > 48000 || infoBlock->sampleRate < 4000)
        return false;

    if (infoBlock->channelCount == 0 || infoBlock->channelCount > 2)
        return false;

    channelCount = infoBlock->channelCount;

    loopEnd = infoBlock->loopEnd;
    if (infoBlock->loopStart >= loopEnd)
        return false;

    if ((dataBlock->head.size * 14) / 8 <= infoBlock->loopStart)
        return false;
    if ((dataBlock->head.size * 14) / 8 < loopEnd)
        return false;

    // Check that provided size and stored file size are equal (up to alignment)
    storedLen = head->fileSize;
    if (ROUNDUP(length, 0x20) != ROUNDUP(storedLen, 0x20))
        return false;

    // int iVar4 = ;
    ChannelInfo* bufA[2];
    ChannelInfo* bufB[2];

    void* infoBlockDataBase = &infoBlock->codec;
    ChannelInfo** pBufA = bufA;
    ChannelInfo** pBufB = bufB;
    u32* channelStartOffsets = ADD_OFFSET(u32, infoBlockDataBase, infoBlock->offsToChannelStart);
    for (int i = 0; i < channelCount; i++) {
        if (storedLen <= channelStartOffsets[i])
            return false;

        pBufA[i] = ADD_OFFSET(ChannelInfo, infoBlockDataBase, channelStartOffsets[i]);
        pBufB[i] = ADD_OFFSET(ChannelInfo, infoBlockDataBase, channelStartOffsets[i]);
        if (storedLen <= pBufA[i]->chanStart)
            return false;
        if (storedLen <= pBufA[i]->coeffStart)
            return false;
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

inline int AxAdpcmSimplePlayer::setupChannels(Header* head, u32 length, AxAdpcmHandle* handle, AXPBADPCM* axAdpcm, AXPBSRC* axSrc, AXPBADDR* axAddr,
                                              AXVPB** axVoiceBuf, AXPBADPCMLOOP* axLoop) {
    // AXPBADPCM axAdpcm;
    // AXPBSRC axSrc;
    // AXPBADDR axAddr;
    // AXVPB* axVoiceBuf[2];
    // AXPBADPCMLOOP axAdpcmLoop;
    ChannelInfo* chanInfoBufA[2];
    ChannelInfo* chanInfoBufB[2];
    ChannelConfig* chanCfgBuf[2];
    AdpcmCoeffs* coeffsBufA[2];
    AdpcmCoeffs* coeffsBufB[2];

    if (head->byteOrder != 0xfeff)
        return 0;

    u32 loopEnd;
    u32 storedLen;
    int channelCount;

    INFOBlock* infoBlock = ADD_OFFSET(INFOBlock, head, head->infoHead.offset);
    DATABlock* dataBlock = ADD_OFFSET(DATABlock, head, head->dataHead.offset);
    if (infoBlock->head.sig != 'INFO')
        return 0;
    if (dataBlock->head.sig != 'DATA')
        return 0;

    if (infoBlock->channelCount == 0 || infoBlock->channelCount > 2)
        return 0;

    void* infoBlockDataBase = &infoBlock->codec;
    u32* channelStartOffsets = ADD_OFFSET(u32, infoBlockDataBase, infoBlock->offsToChannelStart);
    void* dataBlockDataBase = &dataBlock->head + 1;
    ChannelInfo** pChanInfoBufA = chanInfoBufA;
    ChannelInfo** pChanInfoBufB = chanInfoBufB;
    ChannelConfig** pChanCgfBuf = chanCfgBuf;
    AdpcmCoeffs** pCoeffsBufA = coeffsBufA;
    AdpcmCoeffs** pCoeffsBufB = coeffsBufB;
    AXVPB** pAxvpbBuf = axVoiceBuf;
    for (int chanI = 0; channelCount = infoBlock->channelCount, chanI < infoBlock->channelCount; chanI++) {
        int chanStartOffs = channelStartOffsets[chanI];
        ChannelInfo* chanInfo = ADD_OFFSET(ChannelInfo, infoBlockDataBase, chanStartOffs);
        u32 chanStart = chanInfo->chanStart;
        u32 coeffStart = chanInfo->coeffStart;

        pChanInfoBufA[chanI] = chanInfo;
        pChanInfoBufB[chanI] = chanInfo;
        pChanCgfBuf[chanI] = ADD_OFFSET(ChannelConfig, dataBlockDataBase, chanStart);
        pCoeffsBufA[chanI] = ADD_OFFSET(AdpcmCoeffs, infoBlockDataBase, coeffStart);
        pCoeffsBufB[chanI] = ADD_OFFSET(AdpcmCoeffs, infoBlockDataBase, coeffStart);

        // AXVPB* pAVar5 =
        pAxvpbBuf[chanI] = AXAcquireVoice(0x1f, VoiceCallback, NULL);
        if (pAxvpbBuf[chanI] == NULL)
            return 0;

        axAddr->loopFlag = infoBlock->hasLoop;
        axAddr->format = infoBlock->codec;

        u32 iVar2;
        if (axAddr->loopFlag) {
            axLoop->loop_pred_scale = coeffsBufB[chanI]->cfg.loopPredScale;
            axLoop->loop_yn1 = coeffsBufB[chanI]->cfg.loopYn1;
            // @bug Doesn't copy the loop value correctly :(
            axLoop->loop_yn2 = coeffsBufB[chanI]->cfg.loopYn1;
            iVar2 = AudioWavePlayer_8140D938((u32)chanCfgBuf[chanI], infoBlock->loopStart, 0);
        } else {
            iVar2 = AudioWavePlayer_8140D938((u32)zeroBuffer, 0, 0);
        }

        ChannelConfig* chanCfg = chanCfgBuf[chanI];
        axAddr->loopAddressHi = iVar2 >> 0x10;
        axAddr->loopAddressLo = iVar2;
        iVar2 = AudioWavePlayer_8140D938((u32)chanCfg, infoBlock->loopEnd, 0);
        axAddr->endAddressHi = iVar2 >> 0x10;
        axAddr->endAddressLo = iVar2 & 0xFFFF;
        iVar2 = AudioWavePlayer_8140D938((u32)chanCfg, 0, 0);
        axAddr->currentAddressHi = iVar2 >> 0x10;
        axAddr->currentAddressLo = iVar2 & 0xFFFF;

        axAdpcm->a[0][0] = pCoeffsBufB[chanI]->a[0][0];
        axAdpcm->a[0][1] = pCoeffsBufB[chanI]->a[0][1];
        axAdpcm->a[1][0] = pCoeffsBufB[chanI]->a[1][0];
        axAdpcm->a[1][1] = pCoeffsBufB[chanI]->a[1][1];
        axAdpcm->a[2][0] = pCoeffsBufB[chanI]->a[2][0];
        axAdpcm->a[2][1] = pCoeffsBufB[chanI]->a[2][1];
        axAdpcm->a[3][0] = pCoeffsBufB[chanI]->a[3][0];
        axAdpcm->a[3][1] = pCoeffsBufB[chanI]->a[3][1];
        axAdpcm->a[4][0] = pCoeffsBufB[chanI]->a[4][0];
        axAdpcm->a[4][1] = pCoeffsBufB[chanI]->a[4][1];
        axAdpcm->a[5][0] = pCoeffsBufB[chanI]->a[5][0];
        axAdpcm->a[5][1] = pCoeffsBufB[chanI]->a[5][1];
        axAdpcm->a[6][0] = pCoeffsBufB[chanI]->a[6][0];
        axAdpcm->a[6][1] = pCoeffsBufB[chanI]->a[6][1];
        axAdpcm->a[7][0] = pCoeffsBufB[chanI]->a[7][0];
        axAdpcm->a[7][1] = pCoeffsBufB[chanI]->a[7][1];
        axAdpcm->gain = pCoeffsBufB[chanI]->cfg.gain;
        axAdpcm->pred_scale = pCoeffsBufB[chanI]->cfg.predScale;
        axAdpcm->yn1 = pCoeffsBufB[chanI]->cfg.yn1;
        axAdpcm->yn2 = pCoeffsBufB[chanI]->cfg.yn2;

        u32 ratio = infoBlock->sampleRate / 32000.0f * 65536.0f;
        axSrc->ratioHi = ratio >> 16;
        axSrc->ratioLo = ratio & 0xFFFF;

        AXVPB* pAVar6 = axVoiceBuf[chanI];
        axSrc->currentAddressFrac = 0;
        axSrc->last_samples[0] = 0;
        axSrc->last_samples[1] = 0;
        axSrc->last_samples[2] = 0;
        axSrc->last_samples[3] = 0;
        AXSetVoiceType(pAVar6, AX_VOICE_NORMAL);
        AXSetVoiceAddr(pAVar6, axAddr);
        AXSetVoiceAdpcm(pAVar6, axAdpcm);
        AXSetVoiceAdpcmLoop(pAVar6, axLoop);

        VoiceInfo::initAXPBMIX(Voices[pAVar6->index].getMix());
        if (infoBlock->channelCount == 2) {
            if (SCGetSoundMode() == SC_SOUND_MODE_MONO) {
                Voices[pAVar6->index].getMix()->vL = 0x5a82;
                Voices[pAVar6->index].getMix()->vR = 0x5a82;
            } else if (chanI == 0) {
                Voices[pAVar6->index].getMix()->vR = 0;
            } else {
                Voices[pAVar6->index].getMix()->vL = 0;
            }
        }
        AXVPB* vpb = axVoiceBuf[chanI];
        AXSetVoiceMix(vpb, Voices[pAVar6->index].getMix());
        static AXPBVE voiceVe = {0x8000, 0x0000};
        AXSetVoiceVe(vpb, &voiceVe);
        AXSetVoiceSrcType(vpb, AX_SRC_TYPE_LINEAR);
        AXSetVoiceSrc(vpb, axSrc);
    }
    return channelCount;
}

int AxAdpcmSimplePlayer::start(void* data, u32 length, AxAdpcmHandle* handle) {
    Header* head = (Header*)data;
    pBnsData = head;
    sSysPauseFlag = false;

    if (pBnsData == NULL)
        return -1;

    AXPBADPCM axAdpcm;
    AXPBSRC axSrc;
    AXPBADDR axAddr;
    AXVPB* axVoiceBuf[2];
    AXPBADPCMLOOP axLoop;
    int channelCnt = setupChannels(head, length, handle, &axAdpcm, &axSrc, &axAddr, axVoiceBuf, &axLoop);

CLEANUP:
    if (channelCnt != 0) {
        for (u32 i = 0; i < channelCnt; i++) {
            if (axVoiceBuf[i] == NULL)
                return -1;
            Voices[axVoiceBuf[i]->index].setAXVPB(axVoiceBuf[i]);
            Voices[axVoiceBuf[i]->index].setState(1);
            Voices[axVoiceBuf[i]->index].setUnk_x0c(1);
        }
        if (handle != NULL) {
            for (u32 i = 0; i < channelCnt; i++) {
                handle->setVoice(i, &Voices[axVoiceBuf[i]->index]);
            }
        }
        sPlayingFlag = true;
        handle->setVolume(mVolume);
    }
    return channelCnt;
}
// int AxAdpcmSimplePlayer::start(void* data, u32 length, AxAdpcmHandle* handle) {
//     Header* head = (Header*)data;
//     pBnsData = head;
//     sSysPauseFlag = false;

//     if (pBnsData == NULL)
//         return -1;

//     AXPBADPCM axAdpcm;
//     AXPBSRC axSrc;
//     AXPBADDR axAddr;
//     AXVPB* axVoiceBuf[2];
//     AXPBADPCMLOOP axAdpcmLoop;
//     Coeffs* coeffsBufB[2];
//     Coeffs* coeffsBufA[2];
//     ChannelConfig* chanCfgBuf[2];
//     ChannelInfo* chanInfoBufB[2];
//     ChannelInfo* chanInfoBufA[2];
//     int res;
//     {
//         if (head->byteOrder != 0xfeff) {
//             res = 0;
//             goto CLEANUP;
//         }

//         u32 loopEnd;
//         u32 storedLen;
//         u8 channelCount;

//         INFOBlock* infoBlock = ADD_OFFSET(INFOBlock, data, head->infoHead.offset);
//         DATABlock* dataBlock = ADD_OFFSET(DATABlock, data, head->dataHead.offset);
//         if (infoBlock->head.sig != 'INFO') {
//             res = 0;
//             goto CLEANUP;
//         }
//         if (dataBlock->head.sig != 'DATA') {
//             res = 0;
//             goto CLEANUP;
//         }

//         if (infoBlock->channelCount == 0 || infoBlock->channelCount > 2) {
//             res = 0;
//             goto CLEANUP;
//         }

//         void* infoBlockDataBase = &infoBlock->codec;
//         u32* channelStartOffsets = ADD_OFFSET(u32, infoBlockDataBase, infoBlock->offsToChannelStart);
//         void* dataBlockDataBase = &dataBlock->head + 1;
//         ChannelInfo** pChanInfoBufA = chanInfoBufA;
//         ChannelInfo** pChanInfoBufB = chanInfoBufB;
//         ChannelConfig** pChanCgfBuf = chanCfgBuf;
//         Coeffs** pCoeffsBufA = coeffsBufA;
//         Coeffs** pCoeffsBufB = coeffsBufB;
//         AXVPB** pAxvpbBuf = axVoiceBuf;
//         for (int chanI = 0; res = infoBlock->channelCount, chanI < infoBlock->channelCount; chanI++) {
//             int chanStartOffs = channelStartOffsets[chanI];
//             ChannelInfo* chanInfo = ADD_OFFSET(ChannelInfo, infoBlockDataBase, chanStartOffs);
//             u32 chanStart = chanInfo->chanStart;
//             u32 coeffStart = chanInfo->coeffStart;

//             pChanInfoBufA[chanI] = chanInfo;
//             pChanInfoBufB[chanI] = chanInfo;
//             pChanCgfBuf[chanI] = ADD_OFFSET(ChannelConfig, dataBlockDataBase, chanStart);
//             pCoeffsBufA[chanI] = ADD_OFFSET(Coeffs, infoBlockDataBase, coeffStart);
//             pCoeffsBufB[chanI] = ADD_OFFSET(Coeffs, infoBlockDataBase, coeffStart);

//             AXVPB* pAVar5 = AXAcquireVoice(0x1f, VoiceCallback, 0);
//             pAxvpbBuf[chanI] = pAVar5;
//             if (pAVar5 == NULL) {
//                 res = 0;
//                 break;
//             }

//             axAddr.loopFlag = infoBlock->hasLoop;
//             axAddr.format = infoBlock->codec;

//             u32 iVar2;
//             if (axAddr.loopFlag) {
//                 axAdpcmLoop.loop_pred_scale = coeffsBufB[chanI]->cfg.loopPredScale;
//                 axAdpcmLoop.loop_yn1 = coeffsBufB[chanI]->cfg.loopYn1;
//                 // @bug Doesn't copy the loop value correctly :(
//                 axAdpcmLoop.loop_yn2 = coeffsBufB[chanI]->cfg.loopYn1;
//                 iVar2 = AudioWavePlayer_8140D938((u32)chanCfgBuf[chanI], infoBlock->loopStart, 0);
//             } else {
//                 iVar2 = AudioWavePlayer_8140D938((u32)zeroBuffer, 0, 0);
//             }

//             ChannelConfig* chanCfg = chanCfgBuf[chanI];
//             axAddr.loopAddressHi = iVar2 >> 0x10;
//             axAddr.loopAddressLo = iVar2;
//             iVar2 = AudioWavePlayer_8140D938((u32)chanCfg, infoBlock->loopEnd, 0);
//             axAddr.endAddressHi = iVar2 >> 0x10;
//             axAddr.endAddressLo = iVar2 & 0xFFFF;
//             iVar2 = AudioWavePlayer_8140D938((u32)chanCfg, 0, 0);
//             axAddr.currentAddressHi = iVar2 >> 0x10;
//             axAddr.currentAddressLo = iVar2 & 0xFFFF;

//             axAdpcm.a[0][0] = pCoeffsBufB[chanI]->a[0][0];
//             axAdpcm.a[0][1] = pCoeffsBufB[chanI]->a[0][1];
//             axAdpcm.a[1][0] = pCoeffsBufB[chanI]->a[1][0];
//             axAdpcm.a[1][1] = pCoeffsBufB[chanI]->a[1][1];
//             axAdpcm.a[2][0] = pCoeffsBufB[chanI]->a[2][0];
//             axAdpcm.a[2][1] = pCoeffsBufB[chanI]->a[2][1];
//             axAdpcm.a[3][0] = pCoeffsBufB[chanI]->a[3][0];
//             axAdpcm.a[3][1] = pCoeffsBufB[chanI]->a[3][1];
//             axAdpcm.a[4][0] = pCoeffsBufB[chanI]->a[4][0];
//             axAdpcm.a[4][1] = pCoeffsBufB[chanI]->a[4][1];
//             axAdpcm.a[5][0] = pCoeffsBufB[chanI]->a[5][0];
//             axAdpcm.a[5][1] = pCoeffsBufB[chanI]->a[5][1];
//             axAdpcm.a[6][0] = pCoeffsBufB[chanI]->a[6][0];
//             axAdpcm.a[6][1] = pCoeffsBufB[chanI]->a[6][1];
//             axAdpcm.a[7][0] = pCoeffsBufB[chanI]->a[7][0];
//             axAdpcm.a[7][1] = pCoeffsBufB[chanI]->a[7][1];
//             axAdpcm.gain = pCoeffsBufB[chanI]->cfg.gain;
//             axAdpcm.pred_scale = pCoeffsBufB[chanI]->cfg.predScale;
//             axAdpcm.yn1 = pCoeffsBufB[chanI]->cfg.yn1;
//             axAdpcm.yn2 = pCoeffsBufB[chanI]->cfg.yn2;

//             u32 ratio = infoBlock->sampleRate / 32000.0f * 65536.0f;
//             axSrc.ratioHi = ratio >> 16;
//             axSrc.ratioLo = ratio & 0xFFFF;

//             AXVPB* pAVar6 = axVoiceBuf[chanI];
//             axSrc.currentAddressFrac = 0;
//             axSrc.last_samples[0] = 0;
//             axSrc.last_samples[1] = 0;
//             axSrc.last_samples[2] = 0;
//             axSrc.last_samples[3] = 0;
//             AXSetVoiceType(pAVar6, 0);
//             AXSetVoiceAddr(pAVar6, &axAddr);
//             AXSetVoiceAdpcm(pAVar6, &axAdpcm);
//             AXSetVoiceAdpcmLoop(pAVar6, &axAdpcmLoop);

//             VoiceInfo::initAXPBMIX(Voices[pAVar6->index].getMix());
//             if (infoBlock->channelCount == 2) {
//                 if (SCGetSoundMode() == 0) {
//                     Voices[pAVar6->index].getMix()->vL = 0b0101101010000010;
//                     Voices[pAVar6->index].getMix()->vR = 0x5a82;
//                 } else if (chanI == 0) {
//                     Voices[pAVar6->index].getMix()->vR = 0;
//                 } else {
//                     Voices[pAVar6->index].getMix()->vL = 0;
//                 }
//             }
//             AXVPB* vpb = axVoiceBuf[chanI];
//             AXSetVoiceMix(vpb, Voices[pAVar6->index].getMix());
//             static AXPBVE voiceVe = {0x8000, 0x0000};
//             AXSetVoiceVe(vpb, &voiceVe);
//             AXSetVoiceSrcType(vpb, 1);
//             AXSetVoiceSrc(vpb, &axSrc);
//         }
//     }
// CLEANUP:
//     if (res != 0) {
//         for (u32 i = 0; i < res; i++) {
//             if (axVoiceBuf[i] == NULL)
//                 return -1;
//             Voices[axVoiceBuf[i]->index].setAXVPB(axVoiceBuf[i]);
//             Voices[axVoiceBuf[i]->index].setState(1);
//             Voices[axVoiceBuf[i]->index].setUnk_x0c(1);
//         }
//         if (handle != NULL) {
//             for (u32 i = 0; i < res; i++) {
//                 handle->setVoice(i, &Voices[axVoiceBuf[i]->index]);
//             }
//         }
//         sPlayingFlag = true;
//         handle->setVolume(mVolume);
//     }
//     return res;
// }

bool AxAdpcmHandle::setVolume(f32 newVolume) {
    bool a = false;
    for (int i = 0; i < 2; i++) {
        if (mVoices[i] == NULL || mVoices[i]->getAXVPB() == NULL)
            continue;

        AXPBMIX mix;
        VoiceInfo::initAXPBMIX(&mix);

        mix.vL = newVolume * mVoices[i]->getMix()->vL;
        mix.vR = newVolume * mVoices[i]->getMix()->vR;

        AXSetVoiceMix(mVoices[i]->getAXVPB(), &mix);
        mVoices[i]->setUnk_x0c(1);
        a = true;
    }
    return a;
}

void AxAdpcmSimplePlayer::stop(AxAdpcmHandle* handle) {
    nw4r::ut::AutoInterruptLock lock;
    if (handle != NULL) {
        for (int i = 0; i < 2; i++) {
            if (handle->getVoice(i) == NULL)
                continue;

            if (handle->getVoice(i)->getAXVPB() == NULL)
                continue;

            handle->getVoice(i)->setState(7);
            handle->getVoice(i)->setUnk_x0c(1);
            if (handle->getVoice(i)->getUnk_x08() != 0) {
                handle->getVoice(i)->setUnk_x08(0);
            }
        }
    }
}
int AxAdpcmSimplePlayer::pause(bool flag) {
    nw4r::ut::AutoInterruptLock lock;
    sSysPauseFlag = flag;
    return 1;
}

void AxAdpcmSimplePlayer::setVolume(AxAdpcmHandle* handle, f32 volume) {
    if (handle == NULL)
        return;

    handle->setVolume(volume);
    mVolume = volume;
}

void AxAdpcmSimplePlayer::calc() {
    for (int i = 0; i < 0x60; i++) {
        if (Voices[i].getUnk_x0c() == 1) {
            Voices[i].setUnk_x0c(2);
        }
    }
}
