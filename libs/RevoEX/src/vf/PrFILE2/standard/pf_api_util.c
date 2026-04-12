#include <private/vf/PrFILE2/standard/pf_api_util.h>
#include <revolution/vf/types.h>

pf_s32 VFipf_error_to_api_error[] = {VF_ERR_SUCCESS, VF_ERR_EINVAL,  VF_ERR_EINVAL,  VF_ERR_ENOENT, VF_ERR_EBUSY,   VF_ERR_ENOTEMPTY, VF_ERR_ENOSPC,
                                     VF_ERR_ENOEXEC, VF_ERR_EEXIST,  VF_ERR_ENOEXEC, VF_ERR_EINVAL, VF_ERR_EACCES,  VF_ERR_ENOSYS,    VF_ERR_ENOEXEC,
                                     VF_ERR_ENOEXEC, VF_ERR_ENOEXEC, VF_ERR_EACCES,  VF_ERR_EIO,    VF_ERR_ENOEXEC, VF_ERR_EACCES,    VF_ERR_ENOENT,
                                     VF_ERR_ENFILE,  VF_ERR_EMFILE,  VF_ERR_EISDIR,  VF_ERR_EACCES, VF_ERR_EPERM,   VF_ERR_ENOEXEC,   VF_ERR_ENOEXEC,
                                     VF_ERR_ENOEXEC, VF_ERR_ENOEXEC, VF_ERR_ENOMEM,  VF_ERR_EINVAL, VF_ERR_EINVAL,  VF_ERR_ENOEXEC,   VF_ERR_ENOENT,
                                     VF_ERR_ENOEXEC, VF_ERR_ENOEXEC, VF_ERR_EFBIG,   VF_ERR_EBADF,  VF_ERR_ENOLCK};

pf_s32 VFiPFAPI_ParseOpenModeString(const char* mode_str) {
    pf_s32 open_mode = 0;
    pf_u32 i = 0;

    if (mode_str == PF_NULL) {
        open_mode = 10;
        return open_mode;
    }

    switch (mode_str[i++]) {
        case 'r': {
            open_mode = 2;
            break;
        }
        case 'w': {
            open_mode = 1;
            break;
        }
        case 'a': {
            open_mode = 4;
            break;
        }
        default: {
            return 0;
        }
    }

    if (mode_str[i] == 'b') {
        i++;
    }
    switch (mode_str[i++]) {
        case 0: {
            return open_mode;
        }
        case '+': {
            open_mode |= 8;
            break;
        }
        case 't':
        default: {
            return 0;
        }
    }
#ifndef PF_IPL_BUILD
    switch (mode_str[i++]) {
        case 0: {
            return open_mode;
        }
    }
#else
    if (mode_str[i++] == 0) {
        return open_mode;
    }
#endif
    return 0;
}

pf_s32 VFiPFAPI_convertError(pf_s32 err) {
#ifndef PF_IPL_BUILD
    if (err == 0) {
        return VF_ERR_SUCCESS;
    }
    if (err == -1) {
        return VF_ERR_SYSTEM;
    }
#else
    if (err == 0) {
        return err;
    }
    if (err == -1) {
        return err;
    }
#endif
    if (err > 0 && err < 0xA0) {
        return VFipf_error_to_api_error[err];
    }
    if (err == 0x1000) {
        err = VF_ERR_EIO;
        return err;
    }
    return err;
}

pf_s32 VFiPFAPI_convertReturnValue(pf_s32 err) {
    if (err == 0) {
        return 0;
    }
    return -1;
}

void* VFiPFAPI_convertReturnValue2NULL(pf_s32 err, void* p_stream) {
    if (err != 0) {
        return PF_NULL;
    }
    return p_stream;
}

pf_s32 VFiPFAPI_convertReturnValue4unmount(pf_s32 err) {
    if (err == 0) {
        return 0;
    }
    if (err == 1) {
        return 1;
    }
    return -1;
}
