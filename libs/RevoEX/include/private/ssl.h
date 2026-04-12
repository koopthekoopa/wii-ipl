#ifndef PRIVATE_SSL_H
#define PRIVATE_SSL_H

#include <revolution/os/OSMutex.h>

void SSL_InitMutex(OSMutex* mutex);
void SSL_LockMutex(OSMutex* mutex);
void SSL_UnlockMutex(OSMutex* mutex);

#endif  // PRIVATE_SSL_H
