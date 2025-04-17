#include "system/rvl_dec.h"

int Rvl_decode(u8* out, u8* in) {
    if (Rvl_decode_get_magic(in) == 0x59617A) {
        return Rvl_decode_szs(out, in);
    }
    else if (Rvl_decode_get_magic(in) == 0x415348) {
        return Rvl_decode_ash(out, in);
    }
    else if (Rvl_decode_get_magic(in) == 0x415352) {
        return Rvl_decode_asr(out, in);
    }
    else {
        return 0;
    }
}
