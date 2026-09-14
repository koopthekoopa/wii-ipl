#include <math.h>

#define FLOAT_EXP_MASK 0x7F800000
#define FLOAT_MANT_MASK 0x7FFFFF
#define DOUBLE_EXP_MASK 0x7FF00000
#define DOUBLE_MANT_MASK 0xFFFFF
#define DOUBLE_SIGN_MASK 0x80000000

int __fpclassifyf(float x) {
    int val = *(int*)&x;

    switch (val & FLOAT_EXP_MASK) {
        case FLOAT_EXP_MASK: {
            if (val & FLOAT_MANT_MASK) {
                return FP_NAN;
            }
            return FP_INFINITE;
        }
        case 0: {
            if (val & FLOAT_MANT_MASK) {
                return FP_SUBNORMAL;
            }
            return FP_ZERO;
        }
    }

    return FP_NORMAL;
}

int __signbitd(double x) {
    return *(int*)&x & DOUBLE_SIGN_MASK;
}

int __fpclassifyd(double x) {
    int val = *(int*)&x;
    switch (val & DOUBLE_EXP_MASK) {
        case DOUBLE_EXP_MASK: {
            if (val & DOUBLE_MANT_MASK || ((int*)&x)[1]) {
                return FP_NAN;
            }
            return FP_INFINITE;
        }
        case 0: {
            if (val & DOUBLE_MANT_MASK || ((int*)&x)[1]) {
                return FP_SUBNORMAL;
            }
            return FP_ZERO;
        }
    }

    return FP_NORMAL;
}
