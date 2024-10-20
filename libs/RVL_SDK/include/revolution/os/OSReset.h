#ifndef REVOLUTION_OS_RESET_H
#define REVOLUTION_OS_RESET_H

#ifdef __cplusplus
extern "C" {
#endif

typedef BOOL (*OSShutdownFunction)(BOOL, u32);

typedef struct OSShutdownFunctionInfo OSShutdownFunctionInfo;

struct OSShutdownFunctionInfo {
    OSShutdownFunction func;        // 0x00
    
    u32 priority;                   // 0x04
    
    OSShutdownFunctionInfo* next;   // 0x08
    OSShutdownFunctionInfo* prev;   // 0x0C
};

typedef struct OSShutdownFunctionQueue {
    OSShutdownFunctionInfo* head;   // 0x00
    OSShutdownFunctionInfo* tail;   // 0x04
} OSShutdownFunctionQueue;

void    OSRegisterShutdownFunction(OSShutdownFunctionInfo* info);
void    OSUnregisterShutdownFunction(OSShutdownFunctionInfo* info);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_RESET_H


