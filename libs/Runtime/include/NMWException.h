#ifndef RUNTIME_NMW_EXCEPTION_H
#define RUNTIME_NMW_EXCEPTION_H

#include <__ppc_eabi_linker.h>

#include <stddef.h>

typedef void (*DtorFunction)(void* obj, short method);

typedef struct DestructorChain DestructorChain;
struct DestructorChain {
    DestructorChain*    next;
    void*               dtor;
    void*               object;
};

#ifdef __cplusplus
extern "C" {
#endif

#define CTORCALL_COMPLETE(ctor, objptr) (((void (*)(void*, int))ctor)(objptr, 1))
#define DTORCALL_COMPLETE(dtor, objptr) (((void (*)(void*, int))dtor)(objptr, -1))

extern DestructorChain* __global_destructor_chain;

void*   __construct_new_array(void* block, void* ctor, void* dtor, size_t size, size_t n);
void    __construct_array(void* ptr, void* ctor, void* dtor, size_t size, size_t n);
void    __destroy_arr(void* block, void** dtor, size_t size, size_t n);

void    __register_global_object(void* object, void* dtor, DestructorChain* chain);
void    __destroy_global_chain();

int     __register_fragment(__eti_init_info* info, char* TOC);
void    __unregister_fragment(int id);

#ifdef __cplusplus
}
#endif

#endif // RUNTIME_NMW_EXCEPTION_H
