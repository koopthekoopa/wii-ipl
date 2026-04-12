#include <private/vf/PrFILE2/pf_types.h>

pf_u16 VFiPF_GET_LE_U16(const pf_u8* buf) {
    return (pf_u16)((pf_u16)buf[1] << 8 | (pf_u16)buf[0]);
}

void VFiPF_LE16_TO_U16_STR(pf_u8* sSrc, pf_u32 num) {
    pf_u32 cnt;
    pf_s8 tmp_src;

    for (cnt = 0; cnt < num; cnt += sizeof(pf_u16)) {
#ifdef DEBUG
        tmp_src = *((pf_u8*)sSrc + cnt);
        *((pf_u8*)sSrc + cnt) = *((pf_u8*)sSrc + cnt + 1);
        *((pf_u8*)sSrc + cnt + 1) = tmp_src;
#else
        tmp_src = sSrc[cnt];
        sSrc[cnt] = sSrc[cnt + 1];
        sSrc[cnt + 1] = tmp_src;
#endif
    }
}
