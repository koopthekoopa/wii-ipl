#include <revolution/nwc24.h>
#include <private/nwc24.h>

const u8 TtableInv[] = { 13, 5, 9, 7, 0, 15, 10, 2, 12, 3, 14, 1, 8, 6, 11, 4 };
const u8 ExcTable[]  = { 1, 5, 0, 4, 2, 3, 6, 7 };

static u8           getbyte(NWC24UserId value, u8 index);
static NWC24UserId  setbyte(NWC24UserId value, u8 index, u8 set);

NWC24UserId         getUnScrambleId(NWC24UserId id);
static int          checkCRC(NWC24UserId id);

static u8 getbyte(NWC24UserId value, u8 index) {
    return (value >> (index * 8)) & 0xFF;
}

static NWC24UserId setbyte(NWC24UserId value, u8 index, u8 set) {
    return (value & ~(((u64)0xFF << (index * 8)))) | (((u64)set << (index * 8)));
}
