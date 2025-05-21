#include <decomp.h>
#include <NMWException.h>

DestructorChain*    __global_destructor_chain;

void __register_global_object(void* object, void* dtor, DestructorChain* chain) {
    chain->next = __global_destructor_chain;
    chain->dtor = dtor;
    chain->object = object;
    
    __global_destructor_chain = chain;
}

void __destroy_global_chain() {
    DestructorChain*   chain;

    while ((chain = __global_destructor_chain) != 0) {
        __global_destructor_chain = chain->next;
        DTORCALL_COMPLETE(chain->dtor, chain->object);
    }
}

#pragma section ".dtors$10"
__declspec(section ".dtors$10") __declspec(weak) extern void* const __destroy_global_chain_reference = __destroy_global_chain;
