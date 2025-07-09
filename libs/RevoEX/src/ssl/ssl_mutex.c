#include <private/ssl.h>

void SSL_InitMutex(OSMutex* mutex_p) {
    OSInitMutex(mutex_p);
}

void SSL_LockMutex(OSMutex* mutex_p) {
    OSLockMutex(mutex_p);
}

void SSL_UnlockMutex(OSMutex* mutex_p) {
    OSUnlockMutex(mutex_p);
}
