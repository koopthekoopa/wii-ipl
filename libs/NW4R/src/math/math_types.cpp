#include <nw4r/math.h>

namespace nw4r {
    namespace math {
        void MTX44Identity(register MTX44* pMtx) {
            register float a, b, c;
            a = 0.0f;
            b = 1.0f;
            #ifdef __MWERKS__
                asm {
                    psq_st a, 8(pMtx), 0, 0
                    ps_merge01 c, a, b
                    ps_merge10 b, b, a
                    psq_st a, 24(pMtx), 0, 0
                    psq_st a, 32(pMtx), 0, 0
                    psq_st c, 16(pMtx), 0, 0
                    psq_st b, 0(pMtx), 0, 0
                    psq_st b, 40(pMtx), 0, 0
                    psq_st a, 48(pMtx), 0, 0
                    psq_st c, 56(pMtx), 0, 0
                }
            #endif
        }

        VEC4* VEC4Transform(VEC4* pOut, const MTX44* pM, const VEC4* pV) {
            VEC4 tmp;
            tmp.x = pM->_00 * pV->x + pM->_01 * pV->y + pM->_02 * pV->z + pM->_03 * pV->w;
            tmp.y = pM->_10 * pV->x + pM->_11 * pV->y + pM->_12 * pV->z + pM->_13 * pV->w;
            tmp.z = pM->_20 * pV->x + pM->_21 * pV->y + pM->_22 * pV->z + pM->_23 * pV->w;
            tmp.w = pM->_30 * pV->x + pM->_31 * pV->y + pM->_32 * pV->z + pM->_33 * pV->w;

            pOut->x = tmp.x;
            pOut->y = tmp.y;
            pOut->z = tmp.z;
            pOut->w = tmp.w;
            return pOut;
        }
    }
}
