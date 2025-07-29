#include <internal/fdlibm.h>
#include <math.h>

double fmax(double x, double y) {
    if (x >= y) {
        return x;
    }
    else if (x < y) {
        return y;
    }

    if (isnan(x)) {
        return y;
    }
    else {
        return x;
    }
}

double fmin(double x, double y) {
    if (x >= y) {
        return y;
    }
    else if (x < y) {
        return x;
    }

    if (isnan(x)) {
        return y;
    }
    else {
        return x;
    }
}
