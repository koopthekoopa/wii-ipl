/**
 * I believe they did this due to very tight memory space in the BS2 area
 * (0x81330000 - 0x8137D0000) which is where the Wii Menu is stored.
 * So they have to dummy out unecessary data from the ENC library (including sdata...)
 */

#include <revolution/types.h>

#include "config.h"

// Dummy out Japanese encoding stuff
#ifdef KOREAN_BUILD
BOOL enc_tbl_jp_loaded      = FALSE;

u16* enc_tbl_jp_wctomb      = NULL;
u16* enc_tbl_jp_mbtowc      = NULL;

u16* enc_offset_jp          = NULL;
#endif // KOREAN_BUILD


// Dummy out Chinese encoding stuff
BOOL enc_tbl_cn_loaded      = FALSE;

u16* enc_tbl_cn_wctomb      = NULL;
u16* enc_tbl_cn_mbtowc      = NULL;

u16* enc_offset_cn          = NULL;

u16* enc_tbl_cnex_mbtowc    = NULL;


// Dummy out Korean encoding stuff
#ifndef KOREAN_BUILD
u16* enc_tbl_kr_wctomb1     = NULL;
u16* enc_tbl_kr_mbtowc1     = NULL;

u16* enc_offset_kr1         = NULL;
#endif // KOREAN_BUILD

BOOL enc_tbl_kr_loaded      = FALSE;


// Dummy out more Korean encoding stuff
u16* enc_tbl_kr_wctomb2     = NULL;
u16* enc_tbl_kr_mbtowc2     = NULL;

u16* enc_offset_kr2 = 0;


// Dummy out (yet again) MORE Korean encoding stuff
#ifndef KOREAN_BUILD
BOOL enc_tbl_uhc_loaded     = FALSE;

u16* enc_tbl_uhc_mbtowc     = NULL;

u16* enc_offset_uhc         = NULL;
#endif // KOREAN_BUILD


