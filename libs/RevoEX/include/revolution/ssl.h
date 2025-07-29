#ifndef REVOLUTION_SSL_H
#define REVOLUTION_SSL_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

typedef int SSLResult;

typedef int SSLId;

#define SSL_INVALID_RESULT      -1

#define SSL_ID_INVALID          SSL_INVALID_RESULT

#define SSL_ID_MAX              8
#define SSL_ROOT_CA_ID_MAX      8
#define SSL_CLIENT_CERT_ID_MAX  8

#define SSL_ROOT_CA_LENGTH      4096
#define SSL_PRIVATE_KEY_LENGTH  4096
#define SSL_CLIENT_CERT_LENGTH  4096

#define SSL_BUFFER_MAX_LENGTH   32768

#define SSL_SERVER_NAME_LENGTH  256

SSLId       SSLNew(u32 verifyOption, const char* serverName);

SSLResult   SSLConnect(SSLId sslId, int socket);
SSLResult   SSLDoHandshake(SSLId sslId);

SSLResult   SSLRead(SSLId sslId, char* buf, u32 bufSize);
SSLResult   SSLWrite(SSLId sslId, const char* buf, u32 bufSize);

SSLResult   SSLShutdown(SSLId sslId);

SSLResult   SSLSetClientCert(SSLId sslId, const char* clientCertData, u32 clientCertSize, const char* privateKeyData, u32 privateKeySize);
SSLResult   SSLSetRootCA(SSLId sslId, const char* rootCAData, u32 rootCASize);

SSLResult   SSLSetBuiltinRootCA(SSLId sslId, u32 rootCAId);
SSLResult   SSLSetBuiltinClientCert(SSLId sslId, u32 clientCertId);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_SSL_H
