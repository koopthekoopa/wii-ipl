#include <decomp_ide.h>
#include <NMWException.h>

DtorChain* __global_destructor_chain;

/**
 * @note Address: 0x815F8FE0 (4.3U)
 * @note Size 0x18
 */
void __register_global_object(void* object, void* dtor, DtorChain* chain) {
    chain->next = __global_destructor_chain;
    chain->dtor = dtor;
    chain->object = object;
    
    __global_destructor_chain = chain;
}

/**
 * @note Address: 0x815F8FF8 (4.3U)
 * @note Size 0x48
 */
void __destroy_global_chain() {
    DtorChain*  chain;

    while ((chain = __global_destructor_chain) != 0) {
        __global_destructor_chain = chain->next;
        (((void(*)(void*, short))chain->dtor)(chain->object, -1));
    }
}

#pragma section ".dtors$10"
__declspec(section ".dtors$10") __declspec(weak) extern void* const __destroy_global_chain_reference = __destroy_global_chain;


