#ifndef REVOLUTION_VERSION_MACROS_H
#define REVOLUTION_VERSION_MACROS_H

// weird hack to stop compile errors
#define STRDEF(x)   VALDEF(x)
#define VALDEF(x)   #x

#if defined(DEBUG)
#define BUILD_TYPE  " \tdebug build: "
#elif defined(NDEBUG)
#define BUILD_TYPE  " \trelease build: "
#else
#define BUILD_TYPE  " \tunknown build: "
#endif // DEBUG

#if defined(NON_MATCHING)
#define DefineVersion(package, lib, date, time) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib) BUILD_TYPE __DATE__" "__TIME__" ("STRDEF(__CWCC__)"_"STRDEF(__CWBUILD__)") >>"
#define DefineVersionEx(package, lib, date, time, cwbuild) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib) BUILD_TYPE __DATE__" "__TIME__" ("STRDEF(__CWCC__)"_"STRDEF(cwbuild)") >>"
#else
#define DefineVersion(package, lib, date, time) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib) BUILD_TYPE date" "time" ("STRDEF(__CWCC__)"_"STRDEF(__CWBUILD__)") >>"
#define DefineVersionEx(package, lib, date, time, cwbuild) \
    const char* __##lib##Version = "<< "STRDEF(package)" - "STRDEF(lib) BUILD_TYPE date" "time" ("STRDEF(__CWCC__)"_"STRDEF(cwbuild)") >>"
#endif
#define GetVersion(lib) __##lib##Version

#define SDKDefineVersion(lib, date, time) DefineVersion(RVL_SDK, lib, date, time)
#define SDKDefineVersionEx(lib, date, time, cwbuild) DefineVersionEx(RVL_SDK, lib, date, time, cwbuild)

#endif // REVOLUTION_VERSION_MACROS_H
