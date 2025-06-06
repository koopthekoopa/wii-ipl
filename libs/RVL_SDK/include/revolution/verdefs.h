#ifndef REVOLUTION_VERSION_MACROS_H
#define REVOLUTION_VERSION_MACROS_H

// weird hack to stop compile errors
#define STRDEF(x)   VALDEF(x)
#define VALDEF(x)   #x

#if defined(NON_MATCHING)
#define DefineVersion(package, lib, date, time) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib)" \trelease build: "__DATE__" "__TIME__" ("STRDEF(__CWCC__)"_"STRDEF(__CWBUILD__)") >>"
#else
#define DefineVersion(package, lib, date, time) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib)" \trelease build: "date" "time" ("STRDEF(__CWCC__)"_"STRDEF(__CWBUILD__)") >>"
#endif
#define GetVersion(lib) __##lib##Version

#define SDKDefineVersion(lib, date, time) DefineVersion(RVL_SDK, lib, date, time)

#endif // REVOLUTION_VERSION_MACROS_H


