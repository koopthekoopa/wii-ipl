#include <revolution/os.h>
#include <revolution/ax.h>

#define DEPOP_MIN (-20)
#define DEPOP_MAX  (20)

static AXSPB    __AXStudio ALIGN32;    /* please... align... */

static s32      __AXSpbAL, __AXSpbAR, __AXSpbAS;
static s32      __AXSpbAAL, __AXSpbAAR, __AXSpbAAS;
static s32      __AXSpbABL, __AXSpbABR, __AXSpbABS;
static s32      __AXSpbACL, __AXSpbACR, __AXSpbACS;
static s32      __AXSpbMain0, __AXSpbMain1, __AXSpbMain2, __AXSpbMain3;
static s32      __AXSpbAux0, __AXSpbAux1, __AXSpbAux2, __AXSpbAux3;

AXSPB* __AXGetStudio() {
    return &__AXStudio;
}

void __AXDepopFadeMain(s32* all, s32* value, s16* depop) {
    if (*all / AX_SAMPLES_PER_FRAME != 0) {
        // Average depop across the channel?
        s32 avg = *all / AX_SAMPLES_PER_FRAME;

        if (avg > DEPOP_MAX) {
            avg = DEPOP_MAX;
        }

        if (avg < DEPOP_MIN) {
            avg = DEPOP_MIN;
        }

        *value = *all;
        *all -= avg * AX_SAMPLES_PER_FRAME;
        *depop = -avg;
    }
    else {
        *all = 0;
        *value = 0;
        *depop = 0;
    }
}

void __AXDepopFadeRmt(s32* all, s32* value, s16* depop) {
    if (*all / AX_SAMPLES_PER_FRAME_RMT != 0) {
        // Average depop across the channel?
        s32 avg = *all / AX_SAMPLES_PER_FRAME_RMT;

        if (avg > DEPOP_MAX) {
            avg = DEPOP_MAX;
        }

        if (avg < DEPOP_MIN) {
            avg = DEPOP_MIN;
        }

        *value = *all;
        *all -= avg * AX_SAMPLES_PER_FRAME_RMT;
        *depop = -avg;
    }
    else {
        *all = 0;
        *value = 0;
        *depop = 0;
    }
}

void __AXPrintStudio() {
    __AXDepopFadeMain(&__AXSpbAL,  (void*)&__AXStudio.dpopLHi,  &__AXStudio.dpopLDelta);
    __AXDepopFadeMain(&__AXSpbAR,  (void*)&__AXStudio.dpopRHi,  &__AXStudio.dpopRDelta);
    __AXDepopFadeMain(&__AXSpbAS,  (void*)&__AXStudio.dpopSHi,  &__AXStudio.dpopSDelta);

    __AXDepopFadeMain(&__AXSpbAAL, (void*)&__AXStudio.dpopALHi, &__AXStudio.dpopALDelta);
    __AXDepopFadeMain(&__AXSpbAAR, (void*)&__AXStudio.dpopARHi, &__AXStudio.dpopARDelta);
    __AXDepopFadeMain(&__AXSpbAAS, (void*)&__AXStudio.dpopASHi, &__AXStudio.dpopASDelta);

    __AXDepopFadeMain(&__AXSpbABL, (void*)&__AXStudio.dpopBLHi, &__AXStudio.dpopBLDelta);
    __AXDepopFadeMain(&__AXSpbABR, (void*)&__AXStudio.dpopBRHi, &__AXStudio.dpopBRDelta);
    __AXDepopFadeMain(&__AXSpbABS, (void*)&__AXStudio.dpopBSHi, &__AXStudio.dpopBSDelta);

    __AXDepopFadeMain(&__AXSpbACL, (void*)&__AXStudio.dpopCLHi, &__AXStudio.dpopCLDelta);
    __AXDepopFadeMain(&__AXSpbACR, (void*)&__AXStudio.dpopCRHi, &__AXStudio.dpopCRDelta);
    __AXDepopFadeMain(&__AXSpbACS, (void*)&__AXStudio.dpopCSHi, &__AXStudio.dpopCSDelta);
    
    __AXDepopFadeRmt(&__AXSpbMain0, (void*)&__AXStudio.dpopMain0Hi, &__AXStudio.dpopMain0Delta);
    __AXDepopFadeRmt(&__AXSpbMain1, (void*)&__AXStudio.dpopMain1Hi, &__AXStudio.dpopMain1Delta);
    __AXDepopFadeRmt(&__AXSpbMain2, (void*)&__AXStudio.dpopMain2Hi, &__AXStudio.dpopMain2Delta);
    __AXDepopFadeRmt(&__AXSpbMain3, (void*)&__AXStudio.dpopMain3Hi, &__AXStudio.dpopMain3Delta);

    __AXDepopFadeRmt(&__AXSpbAux0, (void*)&__AXStudio.dpopAux0Hi, &__AXStudio.dpopAux0Delta);
    __AXDepopFadeRmt(&__AXSpbAux1, (void*)&__AXStudio.dpopAux1Hi, &__AXStudio.dpopAux1Delta);
    __AXDepopFadeRmt(&__AXSpbAux2, (void*)&__AXStudio.dpopAux2Hi, &__AXStudio.dpopAux2Delta);
    __AXDepopFadeRmt(&__AXSpbAux3, (void*)&__AXStudio.dpopAux3Hi, &__AXStudio.dpopAux3Delta);

    DCFlushRange(&__AXStudio, sizeof(AXSPB));
}

void __AXSPBInit() {
    __AXSpbAux0  = __AXSpbAux1  = __AXSpbAux2  = __AXSpbAux3 = 0;
    __AXSpbMain0 = __AXSpbMain1 = __AXSpbMain2 = __AXSpbMain3 = 0;
    
    __AXSpbACL   = __AXSpbACR   = __AXSpbACS   = 0;
    __AXSpbABL   = __AXSpbABR   = __AXSpbABS   = 0;
    __AXSpbAAL   = __AXSpbAAR   = __AXSpbAAS   = 0;
    __AXSpbAL    = __AXSpbAR    = __AXSpbAS    = 0;
}

void __AXDepopVoice(AXPB* pb) {
    __AXSpbAL += pb->dpop.aL;
    __AXSpbAAL += pb->dpop.aAuxAL;
    __AXSpbABL += pb->dpop.aAuxBL;
    __AXSpbACL += pb->dpop.aAuxCL;

    __AXSpbAR += pb->dpop.aR;
    __AXSpbAAR += pb->dpop.aAuxAR;
    __AXSpbABR += pb->dpop.aAuxBR;
    __AXSpbACR += pb->dpop.aAuxCR;

    __AXSpbAS += pb->dpop.aS;
    __AXSpbAAS += pb->dpop.aAuxAS;
    __AXSpbABS += pb->dpop.aAuxBS;
    __AXSpbACS += pb->dpop.aAuxCS;

    __AXSpbMain0 += pb->rmtDpop.aMain0;
    __AXSpbMain1 += pb->rmtDpop.aMain1;
    __AXSpbMain2 += pb->rmtDpop.aMain2;
    __AXSpbMain3 += pb->rmtDpop.aMain3;

    __AXSpbAux0 += pb->rmtDpop.aAux0;
    __AXSpbAux1 += pb->rmtDpop.aAux1;
    __AXSpbAux2 += pb->rmtDpop.aAux2;
    __AXSpbAux3 += pb->rmtDpop.aAux3;
}
