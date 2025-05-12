#include <private/db.h>
#include <private/os.h>

#include <stdarg.h>

#include <config.h>

BOOL            DBVerbose;
DBInterface*    __DBInterface;

void DBInit() {
    __DBInterface = OSPhysicalToCached(OS_ADDR_DB_INTERFACE);
    __DBInterface->ExceptionDestination = (void*)OSCachedToPhysical(__DBExceptionDestination);
    DBVerbose = TRUE;
}

void __DBExceptionDestinationAux() {
    u32* contextAddr = (void*)OS_ADDR_CURRENT_CONTEXT_REAL;
    OSContext* context = OSPhysicalToCached(*contextAddr);

    OSReport("DBExceptionDestination\n");
    OSDumpContext(context);

    PPCHalt();
}

asm void __DBExceptionDestination() {
#ifdef __MWERKS__
    nofralloc
    
    // Set up MMU
    mfmsr r3
    ori r3, r3, (MSR_IR | MSR_DR)
    mtmsr r3

    b __DBExceptionDestinationAux
#endif // __MWERKS__
}

BOOL __DBIsExceptionMarked(__OSException exception) {
    u32 mask = (1 << exception);
    return __DBInterface->exceptionMask & mask;
}

// Stubbed for release
void DBPrintf(const char* format, ...) {
#ifdef ENABLE_DB_REPORT
    va_list list;
    va_start(list, format);
    OSVReport(format, list);
    va_end(list);
#endif
}
