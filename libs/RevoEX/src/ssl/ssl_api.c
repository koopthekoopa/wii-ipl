#include <private/ssl.h>
#include <revolution/ssl.h>

#include <private/ios.h>

#include <revolution/os.h>
#include <revolution/verdefs.h>

#include <string.h>

#define OPEN_SSL_IOS() IOS_Open("/dev/net/ssl", 0)

enum {
    SSL_IOCTL_NEW = 1,
    SSL_IOCTL_CONNECT,
    SSL_IOCTL_DO_HANDSHAKE,
    SSL_IOCTL_READ,
    SSL_IOCTL_WRITE,
    SSL_IOCTL_SHUTDOWN,
    SSL_IOCTL_SET_CLIENT_CERT,
    SSL_IOCTL_SET_ROOT_CA = 10,
    SSL_IOCTL_SET_BUILTIN_ROOT_CA = 13,
    SSL_IOCTL_SET_BUILTIN_CLIENT_CERT,
};

#define MAX_IOS_VECS 4

SDKDefineVersionEx(SSL, "Jun 21 2007", "13:10:10", 60726);

static BOOL sslRegistered = FALSE;
static s32 l_initialized = 0;

static SSLResult SSL_read(s32 fd, SSLId i_sslId, char* o_buf, u32 i_bufSize);
static SSLResult SSL_write(s32 fd, SSLId i_sslId, const char* i_buf, u32 i_bufSize);
static void SSL_lock();
static void SSL_unlock();
static u32 SSL_strnlen(const char* s, u32 n);

SSLId SSLNew(u32 i_verifyOption, const char* i_serverName) {
    s32 fd = OPEN_SSL_IOS();

    if (!sslRegistered) {
        OSRegisterVersion(__SSLVersion);
        sslRegistered = TRUE;
    }

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        char server_name[SSL_SERVER_NAME_LENGTH];
        u32 name_len = SSL_strnlen(i_serverName, sizeof(server_name));
        SSLId ssl_id[SSL_MAX] ALIGN32;
        u32 verify_option[SSL_MAX] ALIGN32;
        s32 err;

        if (name_len == 0) {
            return SSL_RESULT_INVALID;
        }

        memset(server_name, 0, sizeof(server_name));
        if (name_len > SSL_SERVER_NAME_LENGTH) {
            name_len = SSL_SERVER_NAME_LENGTH;
        }

        memcpy(server_name, i_serverName, name_len);

        ssl_id[0] = SSL_RESULT_INVALID;
        verify_option[0] = i_verifyOption;

        vec[0].base = (void*)ssl_id;
        vec[0].length = sizeof(ssl_id);
        vec[1].base = (void*)verify_option;
        vec[1].length = sizeof(verify_option);
        vec[2].base = (void*)server_name;
        vec[2].length = sizeof(server_name);
        err = IOS_Ioctlv(fd, SSL_IOCTL_NEW, 1, 2, vec);

        IOS_Close(fd);

        return *(int*)vec[0].base;
    }
}

SSLResult SSLConnect(SSLId i_sslId, SSLSocket i_socket) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        SSLSocket socket[SSL_MAX] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        s32 err;

        *ssl_id = i_sslId;
        *socket = i_socket;
        *result = SSL_RESULT_INVALID;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        vec[2].base = (void*)socket;
        vec[2].length = sizeof(socket);
        err = IOS_Ioctlv(fd, SSL_IOCTL_CONNECT, 1, 2, vec);

        IOS_Close(fd);

        return *result;
    }
}

SSLResult SSLDoHandshake(SSLId i_sslId) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        s32 err;

        *ssl_id = i_sslId;
        *result = SSL_RESULT_INVALID;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        err = IOS_Ioctlv(fd, SSL_IOCTL_DO_HANDSHAKE, 1, 1, vec);

        IOS_Close(fd);

        return *result;
    }
}

static char l_cert_data[SSL_CLIENT_CERT_LENGTH] ALIGN32;

SSLResult SSLRead(SSLId i_sslId, char* o_buf, u32 i_bufSize) {
    s32 fd = OPEN_SSL_IOS();
    SSLResult ret = SSL_RESULT_INVALID;

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        u32 bufSize = i_bufSize > SSL_BUFFER_MAX_LENGTH ? SSL_BUFFER_MAX_LENGTH : i_bufSize;
        char tmp[32] ALIGN32;
        u32 align = (u32)o_buf & 31;
        u32 front_bytes = align != 0 ? (32 - align) : 0;
        u32 rest = bufSize;
        int total_read = 0;

        memset(tmp, 0, sizeof(tmp));
        if (front_bytes != 0) {
            if (front_bytes > bufSize) {
                front_bytes = bufSize;
            }
            ret = SSL_read(fd, i_sslId, tmp, front_bytes);
            if (ret > 0) {
                total_read += ret;
                memcpy(o_buf, tmp, ret);
                if (ret < front_bytes) {
                    IOS_Close(fd);
                    return total_read;
                } else {
                    o_buf += ret;
                    rest -= ret;
                }
            } else {
                IOS_Close(fd);
                return ret;
            }
        }

        if (rest != 0) {
            u32 body_bytes = (rest & ~31);
            if (body_bytes != 0) {
                ret = SSL_read(fd, i_sslId, o_buf, body_bytes);
                if (ret > 0) {
                    total_read += ret;
                    if (ret < body_bytes) {
                        IOS_Close(fd);
                        return total_read;
                    } else {
                        o_buf += ret;
                        rest -= ret;
                    }
                } else {
                    IOS_Close(fd);
                    if (total_read > 0) {
                        return total_read;
                    } else {
                        return ret;
                    }
                }
            }
        }
        if (rest != 0) {
            u32 back_bytes = (rest & 31);
            if (back_bytes != 0) {
                memset(tmp, 0, sizeof(tmp));
                ret = SSL_read(fd, i_sslId, tmp, back_bytes);
                if (ret > 0) {
                    total_read += ret;
                    memcpy((s8*)o_buf, tmp, ret);
                } else {
                    IOS_Close(fd);
                    if (total_read > 0) {
                        return total_read;
                    } else {
                        return ret;
                    }
                }
            }
        }

        if (total_read > 0) {
            ret = total_read;
        }
        IOS_Close(fd);
    }
    return ret;
}

SSLResult SSLWrite(SSLId i_sslId, const char* i_buf, u32 i_bufSize) {
    s32 fd;
    SSLResult ret;

    fd = OPEN_SSL_IOS();
    ret = SSL_RESULT_INVALID;
    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        char tmp[32] ALIGN32;
        u32 align;
        u32 front_bytes;
        u32 rest;
        int total_write;

        align = (u32)i_buf & 31;
        front_bytes = align != 0 ? (32 - align) : 0;
        rest = i_bufSize;
        total_write = 0;
        memset(tmp, 0, sizeof(tmp));
        if (front_bytes != 0) {
            if (front_bytes > i_bufSize) {
                front_bytes = i_bufSize;
            }
            memcpy(tmp, i_buf, front_bytes);
            ret = SSL_write(fd, i_sslId, tmp, front_bytes);
            if (ret > 0) {
                total_write += ret;
                if (ret < front_bytes) {
                    IOS_Close(fd);
                    return ret;
                } else {
                    i_buf += ret;
                    rest -= ret;
                }
            } else {
                IOS_Close(fd);
                return ret;
            }
        }
        if (rest != 0) {
            u32 body_bytes = (rest & ~31);
            if (body_bytes != 0) {
                ret = SSL_write(fd, i_sslId, i_buf, body_bytes);
                if (ret > 0) {
                    total_write += ret;
                    if (ret < body_bytes) {
                        IOS_Close(fd);
                        return total_write;
                    } else {
                        i_buf += ret;
                        rest -= ret;
                    }
                } else {
                    IOS_Close(fd);
                    if (total_write > 0) {
                        return total_write;
                    } else {
                        return ret;
                    }
                }
            }
        }
        if (rest != 0) {
            u32 back_bytes = (rest & 31);
            if (back_bytes != 0) {
                memset(tmp, 0, sizeof(tmp));
                memcpy(tmp, i_buf, back_bytes);
                ret = SSL_write(fd, i_sslId, tmp, back_bytes);
                if (ret > 0) {
                    total_write += ret;
                } else {
                    IOS_Close(fd);
                    if (total_write > 0) {
                        return total_write;
                    } else {
                        return ret;
                    }
                }
            }
        }
        if (total_write > 0) {
            ret = total_write;
        }
        IOS_Close(fd);
    }
    return ret;
}

SSLResult SSLShutdown(SSLId i_sslId) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        s32 err;

        *ssl_id = i_sslId;
        *result = SSL_RESULT_INVALID;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);

        err = IOS_Ioctlv(fd, SSL_IOCTL_SHUTDOWN, 1, 1, vec);
        IOS_Close(fd);

        return *result;
    }
}

static char l_private_key_data[SSL_PRIVATE_KEY_LENGTH] ALIGN32;

SSLResult SSLSetClientCert(SSLId i_sslId, const char* i_clientCertData, u32 i_clientCertSize, const char* i_privateKeyData, u32 i_privateKeySize) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        s32 err;

        SSL_lock();

        memcpy(l_cert_data, i_clientCertData, i_clientCertSize);
        memcpy(l_private_key_data, i_privateKeyData, i_privateKeySize);

        *result = SSL_RESULT_INVALID;
        *ssl_id = i_sslId;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        vec[2].base = (void*)l_cert_data;
        vec[2].length = i_clientCertSize;
        vec[3].base = (void*)l_private_key_data;
        vec[3].length = i_privateKeySize;

        err = IOS_Ioctlv(fd, SSL_IOCTL_SET_CLIENT_CERT, 1, 3, vec);

        SSL_unlock();

        IOS_Close(fd);

        return *result;
    }
}

static char l_root_ca[SSL_ROOT_CA_LENGTH] ALIGN32;

SSLResult SSLSetRootCA(SSLId i_sslId, const char* i_rootCAData, u32 i_rootCASize) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        s32 err;

        SSL_lock();

        memcpy(l_root_ca, i_rootCAData, i_rootCASize);

        *result = SSL_RESULT_INVALID;
        *ssl_id = i_sslId;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        vec[2].base = (void*)l_root_ca;
        vec[2].length = i_rootCASize;

        err = IOS_Ioctlv(fd, SSL_IOCTL_SET_ROOT_CA, 1, 2, vec);

        SSL_unlock();

        IOS_Close(fd);

        return *result;
    }
}

SSLResult SSLSetBuiltinRootCA(SSLId i_sslId, u32 i_rootCAId) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        u32 rootCAId[SSL_MAX] ALIGN32;
        s32 err;

        *result = SSL_RESULT_INVALID;
        *ssl_id = i_sslId;
        *rootCAId = i_rootCAId;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        vec[2].base = (void*)rootCAId;
        vec[2].length = sizeof(rootCAId);

        err = IOS_Ioctlv(fd, SSL_IOCTL_SET_BUILTIN_ROOT_CA, 1, 2, vec);
        IOS_Close(fd);

        return *result;
    }
}

SSLResult SSLSetBuiltinClientCert(SSLId i_sslId, u32 i_clientCertId) {
    s32 fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_RESULT_INVALID;
    } else {
        IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
        SSLResult result[SSL_MAX] ALIGN32;
        SSLId ssl_id[SSL_MAX] ALIGN32;
        u32 clientCertId[SSL_MAX] ALIGN32;
        s32 err;

        *result = SSL_RESULT_INVALID;
        *ssl_id = i_sslId;
        *clientCertId = i_clientCertId;

        vec[0].base = (void*)result;
        vec[0].length = sizeof(result);
        vec[1].base = (void*)ssl_id;
        vec[1].length = sizeof(ssl_id);
        vec[2].base = (void*)clientCertId;
        vec[2].length = sizeof(clientCertId);

        err = IOS_Ioctlv(fd, SSL_IOCTL_SET_BUILTIN_CLIENT_CERT, 1, 2, vec);
        IOS_Close(fd);

        return *result;
    }
}

static SSLResult SSL_read(s32 fd, SSLId i_sslId, char* o_buf, u32 i_bufSize) {
    IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
    SSLId ssl_id[SSL_MAX] ALIGN32;
    SSLResult result[SSL_MAX] ALIGN32;
    s32 err;

    *ssl_id = i_sslId;
    *result = SSL_RESULT_INVALID;

    vec[0].base = (void*)result;
    vec[0].length = sizeof(result);
    vec[1].base = (void*)o_buf;
    vec[1].length = i_bufSize;
    vec[2].base = (void*)ssl_id;
    vec[2].length = sizeof(ssl_id);

    err = IOS_Ioctlv(fd, SSL_IOCTL_READ, 2, 1, vec);

    return *result;
}

static SSLResult SSL_write(s32 fd, SSLId i_sslId, const char* i_buf, u32 i_bufSize) {
    IOSIoVector vec[MAX_IOS_VECS] ALIGN32;
    SSLId ssl_id[SSL_MAX] ALIGN32;
    SSLResult result[SSL_MAX] ALIGN32;
    s32 err;

    *ssl_id = i_sslId;
    *result = SSL_RESULT_INVALID;

    vec[0].base = (void*)result;
    vec[0].length = sizeof(result);
    vec[1].base = (void*)ssl_id;
    vec[1].length = sizeof(ssl_id);
    vec[2].base = (void*)i_buf;
    vec[2].length = i_bufSize;

    err = IOS_Ioctlv(fd, SSL_IOCTL_WRITE, 1, 2, vec);

    return *result;
}

static OSMutex l_mutex;

static void SSL_lock() {
    BOOL enabled = OSDisableInterrupts();
    if (!l_initialized) {
        SSL_InitMutex(&l_mutex);
        memset(l_cert_data, 0, SSL_CLIENT_CERT_LENGTH);
        memset(l_private_key_data, 0, SSL_PRIVATE_KEY_LENGTH);
        memset(l_root_ca, 0, SSL_ROOT_CA_LENGTH);
        l_initialized = TRUE;
    }
    OSRestoreInterrupts(enabled);
    SSL_LockMutex(&l_mutex);
}

static void SSL_unlock() {
    SSL_UnlockMutex(&l_mutex);
}

static u32 SSL_strnlen(const char* s, u32 n) {
    int i;
    const char* t;

    for (i = 0, t = s; i < n && *t != 0; i++, t += 1) {
    }
    return t - s;
}
