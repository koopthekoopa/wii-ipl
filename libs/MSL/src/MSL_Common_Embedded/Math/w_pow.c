#include <internal/fdlibm.h>

double pow(double y, double x) {
    return __ieee754_pow(y, x);
}
