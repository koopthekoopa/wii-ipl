#ifndef NW4R_UT_RUNTIME_TYPE_INFO_H
#define NW4R_UT_RUNTIME_TYPE_INFO_H

namespace nw4r {
    namespace ut {
        #define NW4R_UT_RUNTIME_TYPEINFO \
            virtual const nw4r::ut::detail::RuntimeTypeInfo*    GetRuntimeTypeInfo() const { return &typeInfo; } \
            static  const nw4r::ut::detail::RuntimeTypeInfo     typeInfo
    
        #define NW4R_UT_RUNTIME_TYPEINFO_DEFINITION(derived,base) \
            const nw4r::ut::detail::RuntimeTypeInfo derived::typeInfo(&base::typeInfo)

        #define NW4R_UT_RUNTIME_TYPEINFO_ROOT_DEFINITION(root) \
            const nw4r::ut::detail::RuntimeTypeInfo root::typeInfo(NULL)

        namespace detail {
            struct RuntimeTypeInfo {
                const RuntimeTypeInfo* mParentTypeInfo;
                explicit RuntimeTypeInfo(const RuntimeTypeInfo *parent) : mParentTypeInfo(parent) {}
            };
        };
    }
}

#endif // NW4R_UT_RUNTIME_TYPE_INFO_H


