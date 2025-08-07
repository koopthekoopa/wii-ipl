#ifndef GLOBAL_HEADERS_CONFIG_H
#define GLOBAL_HEADERS_CONFIG_H

/* Small configuration macros */


/*** IPL CONFIGURATION ***/


#define SYSMENU_TITLE_ID    0x0000000100000002
#define SYSMENU_CONTENT_ID  0x00000001/*.app*/

#define SYSMENU_BUILD_TYPE      "FINAL"

#if defined(VERSION_43U)
#define SYSMENU_BUILD_VERSION   "US2"
#elif defined(VERSION_43E)
#define SYSMENU_BUILD_VERSION   "EU2"
#elif defined(VERSION_43J)
#define SYSMENU_BUILD_VERSION   "JP2"
#elif defined(VERSION_43K)
#define SYSMENU_BUILD_VERSION   "KR2"
#endif

/**
 * @brief Enables OSReport for BS2
 * @note Macro unused for now.
 */
// #define ENABLE_BS2_REPORT

/** @brief IRD Mode (recovery mode) will boot up any Wii/GC game. */
// #define IRD_DIAG_RESTRICT_OFF

/** @brief Korean Common Key on non -Korean Wiis will not cause Error 003. */
// #define TURN_OFF_CK2_VERIFY

/** @brief Enables OSReport for IPL's WWW (untested) */
// #define ENABLE_IPL_WWW_REPORT

/** @brief Load IPL content by loading the System Menu TMD manually. */
// #define STAND_ALONE_BUILD

/** @brief ErrorHandler will also log NANDLogging to OSReport. */
// #define NAND_LOG_TO_OSREPORT

/** @brief NCDDebugPrint in PostmanManager will print NCDConfig (assuming its what it originally did) */
// #define USE_POSTMAN_NCD_DEBUG_PRINT


/*** SDK CONFIGURATION ***/


/** @brief Enables OSReport for DSP */
// #define ENABLE_DSP_REPORT

/** @brief Enables OSReport for debug logs from SDK */
// #define ENABLE_DB_REPORT


/* Build options (set by the version being used) */


#if defined(VERSION_43U) || defined(VERSION_43E) || defined(VERSION_43J)
    #define USE_DICTIONARY
#endif

#if defined(VERSION_43U) || defined(VERSION_43E)
    #define USE_ZI8
#endif

#if defined(VERSION_43J)
    #define USE_ATOK
#endif


/* Build types */


#if defined(VERSION_43U) || defined(VERSION_43E)
    #define ENGLISH_BUILD
#endif

#if defined(VERSION_43J)
    #define JAPANESE_BUILD
#endif

#if defined(VERSION_43K)
    #define KOREAN_BUILD
#endif

#endif // GLOBAL_HEADERS_CONFIG_H
