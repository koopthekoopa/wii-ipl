#include <revolution/types.h>

static void (*FatalFunc)();

BOOL __DVDGetAutoFatalMessaging() {
    return FatalFunc ? TRUE : FALSE;
}
