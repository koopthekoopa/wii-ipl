#include <limits.h>
#include <math.h>

#include <internal/arith.h>

#undef abs
int abs(int n) {
    int mask = n >> 31;
    return (mask ^ n) - mask;
}

long labs(long n) {
    long mask = n >> 31;
    return (mask ^ n) - mask;
}

div_t div(int numerator, int denominator) {
    int n_sign, d_sign;
    div_t value;

    n_sign = 1;
    d_sign = 1;
    if (numerator < 0) {
        numerator = -numerator;
        n_sign = -1;
    }
    if (denominator < 0) {
        denominator = -denominator;
        d_sign = -1;
    }
    value.quot = (numerator / denominator) * (n_sign * d_sign);
    value.rem = (numerator * n_sign) - (value.quot * denominator * d_sign);
    return value;
}

int __msl_add(int* a, int b) {
    int val = *a;

    if (b < 0) {
        if (val < 0 && b < (-LONG_MAX - 1) - val) {
            return 0;
        }
    } else if (val > 0 && b > LONG_MAX - val) {
        return 0;
    }

    *a = val + b;
    return 1;
}

int __msl_ladd(long* a, long b) {
    long val = *a;

    if (b < 0) {
        if (val < 0 && b < (-LONG_MAX - 1L) - val) {
            return 0;
        }
    } else if (val > 0 && b > LONG_MAX - val) {
        return 0;
    }

    *a = val + b;
    return 1;
}

int __msl_lmul(long* a, long b) {
    long val = *a;
    int sign = (val < 0) ^ (b < 0) ? -1 : 1;

    if (val < 0) {
        val = -val;
    }
    if (b < 0) {
        b = -b;
    }

    if (val > LONG_MAX / b) {
        return 0;
    }

    *a = val * b * sign;
    return 1;
}

ldiv_t __msl_div(long a, long b) {
    ldiv_t ret;
    long quotient, a_sign, b_sign, sign, remainder;

    a_sign = 1;
    b_sign = 1;
    if (a < 0) {
        a = -a;
        a_sign = -1;
    }
    if (b < 0) {
        b = -b;
        b_sign = -1;
    }
    sign = a_sign * b_sign;
    quotient = (a / b) * sign;
    remainder = a * a_sign - b_sign * (quotient * b);

    if (remainder != 0 && sign < 0) {
        quotient--;
        remainder += b * b_sign;
    }

    ret.quot = quotient;
    ret.rem = remainder;
    return ret;
}

int __msl_mod(int a, int b) {
    int quotient, remainder, a_sign, b_sign, sign;

    a_sign = 1;
    b_sign = 1;

    if (a < 0) {
        a = -a;
        a_sign = -1;
    }
    if (b < 0) {
        b = -b;
        b_sign = -1;
    }

    sign = a_sign * b_sign;
    quotient = (a / b) * sign;
    remainder = (a * a_sign) - (quotient * b * b_sign);

    if (remainder && sign < 0) {
        quotient -= 1;
        remainder += b * b_sign;
    }

    return remainder;
}
