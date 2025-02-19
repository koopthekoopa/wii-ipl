#ifndef PPC_EABI_INIT_H
#define PPC_EABI_INIT_H

#include <decomp.h>

#ifdef __cplusplus
extern "C" {
#endif

__declspec(section ".init") extern void __init_registers();
__declspec(section ".init") extern void __init_data();

__declspec(section ".init") extern void __init_hardware();
__declspec(section ".init") extern void __flush_cache(void* pAddress, unsigned int size);

extern void __init_user();

#ifdef __cplusplus
}
#endif

#endif // PPC_EABI_INIT_H
