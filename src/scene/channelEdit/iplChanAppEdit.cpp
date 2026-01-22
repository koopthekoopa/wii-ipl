#include "iplMath.h"

// To force weak generation for ipl::math::LinearIntp<math::VEC3>::get() (for now)

namespace ipl {
    typedef math::LinearIntp<math::VEC3> intp;
    void weakGen1() {
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
        ((intp*)0)->get();
    }
}
