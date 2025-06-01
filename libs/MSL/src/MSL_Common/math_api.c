#include <internal/math_api.h>
#pragma exceptions on

int __fpclassifyf(float x) {
    int val = (*(int*)&x);

    switch (val & 0x7F800000) {
        case 0x7F800000:
            if (val & 0x7FFFFF) {
                return 1;
            }
            else {
                return 2;
            }
            break;
        case 0:
            if (val & 0x7FFFFF) {
                return 5;
            }
            else {
                return 3;
            }
            break;
    }

    return 4;
}

int __signbitd(double x) {
    return (*(int*)&x) & 0x80000000;
}

int __fpclassifyd(double x) {
    switch ((*(int*)&x) & 0x7FF00000) {
        case 0x7FF00000:
            if (((*(int*)&x) & 0xFFFFF) || (*(1 + (int*)&x)) & 0xFFFFFFFF) {
                return 1;
            }
            else {
                return 2;
            }

            break;
        case 0:
            if (((*(int*)&x) & 0xFFFFF) || (*(1 + (int*)&x)) & 0xFFFFFFFF) {
                return 5;
            }
            else {
                return 3;
            }

            break;
    }

    return 4;
}
