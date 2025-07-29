#include <revolution/ssl.h>
#include <private/ssl.h>

#include <private/ipc.h>
#include <private/ios.h>

#include <revolution/verdefs.h>
#include <revolution/os.h>

#include <string.h>

#define MAX_VECTOR_ARGS 4
#define OPEN_SSL_IOS()  IOS_Open("/dev/net/ssl", 0)

enum {
    SSL_IOCTVL_NEW = 1,
    SSL_IOCTVL_CONNECT,
    SSL_IOCTVL_DO_HANDSHAKE,
    SSL_IOCTVL_READ,
    SSL_IOCTVL_WRITE,
    SSL_IOCTVL_SHUTDOWN,
    SSL_IOCTVL_SET_CLIENT_CERT,
    SSL_IOCTVL_SET_ROOT_CA = 10,
    SSL_IOCTVL_SET_BUILT_IN_ROOT_CA = 13,
    SSL_IOCTVL_SET_BUILT_IN_CLIENT_CERT,
};

SDKDefineVersionEx(SSL, "Jun 21 2007", "13:10:10", 60726);

static BOOL     sslRegistered = FALSE;
static s32      l_initialized = FALSE;

static OSMutex  l_mutex;

static char     l_cert_data[SSL_ROOT_CA_LENGTH] ALIGN32;
static char     l_private_key_data[SSL_PRIVATE_KEY_LENGTH] ALIGN32;
static char     l_root_ca[SSL_CLIENT_CERT_LENGTH] ALIGN32;

static u32  SSL_strnlen(const char* s, u32 maxlen);

static int  SSL_read(s32 fd, SSLId i_sslId, char* o_buf, u32 i_bufSize);
static int  SSL_write(s32 fd, SSLId i_sslId, const char* i_buf, u32 i_bufSize);

static void SSL_lock();
static void SSL_unlock();

SSLId SSLNew(u32 i_verifyOption, const char* i_serverName) {
    s32 fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    char        server_name[SSL_SERVER_NAME_LENGTH];
    u32         name_len;
    SSLId       ssl_id[SSL_ID_MAX];
    u32         verify_option[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();

    if (sslRegistered == FALSE) {
        OSRegisterVersion(GetVersion(SSL));
        sslRegistered = TRUE;
    }

    if (fd < 0) {
        return SSL_ID_INVALID;
    }
    
    name_len = SSL_strnlen(i_serverName, SSL_SERVER_NAME_LENGTH);

    if (name_len == 0) {
        return SSL_ID_INVALID;
    }

    memset(server_name, 0, SSL_SERVER_NAME_LENGTH);

    if (name_len > SSL_SERVER_NAME_LENGTH) {
        name_len = SSL_SERVER_NAME_LENGTH;
    }

    memcpy(server_name, i_serverName, name_len);

    ssl_id[0] = SSL_ID_INVALID;
    verify_option[0] = i_verifyOption;

    vec[0].base = (u8*)ssl_id;
    vec[0].length = sizeof(ssl_id);

    vec[1].base = (u8*)verify_option;
    vec[1].length = sizeof(verify_option);

    vec[2].base = (u8*)server_name;
    vec[2].length = SSL_SERVER_NAME_LENGTH;

    err = IOS_Ioctlv(fd, SSL_IOCTVL_NEW, 1, 2, vec);
    IOS_Close(fd);

    return *(int*)vec[0].base;
}

int SSLConnect(SSLId i_sslId, int i_socket) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLId       ssl_id[SSL_ID_MAX];
    int         socket[SSL_ID_MAX];
    int         result[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();

    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    ssl_id[0] = i_sslId;
    socket[0] = i_socket;
    result[0] = SSL_INVALID_RESULT;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)socket;
    vec[2].length = sizeof(socket);

    err = IOS_Ioctlv(fd, SSL_IOCTVL_CONNECT, 1, 2, vec);
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLDoHandshake(SSLId i_sslId) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLId       ssl_id[SSL_ID_MAX];
    int         result[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    ssl_id[0] = i_sslId;
    result[0] = SSL_INVALID_RESULT;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    err = IOS_Ioctlv(fd, SSL_IOCTVL_DO_HANDSHAKE, 1, 1, vec);
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLRead(SSLId i_sslId, char* o_buf, u32 i_bufSize) {
    s32     fd;
    int     ret;

    u32     bufSize;
    char    tmp[32] ALIGN32;
    u32     align;
    u32     front_bytes;
    u32     rest;
    int     total_read;

    u32     body_bytes;
    u32     back_bytes;

    fd = OPEN_SSL_IOS();

    ret = SSL_INVALID_RESULT;

    if (fd < 0) {
        return ret;
    }

    if (i_bufSize > SSL_BUFFER_MAX_LENGTH) {
        bufSize = SSL_BUFFER_MAX_LENGTH;
    }
    else {
        bufSize = i_bufSize;
    }

    align = (u32)o_buf & (DEFAULT_ALIGN-1);
    if (align != 0) {
        front_bytes = DEFAULT_ALIGN - align;
    }
    else {
        front_bytes = 0;
    }

    rest = bufSize;
    total_read = 0;

    memset(tmp, 0, sizeof(tmp));

    if (front_bytes != 0) {
        if (front_bytes > bufSize) {
            front_bytes = bufSize;
        }
        ret = SSL_read(fd, i_sslId, tmp, front_bytes);

        if (ret > 0) {
            total_read = ret;
            memcpy(o_buf, tmp, ret);
            if (ret < front_bytes) {
                IOS_Close(fd);
                return total_read;
            }
            else {
                o_buf += ret;
                rest -= ret;
            }
        }
        else {
            IOS_Close(fd);
            return ret;
        }
    }

    if (rest != 0) {
        body_bytes = rest & ~(DEFAULT_ALIGN-1);
        if (body_bytes != 0) {
            ret = SSL_read(fd, i_sslId, o_buf, body_bytes);
            if (ret > 0) {
                total_read += ret;
                if (ret < body_bytes) {
                    IOS_Close(fd);
                    return total_read;
                }
                else {
                    o_buf += ret;
                    rest -= ret;
                }
            }
            else {
                IOS_Close(fd);
                if (total_read > 0) {
                    return total_read;
                }
                else {
                    return ret;
                }
            }
        }
    }

    if (rest != 0) {
        back_bytes = rest & (DEFAULT_ALIGN-1);
        if (back_bytes != 0) {
            memset(tmp, 0, sizeof(tmp));

            ret = SSL_read(fd, i_sslId, tmp, back_bytes);

            if (ret > 0) {
                total_read += ret;
                memcpy(o_buf, tmp, ret);
            }
            else {
                IOS_Close(fd);
                if (total_read > 0) {
                    return total_read;
                }
                else {
                    return ret;
                }
            }
        }
    }

    if (total_read > 0) {
        ret = total_read;
    }

    IOS_Close(fd);
    return ret;
}

SSLResult SSLWrite(SSLId i_sslId, const char* i_buf, u32 i_bufSize) {
    s32     fd;
    int     ret;

    char    tmp[32] ALIGN32;
    u32     align;
    u32     front_bytes;
    u32     rest;
    int     total_write;

    u32     body_bytes;
    u32     back_bytes;

    fd = OPEN_SSL_IOS();

    ret = SSL_INVALID_RESULT;

    if (fd < 0) {
        return ret;
    }

    align = (u32)i_buf & (DEFAULT_ALIGN-1);
    if (align != 0) {
        front_bytes = DEFAULT_ALIGN - align;
    }
    else {
        front_bytes = 0;
    }

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
            total_write = ret;
            if (ret < front_bytes) {
                IOS_Close(fd);
                return ret;
            }
            else {
                i_buf += ret;
                rest -= ret;
            }
        }
        else {
            IOS_Close(fd);
            return ret;
        }
    }

    if (rest != 0) {
        body_bytes = rest & ~(DEFAULT_ALIGN-1);
        if (body_bytes != 0) {
            ret = SSL_write(fd, i_sslId, i_buf, body_bytes);
            if (ret > 0) {
                total_write += ret;
                if (ret < body_bytes) {
                    IOS_Close(fd);
                    return total_write;
                }
                else {
                    i_buf += ret;
                    rest -= ret;
                }
            }
            else {
                IOS_Close(fd);
                if (total_write > 0) {
                    return total_write;
                }
                else {
                    return ret;
                }
            }
        }
    }

    if (rest != 0) {
        back_bytes = rest & (DEFAULT_ALIGN-1);
        if (back_bytes != 0) {
            memset(tmp, 0, sizeof(tmp));
            memcpy(tmp, i_buf, back_bytes);

            ret = SSL_write(fd, i_sslId, tmp, back_bytes);

            if (ret > 0) {
                total_write += ret;
            }
            else {
                IOS_Close(fd);
                if (total_write > 0) {
                    return total_write;
                }
                else {
                    return ret;
                }
            }
        }
    }

    if (total_write > 0) {
        ret = total_write;
    }

    IOS_Close(fd);
    return ret;
}

SSLResult SSLShutdown(SSLId i_sslId) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLId       ssl_id[SSL_ID_MAX];
    int         result[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    ssl_id[0] = i_sslId;
    result[0] = SSL_INVALID_RESULT;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    err = IOS_Ioctlv(fd, SSL_IOCTVL_SHUTDOWN, 1, 1, vec);
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLSetClientCert(SSLId i_sslId, const char* i_clientCertData, u32 i_clientCertSize, const char* i_privateKeyData, u32 i_privateKeySize) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLResult   result[SSL_ID_MAX];
    SSLId       ssl_id[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    SSL_lock();

    memcpy(l_cert_data, i_clientCertData, i_clientCertSize);
    memcpy(l_private_key_data, i_privateKeyData, i_privateKeySize);

    result[0] = SSL_INVALID_RESULT;
    ssl_id[0] = i_sslId;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)l_cert_data;
    vec[2].length = i_clientCertSize;

    vec[3].base = (u8*)l_private_key_data;
    vec[3].length = i_privateKeySize;

    err = IOS_Ioctlv(fd, SSL_IOCTVL_SET_CLIENT_CERT, 1, 3, vec);
    SSL_unlock();
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLSetRootCA(SSLId i_sslId, const char* i_rootCAData, u32 i_rootCASize) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLResult   result[SSL_ID_MAX];
    SSLId       ssl_id[SSL_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    SSL_lock();

    memcpy(l_root_ca, i_rootCAData, i_rootCASize);

    result[0] = SSL_INVALID_RESULT;
    ssl_id[0] = i_sslId;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)l_root_ca;
    vec[2].length = i_rootCASize;

    err = IOS_Ioctlv(fd, SSL_IOCTVL_SET_ROOT_CA, 1, 2, vec);
    SSL_unlock();
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLSetBuiltinRootCA(SSLId i_sslId, u32 i_rootCAId) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    int         result[SSL_ID_MAX];
    int         ssl_id[SSL_ID_MAX];
    u32         rootCAId[SSL_ROOT_CA_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    result[0] = SSL_INVALID_RESULT;
    ssl_id[0] = i_sslId;
    rootCAId[0] = i_rootCAId;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)rootCAId;
    vec[2].length = sizeof(rootCAId);

    err = IOS_Ioctlv(fd, SSL_IOCTVL_SET_BUILT_IN_ROOT_CA, 1, 2, vec);
    IOS_Close(fd);

    return result[0];
}

SSLResult SSLSetBuiltinClientCert(SSLId i_sslId, u32 i_clientCertId) {
    s32         fd;
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    int         result[SSL_ID_MAX];
    int         ssl_id[SSL_ID_MAX];
    u32         clientCertId[SSL_CLIENT_CERT_ID_MAX];

    s32         err;

    fd = OPEN_SSL_IOS();
    if (fd < 0) {
        return SSL_INVALID_RESULT;
    }

    result[0] = SSL_INVALID_RESULT;
    ssl_id[0] = i_sslId;
    clientCertId[0] = i_clientCertId;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)clientCertId;
    vec[2].length = sizeof(clientCertId);

    err = IOS_Ioctlv(fd, SSL_IOCTVL_SET_BUILT_IN_CLIENT_CERT, 1, 2, vec);
    IOS_Close(fd);

    return result[0];
}

static int SSL_read(s32 fd, SSLId i_sslId, char* o_buf, u32 i_bufSize) {
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLId       ssl_id[SSL_ID_MAX];
    SSLResult   result[SSL_ID_MAX];

    s32         err;

    ssl_id[0] = i_sslId;
    result[0] = SSL_INVALID_RESULT;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)o_buf;
    vec[1].length = i_bufSize;

    vec[2].base = (u8*)ssl_id;
    vec[2].length = sizeof(ssl_id);

    IOS_Ioctlv(fd, SSL_IOCTVL_READ, 2, 1, vec);

    return result[0];
}

static int SSL_write(s32 fd, SSLId i_sslId, const char* i_buf, u32 i_bufSize) {
    IOSIoVector vec[MAX_VECTOR_ARGS] ALIGN32;

    SSLId       ssl_id[SSL_ID_MAX];
    SSLResult   result[SSL_ID_MAX];

    s32         err;

    ssl_id[0] = i_sslId;
    result[0] = SSL_INVALID_RESULT;

    vec[0].base = (u8*)result;
    vec[0].length = sizeof(result);

    vec[1].base = (u8*)ssl_id;
    vec[1].length = sizeof(ssl_id);

    vec[2].base = (u8*)i_buf;
    vec[2].length = i_bufSize;

    IOS_Ioctlv(fd, SSL_IOCTVL_WRITE, 1, 2, vec);

    return result[0];
}

static void SSL_lock() {
    BOOL enabled = OSDisableInterrupts();

    if (!l_initialized) {
        SSL_InitMutex(&l_mutex);

        memset(l_cert_data, 0, sizeof(l_cert_data));
        memset(l_private_key_data, 0, sizeof(l_private_key_data));
        memset(l_root_ca, 0, sizeof(l_root_ca));

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
    for (i = 0, t = s; i < n && *t != 0; i++, t++) {}
    return t-s;
}
