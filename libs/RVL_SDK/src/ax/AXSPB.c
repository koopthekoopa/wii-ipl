#include <revolution/os.h>
#include <revolution/ax.h>

#define DEPOP_MIN (-20)
#define DEPOP_MAX  (20)

static AXSPB    __AXStudio __attribute__((aligned(32)));    /* please... align... */

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
    } else {
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
    } else {
        *all = 0;
        *value = 0;
        *depop = 0;
    }
}

void __AXPrintStudio() {
    __AXDepopFadeMain(&__AXSpbAL, &__AXStudio.L, &__AXStudio.dL);
    __AXDepopFadeMain(&__AXSpbAR, &__AXStudio.R, &__AXStudio.dR);
    __AXDepopFadeMain(&__AXSpbAS, &__AXStudio.S, &__AXStudio.dS);

    __AXDepopFadeMain(&__AXSpbAAL, &__AXStudio.AuxAL, &__AXStudio.dAuxAL);
    __AXDepopFadeMain(&__AXSpbAAR, &__AXStudio.AuxAR, &__AXStudio.dAuxAR);
    __AXDepopFadeMain(&__AXSpbAAS, &__AXStudio.AuxAS, &__AXStudio.dAuxAS);

    __AXDepopFadeMain(&__AXSpbABL, &__AXStudio.AuxBL, &__AXStudio.dAuxBL);
    __AXDepopFadeMain(&__AXSpbABR, &__AXStudio.AuxBR, &__AXStudio.dAuxBR);
    __AXDepopFadeMain(&__AXSpbABS, &__AXStudio.AuxBS, &__AXStudio.dAuxBS);

    __AXDepopFadeMain(&__AXSpbACL, &__AXStudio.AuxCL, &__AXStudio.dAuxCL);
    __AXDepopFadeMain(&__AXSpbACR, &__AXStudio.AuxCR, &__AXStudio.dAuxCR);
    __AXDepopFadeMain(&__AXSpbACS, &__AXStudio.AuxCS, &__AXStudio.dAuxCS);

    __AXDepopFadeRmt(&__AXSpbMain0, &__AXStudio.Main0, &__AXStudio.dMain0);
    __AXDepopFadeRmt(&__AXSpbMain1, &__AXStudio.Main1, &__AXStudio.dMain1);
    __AXDepopFadeRmt(&__AXSpbMain2, &__AXStudio.Main2, &__AXStudio.dMain2);
    __AXDepopFadeRmt(&__AXSpbMain3, &__AXStudio.Main3, &__AXStudio.dMain3);

    __AXDepopFadeRmt(&__AXSpbAux0, &__AXStudio.Aux0, &__AXStudio.dAux0);
    __AXDepopFadeRmt(&__AXSpbAux1, &__AXStudio.Aux1, &__AXStudio.dAux1);
    __AXDepopFadeRmt(&__AXSpbAux2, &__AXStudio.Aux2, &__AXStudio.dAux2);
    __AXDepopFadeRmt(&__AXSpbAux3, &__AXStudio.Aux3, &__AXStudio.dAux3);

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
