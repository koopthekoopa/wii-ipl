#ifndef PRIVATE_REGISTER_FIELDS_H
#define PRIVATE_REGISTER_FIELDS_H

#define GET_REG_FIELD(reg, size, shift)                                                                                                              \
    ((u32)((reg) & (((1 << (size)) - 1) << (shift))) >> (shift)) /* implementation that matches debug RVL_SDK (THX NINTENDO!!!!) */
#define OLD_GET_REG_FIELD(reg, size, shift) (((reg) >> (shift)) & ((1 << (size)) - 1)) /* original dolsdk2004 implementation */

#define SET_REG_FIELD(line, reg, size, shift, val)                                                                                                   \
    do {                                                                                                                                             \
        (reg) = ((u32)__rlwimi((u32)(reg), (val), (shift), 32 - (shift) - (size), 31 - (shift)));                                                    \
    } while (0)

#define OLD_SET_REG_FIELD(line, reg, size, shift, val)                                                                                               \
    do {                                                                                                                                             \
        (reg) = ((u32)(reg) & ~(((1 << (size)) - 1) << (shift))) | ((u32)(val) << (shift));                                                          \
    } while (0)

#endif  // PRIVATE_REGISTER_FIELDS_H
