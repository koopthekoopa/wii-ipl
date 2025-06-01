#include <internal/fdlibm.h>

double log(double x) {
    return __ieee754_log(x);
}
