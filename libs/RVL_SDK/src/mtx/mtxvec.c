#include <revolution/mtx.h>

void C_MTXMultVec(const Mtx m, const Vec* src, Vec* dst) {
    Vec vTmp;

    vTmp.x = m[0][3] + ((m[0][2] * src->z) + ((m[0][0] * src->x) + (m[0][1] * src->y)));
    vTmp.y = m[1][3] + ((m[1][2] * src->z) + ((m[1][0] * src->x) + (m[1][1] * src->y)));
    vTmp.z = m[2][3] + ((m[2][2] * src->z) + ((m[2][0] * src->x) + (m[2][1] * src->y)));
    dst->x = vTmp.x;
    dst->y = vTmp.y;
    dst->z = vTmp.z;
}

asm void PSMTXMultVec(const register Mtx m, const register Vec* src, register Vec* dst) {
    nofralloc
    psq_l f0, Vec.x(src), 0, 0
    psq_l f2, 0(m), 0, 0
    psq_l f1, Vec.z(src), 1, 0
    ps_mul f4, f2, f0
    psq_l f3, 8(m), 0, 0
    ps_madd f5, f3, f1, f4
    psq_l f8, 16(m), 0, 0
    ps_sum0 f6, f5, f6, f5
    psq_l f9, 24(m), 0, 0
    ps_mul f10, f8, f0
    psq_st f6, Vec.x(dst), 1, 0
    ps_madd f11, f9, f1, f10
    psq_l f2, 32(m), 0, 0
    ps_sum0 f12, f11, f12, f11
    psq_l f3, 40(m), 0, 0
    ps_mul f4, f2, f0
    psq_st f12, Vec.y(dst), 1, 0
    ps_madd f5, f3, f1, f4
    ps_sum0 f6, f5, f6, f5
    psq_st f6, Vec.z(dst), 1, 0
    blr
}
