#include <decomp.h>

#include <__ppc_eabi_linker.h>
#include <__ppc_eabi_init.h>

#include <string.h>

#define EXCEPTION_MASK_ADDR 0x80000044
#define BI2_ADDR            0x800000F4
#define BI2_ARGOFFSET       0x0008
#define ARENAHI_ADDR        0x80000034

#ifdef __cplusplus
extern "C" {
#endif

extern int  main(int argc, char** argv);
extern void exit();

extern void DBInit();

#pragma section code_type ".init"

void __start();

__declspec(weak) asm void __start() {
    nofralloc

    // Init hardware
    bl __init_registers
    bl __init_hardware

    // Set up stack
    li      r0, 0xFFFF
    stwu    r1, -8(r1)
    stw     r0, 4(r1)
    stw     r0, 0(r1)

    // Set up memory
    bl      __init_data

    // Clear exception mask
    li      r0, 0
    lis     r6, EXCEPTION_MASK_ADDR@ha
    addi    r6, r6, EXCEPTION_MASK_ADDR@l
    stw     r0, 0(r6)

    // Parse BI2 args
    lis     r6, BI2_ADDR@ha
    addi    r6, r6, BI2_ADDR@l
    lwz     r5, 0(r6)
    cmplwi  r5, 0
    beq+    bi2_no_args
    
    addi    r6, r5, BI2_ARGOFFSET
    lwz     r6, 0(r6)
    cmplwi  r6, 0
    beq+    bi2_no_args
    add     r6, r5, r6

    lwz     r3, 0(r6)
    cmplwi  r3, 0
    beq     bi2_no_args

    addi    r4, r6, 4

    mtctr   r3

loop:
    addi    r6, r6, 4
    lwz     r7, 0(r6)
    add     r7, r7, r5
    stw     r7, 0(r6)
    bdnz    loop

    lis     r5, ARENAHI_ADDR@ha
    addi    r5, r5, ARENAHI_ADDR@l
    clrrwi  r7, r4, 5
    stw     r7, 0(r5)
    b       bi2_end_arg_parse

bi2_no_args:
    li      r3, 0
    li      r4, 0

bi2_end_arg_parse:
    bl      DBInit
    bl      __init_user

    // Jump to main
    bl      main

    // This halts the CPU
    b       exit
}

static asm void __init_registers() {
    nofralloc
    
    li  r0, 0
    li  r3, 0
    li  r4, 0
    li  r5, 0
    li  r6, 0
    li  r7, 0
    li  r8, 0
    li  r9, 0
    li  r10, 0
    li  r11, 0
    li  r12, 0
    li  r14, 0
    li  r15, 0
    li  r16, 0
    li  r17, 0
    li  r18, 0
    li  r19, 0
    li  r20, 0
    li  r21, 0
    li  r22, 0
    li  r23, 0
    li  r24, 0
    li  r25, 0
    li  r26, 0
    li  r27, 0
    li  r28, 0
    li  r29, 0
    li  r30, 0
    li  r31, 0

    // da stack
    lis r1, _stack_addr@h
    ori r1, r1, _stack_addr@l

    // da small data area
    lis r2, _SDA2_BASE_@h
    ori r2, r2, _SDA2_BASE_@l
    lis r13, _SDA_BASE_@h
    ori r13, r13, _SDA_BASE_@l

    blr
}

static void copy_rom_section(void* dest, void* source, unsigned int size) {
    if (size != 0 && dest != source) {
        memcpy(dest, source, size);
        __flush_cache(dest, size);
    }
}

static void init_bss_section(void* dest, unsigned int size) {
    if (size != 0) {
        memset(dest, 0, size);
    }
}

static void __init_data() {
    __rom_copy_info* rci;
    __bss_init_info* bii;

    // Copy the sections to their correct addresses
    rci = _rom_copy_info;
    while(1) {
        if (rci->size == 0) {
            break;
        }
        copy_rom_section(rci->address, rci->rom, rci->size);
        rci++;
    }

    // Reset BSS sections
    bii = _bss_init_info;
    while(1) {
        if (bii->size == 0) {
            break;
        }
        init_bss_section(bii->address, bii->size);
        bii++;
    }
}


