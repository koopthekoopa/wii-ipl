#ifndef REVOLUTION_OS_EXCEPTION_H
#define REVOLUTION_OS_EXCEPTION_H

#include <revolution/types.h>
#include <revolution/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

#define OS_EXCEPTION_SYSTEM_RESET         0
#define OS_EXCEPTION_MACHINE_CHECK        1
#define OS_EXCEPTION_DSI                  2
#define OS_EXCEPTION_ISI                  3
#define OS_EXCEPTION_EXTERNAL_INTERRUPT   4
#define OS_EXCEPTION_ALIGNMENT            5
#define OS_EXCEPTION_PROGRAM              6
#define OS_EXCEPTION_FLOATING_POINT       7
#define OS_EXCEPTION_DECREMENTER          8
#define OS_EXCEPTION_SYSTEM_CALL          9
#define OS_EXCEPTION_TRACE                10
#define OS_EXCEPTION_PERFORMACE_MONITOR   11
#define OS_EXCEPTION_BREAKPOINT           12
#define OS_EXCEPTION_SYSTEM_INTERRUPT     13
#define OS_EXCEPTION_THERMAL_INTERRUPT    14
#define OS_EXCEPTION_MAX                  (OS_EXCEPTION_THERMAL_INTERRUPT + 1)

typedef u8 __OSException;
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext* context);

__OSExceptionHandler    __OSGetExceptionHandler(__OSException type);
__OSExceptionHandler    __OSSetExceptionHandler(__OSException type, __OSExceptionHandler handler);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_EXCEPTION_H


