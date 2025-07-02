#ifndef REVOLUTION_AX_VPB_H
#define REVOLUTION_AX_VPB_H

#include <revolution/ax/AXPB.h>

#ifdef __cplusplus
extern "C" {
#endif

#define AX_SAMPLE_RATE 32000
#define AX_VOICE_MAX 96

enum {
    AX_PBSYNC_SELECT = (1 << 0),
    AX_PBSYNC_MIXER_CTRL = (1 << 1),
    AX_PBSYNC_STATE = (1 << 2),
    AX_PBSYNC_TYPE = (1 << 3),
    AX_PBSYNC_MIX = (1 << 4),
    AX_PBSYNC_ITD = (1 << 5),
    AX_PBSYNC_ITD_SHIFT = (1 << 6),
    AX_PBSYNC_DPOP = (1 << 7),
    AX_PBSYNC_VE = (1 << 8),
    AX_PBSYNC_VE_DELTA = (1 << 9),
    AX_PBSYNC_ADDR = (1 << 10),
    AX_PBSYNC_LOOP_FLAG = (1 << 11),
    AX_PBSYNC_LOOP_ADDR = (1 << 12),
    AX_PBSYNC_END_ADDR = (1 << 13),
    AX_PBSYNC_CURR_ADDR = (1 << 14),
    AX_PBSYNC_ADPCM = (1 << 15),
    AX_PBSYNC_SRC = (1 << 16),
    AX_PBSYNC_SRC_RATIO = (1 << 17),
    AX_PBSYNC_ADPCM_LOOP = (1 << 18),
    AX_PBSYNC_LPF = (1 << 19),
    AX_PBSYNC_LPF_COEFS = (1 << 20),
    AX_PBSYNC_BIQUAD = (1 << 21),
    AX_PBSYNC_BIQUAD_COEFS = (1 << 22),
    AX_PBSYNC_REMOTE = (1 << 23),
    AX_PBSYNC_RMT_MIXER_CTRL = (1 << 24),
    AX_PBSYNC_RMTMIX = (1 << 25),
    AX_PBSYNC_RMTDPOP = (1 << 26),
    AX_PBSYNC_RMTSRC = (1 << 27),
    AX_PBSYNC_RMTIIR = (1 << 28),
    AX_PBSYNC_RMTIIR_LPF_COEFS = (1 << 29),
    AX_PBSYNC_RMTIIR_BIQUAD_COEFS = (1 << 30),
    AX_PBSYNC_ALL = (1 << 31),
};

typedef void (*AXVoiceCallback)(void*);

typedef struct _AXVPB {
    void*           next;           // 0x00
    void*           prev;           // 0x04
    void*           next1;          // 0x08
    u32             priority;       // 0x0C
    AXVoiceCallback callback;       // 0x10
    u32             userContext;    // 0x14
    u32             index;          // 0x18
    u32             sync;           // 0x1C
    u32             depop;          // 0x20
    void*           itdBuffer;      // 0x24
    AXPB            pb;             // 0x28
} AXVPB;

void    AXSetVoiceSrcType(AXVPB* vpb, u32 type);
void    AXSetVoiceState(AXVPB* vpb, u16 state);
void    AXSetVoiceType(AXVPB* vpb, u16 type);
void    AXSetVoiceMix(AXVPB* vpb, AXPBMIX* mix);
void    AXSetVoiceVe(AXVPB* vpb, AXPBVE* ve);
void    AXSetVoiceAddr(AXVPB* vpb, AXPBADDR* addr);
void    AXSetVoiceAdpcm(AXVPB* vpb, AXPBADPCM* adpcm);
void    AXSetVoiceSrc(AXVPB* vpb, AXPBSRC* src_);
void    AXSetVoiceSrcRatio(AXVPB* vpb, float ratio);
void    AXSetVoiceAdpcmLoop(AXVPB* vpb, AXPBADPCMLOOP* adpcmloop);
void    AXSetVoiceLpf(AXVPB* vpb, AXPBLPF* lpf);
void    AXSetVoiceLpfCoefs(AXVPB* vpb, u16 a0, u16 b0);
void    AXGetLpfCoefs(u16 freq, u16* a, u16* b);
void    AXSetVoiceRmtOn(AXVPB *vpb, u16 on);
void    AXSetVoiceRmtMix(AXVPB* vpb, AXPBRMTMIX* mix);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_VPB_H
