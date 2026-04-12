#ifndef REVOLUTION_SSL_H
#define REVOLUTION_SSL_H

#include <revolution/types.h>

typedef int SSLResult;

typedef int SSLSocket;
typedef int SSLId;

#define SSL_RESULT_OK 0 /*?? (guess; I couldn't find any codes for SSL)*/
#define SSL_RESULT_INVALID -1

#define SSL_MAX 8

#define SSL_CLIENT_CERT_LENGTH 4096
#define SSL_ROOT_CA_LENGTH 4096
#define SSL_PRIVATE_KEY_LENGTH 4096

#define SSL_BUFFER_MAX_LENGTH 32768

#define SSL_SERVER_NAME_LENGTH 256

SSLId SSLNew(u32 verifyOption, const char* serverName);
SSLResult SSLConnect(SSLId sslId, SSLSocket socket);

SSLResult SSLShutdown(SSLId sslId);

SSLResult SSLDoHandshake(SSLId sslId);

SSLResult SSLRead(SSLId sslId, char* buf, u32 bufSize);
SSLResult SSLWrite(SSLId sslId, const char* buf, u32 bufSize);

SSLResult SSLSetClientCert(SSLId sslId, const char* clientCertData, u32 clientCertSize, const char* privateKeyData, u32 privateKeySize);
SSLResult SSLSetRootCA(SSLId sslId, const char* rootCAData, u32 rootCASize);

SSLResult SSLSetBuiltinRootCA(SSLId sslId, u32 rootCAId);
SSLResult SSLSetBuiltinClientCert(SSLId sslId, u32 clientCertId);

#endif  // REVOLUTION_SSL_H
