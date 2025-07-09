#ifndef PRIVATE_SSL_H
#define PRIVATE_SSL_H

#include <revolution/os/OSMutex.h>

void SSL_InitMutex(OSMutex* mutex_p);

void SSL_LockMutex(OSMutex* mutex_p);
void SSL_UnlockMutex(OSMutex* mutex_p);

#endif // PRIVATE_SSL_H
