#ifndef RUNTIME_NMWEXCEPTION_H
#define RUNTIME_NMWEXCEPTION_H

#include <__ppc_eabi_linker.h>

typedef void (*DtorFunction)(void* obj, short method);

typedef struct DtorChain {
    struct DtorChain* next;
    void* dtor;
    void* object;
} DtorChain;

#ifdef __cplusplus
extern "C" {
#endif

extern DtorChain* __global_destructor_chain;
void __register_global_object(void* object, void* dtor, DtorChain* chain);
void __destroy_global_chain();

int __register_fragment(__eti_init_info* info, char* reg);
void __unregister_fragment(int id);

#ifdef __cplusplus
}
#endif

#endif // RUNTIME_NMWEXCEPTION_H


