#include <decomp.h>

typedef struct PTMF {
    long        this_delta; // 0x00
    long        v_offset;   // 0x04
    union {
        void*   f_addr;
        long    ve_offset;
    } f_data;               // 0x08
} PTMF;

asm void __ptmf_scall(...) {
#ifdef __MWERKS__
    nofralloc
        lwz     r0, PTMF.this_delta(r12)
        lwz     r11, PTMF.v_offset(r12)
        lwz     r12, PTMF.f_data(r12)
        add     r3, r3, r0
        cmpwi   r11, 0
        blt-    cr0, loc_0x20
        lwzx    r12, r3, r12
        lwzx    r12, r12, r11
    loc_0x20:
        mtctr   r12
        bctr
#endif
}
