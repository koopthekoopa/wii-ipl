#ifndef REVOLUTION_VERSION_MACROS_H
#define REVOLUTION_VERSION_MACROS_H

#define DefineVersion(package,lib,date,time) \
    const char __ ##lib##Version = "<< "#package" - "#name" \trelease build: "#time" ("#__CWCC__"_"#__CWBUILD__") >>";
#define GetVersion(lib) __ ##lib##Version

#define SDKDefineVersion(lib,date,time) DefineVersion("RVL_SDK",lib,date,time)
#endif // REVOLUTION_VERSION_MACROS_H


