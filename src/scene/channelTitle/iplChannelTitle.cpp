#include "iplMath.h"

// To force weak generation for ipl::math::HermiteIntp<float>::get() (for now)

namespace ipl {
    typedef math::HermiteIntp<float> intp;
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
