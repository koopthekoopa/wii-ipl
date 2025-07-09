#ifndef REVOLUTION_SSL_H
#define REVOLUTION_SSL_H

#include <revolution/types.h>

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

SSLId       SSLNew(u32 i_verifyOption, const char* i_serverName);

SSLResult   SSLConnect(SSLId i_sslId, int i_socket);
SSLResult   SSLDoHandshake(SSLId i_sslId);

SSLResult   SSLRead(SSLId i_sslId, char* o_buf, u32 i_bufSize);
SSLResult   SSLWrite(SSLId i_sslId, const char* i_buf, u32 i_bufSize);

SSLResult   SSLShutdown(SSLId i_sslId);

SSLResult   SSLSetClientCert(SSLId i_sslId, const char* i_clientCertData, u32 i_clientCertSize, const char* i_privateKeyData, u32 i_privateKeySize);
SSLResult   SSLSetRootCA(SSLId i_sslId, const char* i_rootCAData, u32 i_rootCASize);

SSLResult   SSLSetBuiltinRootCA(SSLId i_sslId, u32 i_rootCAId);
SSLResult   SSLSetBuiltinClientCert(SSLId i_sslId, u32 i_clientCertId);

#endif // REVOLUTION_SSL_H
