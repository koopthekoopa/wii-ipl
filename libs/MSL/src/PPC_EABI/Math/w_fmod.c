#include <internal/fdlibm.h>

double fmod(double y, double x) {
    return __ieee754_fmod(y, x);
}
