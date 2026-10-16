#ifndef ANSI_FP
#define ANSI_FP

#pragma options align = native

typedef struct decimal {
    char sign;       // 0x00
    char _1;         // 0x01
    short exponent;  // 0x02

    struct {
        unsigned char length;    // 0x04
        unsigned char text[36];  // 0x05
        unsigned char pad;       // 0x29
    } sig;                       // 0x04
} decimal;

typedef struct decform {
    char style;    // 0x00
    char _1;       // 0x01
    short digits;  // 0x02
} decform;

void __num2dec(const decform*, double, decimal*);
double __dec2num(const decimal*);

#pragma options align = reset

#endif  // ANSI_FP