#ifndef REVOLUTION_AX_PB_H
#define REVOLUTION_AX_PB_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * One frame contains eight bytes:
 * - One for the header
 * - Seven for the audio samples
 */
#define AX_ADPCM_FRAME_SIZE 8
#define AX_ADPCM_SAMPLE_BYTES_PER_FRAME (AX_ADPCM_FRAME_SIZE - 1)

// Two audio samples per byte (each nibble)
#define AX_ADPCM_SAMPLES_PER_BYTE 2

// Amount of audio samples in a frame
#define AX_ADPCM_SAMPLES_PER_FRAME                                             \
    (AX_ADPCM_SAMPLE_BYTES_PER_FRAME * AX_ADPCM_SAMPLES_PER_BYTE)

// Amount of nibbles in a frame
#define AX_ADPCM_NIBBLES_PER_FRAME (AX_ADPCM_FRAME_SIZE * 2)

typedef enum {
    AX_VOICE_NORMAL,
    AX_VOICE_STREAM
} AXVOICETYPE;

typedef enum {
    AX_VOICE_STOP,
    AX_VOICE_RUN
} AXVOICESTATE;

typedef enum {
    AX_SAMPLE_FORMAT_DSP_ADPCM = 0,
    AX_SAMPLE_FORMAT_PCM_S16 = 10,
    AX_SAMPLE_FORMAT_PCM_S8 = 25,
} AXSAMPLETYPE;

enum {
    AX_PB_LPF_ON = 1,
    AX_PB_BIQUAD_ON,
};

typedef enum {
    AX_SRC_TYPE_NONE,
    AX_SRC_TYPE_LINEAR,
    AX_SRC_TYPE_4TAP_8K,
    AX_SRC_TYPE_4TAP_12K,
    AX_SRC_TYPE_4TAP_16K,
    AX_SRC_TYPE_4TAP_AUTO
} AXPBSRCTYPE;

enum {
    AX_MIXER_CTRL_L = (1 << 0),
    AX_MIXER_CTRL_R = (1 << 1),
    AX_MIXER_CTRL_DELTA = (1 << 2),
    AX_MIXER_CTRL_S = (1 << 3),
    AX_MIXER_CTRL_DELTA_S = (1 << 4),

    AX_MIXER_CTRL_AL = (1 << 16),
    AX_MIXER_CTRL_AR = (1 << 17),
    AX_MIXER_CTRL_DELTA_A = (1 << 18),
    AX_MIXER_CTRL_AS = (1 << 19),
    AX_MIXER_CTRL_DELTA_AS = (1 << 20),

    AX_MIXER_CTRL_BL = (1 << 21),
    AX_MIXER_CTRL_BR = (1 << 22),
    AX_MIXER_CTRL_DELTA_B = (1 << 23),
    AX_MIXER_CTRL_BS = (1 << 24),
    AX_MIXER_CTRL_DELTA_BS = (1 << 25),

    AX_MIXER_CTRL_CL = (1 << 26),
    AX_MIXER_CTRL_CR = (1 << 27),
    AX_MIXER_CTRL_DELTA_C = (1 << 28),
    AX_MIXER_CTRL_CS = (1 << 29),
    AX_MIXER_CTRL_DELTA_CS = (1 << 30)
};

enum {
    AX_MIXER_CTRL_RMT_M0 = (1 << 0),
    AX_MIXER_CTRL_RMT_DELTA_M0 = (1 << 1),
    AX_MIXER_CTRL_RMT_A0 = (1 << 2),
    AX_MIXER_CTRL_RMT_DELTA_A0 = (1 << 3),

    AX_MIXER_CTRL_RMT_M1 = (1 << 4),
    AX_MIXER_CTRL_RMT_DELTA_M1 = (1 << 5),
    AX_MIXER_CTRL_RMT_A1 = (1 << 6),
    AX_MIXER_CTRL_RMT_DELTA_A1 = (1 << 7),

    AX_MIXER_CTRL_RMT_M2 = (1 << 8),
    AX_MIXER_CTRL_RMT_DELTA_M2 = (1 << 9),
    AX_MIXER_CTRL_RMT_A2 = (1 << 10),
    AX_MIXER_CTRL_RMT_DELTA_A2 = (1 << 11),

    AX_MIXER_CTRL_RMT_M3 = (1 << 12),
    AX_MIXER_CTRL_RMT_DELTA_M3 = (1 << 13),
    AX_MIXER_CTRL_RMT_A3 = (1 << 14),
    AX_MIXER_CTRL_RMT_DELTA_A3 = (1 << 15)
};

typedef struct _AXPBMIX {
    u16 vL;             // 0x00
    u16 vDeltaL;        // 0x02
    u16 vR;             // 0x04
    u16 vDeltaR;        // 0x06
    u16 vAuxAL;         // 0x08
    u16 vDeltaAuxAL;    // 0x0A
    u16 vAuxAR;         // 0x0C
    u16 vDeltaAuxAR;    // 0x0E
    u16 vAuxBL;         // 0x10
    u16 vDeltaAuxBL;    // 0x12
    u16 vAuxBR;         // 0x14
    u16 vDeltaAuxBR;    // 0x16
    u16 vAuxCL;         // 0x18
    u16 vDeltaAuxCL;    // 0x1A
    u16 vAuxCR;         // 0x1C
    u16 vDeltaAuxCR;    // 0x1E
    u16 vS;             // 0x20
    u16 vDeltaS;        // 0x22
    u16 vAuxAS;         // 0x24
    u16 vDeltaAuxAS;    // 0x26
    u16 vAuxBS;         // 0x28
    u16 vDeltaAuxBS;    // 0x2A
    u16 vAuxCS;         // 0x2C
    u16 vDeltaAuxCS;    // 0x2E
} AXPBMIX;

typedef struct _AXPBITD {
    u16 flag;           // 0x00

    u16 bufferHi;       // 0x02
    u16 bufferLo;       // 0x04

    u16 shiftL;         // 0x06
    u16 shiftR;         // 0x08

    u16 targetShiftL;   // 0x0A
    u16 targetShiftR;   // 0x0C
} AXPBITD;

typedef struct _AXPBDPOP {
    s16 aL;     // 0x00
    s16 aAuxAL; // 0x02
    s16 aAuxBL; // 0x04
    s16 aAuxCL; // 0x06
    s16 aR;     // 0x08
    s16 aAuxAR; // 0x0A
    s16 aAuxBR; // 0x0C
    s16 aAuxCR; // 0x0E
    s16 aS;     // 0x10
    s16 aAuxAS; // 0x12
    s16 aAuxBS; // 0x14
    s16 aAuxCS; // 0x16
} AXPBDPOP;

typedef struct _AXPBVE {
    u16 currentVolume;  // 0x00
    s16 currentDelta;   // 0x02
} AXPBVE;

typedef struct _AXPBADDR {
    u16 loopFlag;         // 0x00
    u16 format;           // 0x02

    u16 loopAddressHi;    // 0x04
    u16 loopAddressLo;    // 0x06

    u16 endAddressHi;     // 0x08
    u16 endAddressLo;     // 0x0A

    u16 currentAddressHi; // 0x0C
    u16 currentAddressLo; // 0x0E
} AXPBADDR;

typedef struct _AXPBADPCM {
    u16 a[8][2];    // 0x00
    u16 gain;       // 0x20
    u16 pred_scale; // 0x22
    u16 yn1;        // 0x24
    u16 yn2;        // 0x26
} AXPBADPCM;

typedef struct _AXPBSRC {
    u16 ratioHi;            // 0x00
    u16 ratioLo;            // 0x02
    u16 currentAddressFrac; // 0x04
    u16 last_samples[4];    // 0x06
} AXPBSRC;

typedef struct _AXPBADPCMLOOP {
    u16 loop_pred_scale;    // 0x00
    u16 loop_yn1;           // 0x02
    u16 loop_yn2;           // 0x04
} AXPBADPCMLOOP;

typedef struct _AXPBLPF {
    u16 on;  // 0x00
    u16 yn1; // 0x02
    u16 a0;  // 0x04
    u16 b0;  // 0x06
} AXPBLPF;

typedef struct _AXPBBIQUAD {
    u16 on;     // 0x00

    u16 xn1;    // 0x02
    u16 xn2;    // 0x04

    u16 yn1;    // 0x06
    u16 yn2;    // 0x08

    u16 b0;     // 0x0A
    u16 b1;     // 0x0C
    u16 b2;     // 0x0E

    u16 a1;     // 0x10
    u16 a2;     // 0x12
} AXPBBIQUAD;

typedef struct _AXPBRMTMIX {
    u16 vMain0;         // 0x00
    u16 vDeltaMain0;    // 0x02
    u16 vAux0;          // 0x04
    u16 vDeltaAux0;     // 0x06

    u16 vMain1;         // 0x08
    u16 vDeltaMain1;    // 0x0A
    u16 vAux1;          // 0x0C
    u16 vDeltaAux1;     // 0x0E

    u16 vMain2;         // 0x10
    u16 vDeltaMain2;    // 0x12
    u16 vAux2;          // 0x14
    u16 vDeltaAux2;     // 0x16

    u16 vMain3;         // 0x18
    u16 vDeltaMain3;    // 0x1A
    u16 vAux3;          // 0x1C
    u16 vDeltaAux3;     // 0x1E
} AXPBRMTMIX;

typedef struct _AXPBITDBUFFER {
    s16 buffer[32]; // 0x00
} AXPBITDBUFFER;

typedef struct _AXPBRMTDPOP {
    s16 aMain0; // 0x00
    s16 aMain1; // 0x02
    s16 aMain2; // 0x04
    s16 aMain3; // 0x06

    s16 aAux0;  // 0x08
    s16 aAux1;  // 0x0A
    s16 aAux2;  // 0x0C
    s16 aAux3;  // 0x0E
} AXPBRMTDPOP;

typedef struct _AXPBRMTSRC {
    u16 currentAddressFrac; // 0x00
    u16 last_samples[4];    // 0x02
} AXPBRMTSRC;

typedef union __AXPBRMTIIR {
    AXPBLPF     lpf;
    AXPBBIQUAD  biquad;
} AXPBRMTIIR;

typedef struct _AXPB {
    u16             nextHi;         // 0x00
    u16             nextLo;         // 0x02
    u16             currHi;         // 0x04
    u16             currLo;         // 0x06

    u16             srcSelect;      // 0x08
    u16             coefSelect;     // 0x0A

    u32             mixerCtrl;      // 0x0C

    u16             state;          // 0x10
    u16             type;           // 0x12
    AXPBMIX         mix;            // 0x14
    AXPBITD         itd;            // 0x44
    AXPBDPOP        dpop;           // 0x52
    AXPBVE          ve;             // 0x6A
    
    AXPBADDR        addr;           // 0x6E
    AXPBADPCM       adpcm;          // 0x7E
    AXPBSRC         src;            // 0xA6
    AXPBADPCMLOOP   adpcmLoop;      // 0xB4

    AXPBLPF         lpf;            // 0xBA
    AXPBBIQUAD      biquad;         // 0xC2

    u16             remote;         // 0xD6
    u16             rmtMixerCtrl;   // 0xD8
    AXPBRMTMIX      rmtMix;         // 0xDA
    AXPBRMTDPOP     rmtDpop;        // 0xFA
    AXPBRMTSRC      rmtSrc;         // 0x10A
    AXPBRMTIIR      rmtIIR;         // 0x114

    u16             pad[12];        // 0x128
} AXPB;

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_AX_PB_H
