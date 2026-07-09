#ifndef EGG_PRIM_BIT_FLAG_H
#define EGG_PRIM_BIT_FLAG_H

#include <revolution/types.h>

namespace EGG {
    template <typename T>
    struct is_flag_type {
        static const bool value = false;
    };

    template <>
    struct is_flag_type<u8> {
        static const bool value = true;
    };
    template <>
    struct is_flag_type<u16> {
        static const bool value = true;
    };
    template <>
    struct is_flag_type<u32> {
        static const bool value = true;
    };
    template <>
    struct is_flag_type<u64> {
        static const bool value = true;
    };

    template <bool>
    struct flag_type_chk;
    template <>
    struct flag_type_chk<true> {};

    template <typename T>
    class TBitFlag {
    public:
        TBitFlag() { makeAllZero(); }

        TBitFlag(T value) : mValue(value) {}

        operator T() const { return mValue; }

        void makeAllZero() { mValue = static_cast<T>(0); }
        bool isZero() const { return mValue == 0; }

        T getDirect() const { return mValue; }
        void setDirect(T value) { mValue = value; }

        /******************************************************************************
         * Bit mask operations
         ******************************************************************************/
        void set(T mask) { mValue |= mask; }
        void reset(T mask) { mValue &= ~mask; }

        void change(T mask, bool on) {
            if (on) {
                set(mask);
            } else {
                reset(mask);
            }
        }

        bool on(T mask) const { return mValue & mask; }
        bool off(T mask) const { return !on(mask); }

        /******************************************************************************
         * Bit index operations
         ******************************************************************************/
        void setBit(u8 bit) { set(makeMask(bit)); }
        void resetBit(u8 bit) { reset(makeMask(bit)); }

        void changeBit(u8 bit, bool on) { change(makeMask(bit), on); }
        void toggleBit(u8 bit) { changeBit(bit, !onBit(bit)); }

        bool onBit(u8 bit) const { return on(makeMask(bit)); }
        bool offBit(u8 bit) const { return off(makeMask(bit)); }

    private:
        T makeMask(u8 bit) const { return 1 << bit; }

    private:
        union {
            T mValue;  // 0x00
            flag_type_chk<is_flag_type<T>::value> _;
        };
    };
}  // namespace EGG

#endif
