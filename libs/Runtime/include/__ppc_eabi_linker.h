#ifndef PPC_EABI_LINKER_H
#define PPC_EABI_LINKER_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct __rom_copy_info {
    char* rom;
    char* address;
    unsigned int size;
} __rom_copy_info;

typedef struct __bss_init_info {
    char* address;
    unsigned int size;
} __bss_init_info;

typedef struct __eti_init_info {
    void* eti_start;
    void* eti_end;
    void* code_start;
    unsigned long code_size;
} __eti_init_info;

// This is all generated by the linker.

// Da Stack
__declspec(section ".init") extern char _stack_addr[];
__declspec(section ".init") extern char _stack_end[];

// Small data area
__declspec(section ".init") extern char _SDA_BASE_[];
__declspec(section ".init") extern char _SDA2_BASE_[];

// Information for preparing the executable's sections
__declspec(section ".init") extern __rom_copy_info _rom_copy_info[];
__declspec(section ".init") extern __bss_init_info _bss_init_info[];

// Extab init info
__declspec(section ".init") extern __eti_init_info _eti_init_info[];

#ifdef __cplusplus
}
#endif

#endif // PPC_EABI_LINKER_H


