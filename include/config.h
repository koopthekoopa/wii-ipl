#ifndef IPL_CONFIG_H
#define IPL_CONFIG_H

/** @brief Enables OSReport for IPL's WWW */
// #define ENABLE_IPL_WWW_REPORT

/**
 * @brief Enables OSReport for BS2
 * @note Macro unused for now.
 */
// #define ENABLE_BS2_REPORT

/** @brief Enables OSReport for DSP */
// #define ENABLE_DSP_REPORT

#define SYSMENU_TITLE_ID    0x0000000100000002

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

#if defined(VERSION_43K)
    #define KOREAN_BUILD
#endif

#endif // IPL_CONFIG_H
