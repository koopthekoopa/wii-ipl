#ifndef IPL_TITLE_ID_DATABASE
#define IPL_TITLE_ID_DATABASE

#include <private/es/types.h>

#define TITLE_TYPE_SYSTEM           0x00000001
#define TITLE_TYPE_DISC             0x00010000
#define TITLE_TYPE_CHANNEL          0x00010001
#define TITLE_TYPE_SYSTEM_CHANNEL   0x00010002
#define TITLE_TYPE_UNK3             0x00010003
#define TITLE_TYPE_DISC_CHANNEL     0x00010004
#define TITLE_TYPE_DLC              0x00010005
#define TITLE_TYPE_UNK6             0x00010006
#define TITLE_TYPE_UNK7             0x00010007
#define TITLE_TYPE_HIDDEN_CHANNEL   0x00010008

#define TITLE_REGION_ALL            'A'
#define TITLE_REGION_JPN            'J'
#define TITLE_REGION_USA            'E'
#define TITLE_REGION_EUR            'P'
#define TITLE_REGION_KOR            'K'

#define TITLE_NULL                  ((ESTitleId)0x0000000000000000)

/* Photo Channel 1.0 */
#define TITLE_PHOTO                 ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAA\0')
#define TITLE_PHOTO_ALL             ((ESTitleId)(TITLE_PHOTO | TITLE_REGION_ALL))
#define TITLE_PHOTO_KOR             ((ESTitleId)(TITLE_PHOTO | TITLE_REGION_KOR))

/* Wii Shop Channel */
#define TITLE_SHOPPING              ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAB\0')
#define TITLE_SHOPPING_ALL          ((ESTitleId)(TITLE_SHOPPING | TITLE_REGION_ALL))
#define TITLE_SHOPPING_KOR          ((ESTitleId)(TITLE_SHOPPING | TITLE_REGION_KOR))

/* Mii Channel */
#define TITLE_NIGAOE                ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAC\0')
#define TITLE_NIGAOE_ALL            ((ESTitleId)(TITLE_NIGAOE | TITLE_REGION_ALL))
#define TITLE_NIGAOE_KOR            ((ESTitleId)(TITLE_NIGAOE | TITLE_REGION_KOR))

/* Internet Channel */
#define TITLE_OPERA                 ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAD\0')
#define TITLE_OPERA_ALL             ((ESTitleId)(TITLE_OPERA | TITLE_REGION_ALL))

/* Wii Message Board (Dummy) */
#define TITLE_BOARD                 ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAE\0')
#define TITLE_BOARD_ALL             ((ESTitleId)(TITLE_BOARD | TITLE_REGION_ALL))

/* Forecast Channel */
#define TITLE_WEATHER               ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAF\0')
#define TITLE_WEATHER_ALL           ((ESTitleId)(TITLE_WEATHER | TITLE_REGION_ALL))
#define TITLE_WEATHER_JPN           ((ESTitleId)(TITLE_WEATHER | TITLE_REGION_JPN))
#define TITLE_WEATHER_USA           ((ESTitleId)(TITLE_WEATHER | TITLE_REGION_USA))
#define TITLE_WEATHER_EUR           ((ESTitleId)(TITLE_WEATHER | TITLE_REGION_EUR))
#define TITLE_WEATHER_KOR           ((ESTitleId)(TITLE_WEATHER | TITLE_REGION_KOR))

/* News Channel */
#define TITLE_NEWS                  ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAG\0')
#define TITLE_NEWS_ALL              ((ESTitleId)(TITLE_NEWS | TITLE_REGION_ALL))
#define TITLE_NEWS_JPN              ((ESTitleId)(TITLE_NEWS | TITLE_REGION_JPN))
#define TITLE_NEWS_USA              ((ESTitleId)(TITLE_NEWS | TITLE_REGION_USA))
#define TITLE_NEWS_EUR              ((ESTitleId)(TITLE_NEWS | TITLE_REGION_EUR))
#define TITLE_NEWS_KOR              ((ESTitleId)(TITLE_NEWS | TITLE_REGION_KOR))

/* TV Remote Control (Unreleased) */
#define TITLE_TVRC                  ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAO\0')
#define TITLE_TVRC_ALL              ((ESTitleId)(TITLE_TVRC | TITLE_REGION_ALL))
#define TITLE_TVRC_JPN              ((ESTitleId)(TITLE_TVRC | TITLE_REGION_JPN))
#define TITLE_TVRC_USA              ((ESTitleId)(TITLE_TVRC | TITLE_REGION_USA))
#define TITLE_TVRC_EUR              ((ESTitleId)(TITLE_TVRC | TITLE_REGION_EUR))
#define TITLE_TVRC_KOR              ((ESTitleId)(TITLE_TVRC | TITLE_REGION_KOR))

/* Photo Channel 1.1 */
#define TITLE_PHOTO_2               ES_TITLE_ID(TITLE_TYPE_SYSTEM_CHANNEL,    'HAY\0')
#define TITLE_PHOTO_2_ALL           ((ESTitleId)(TITLE_PHOTO_2 | TITLE_REGION_ALL))
#define TITLE_PHOTO_2_KOR           ((ESTitleId)(TITLE_PHOTO_2 | TITLE_REGION_KOR))

/* Photo Channel 1.1 (Dummy) */
#define TITLE_PHOTO_2_CHECK         ES_TITLE_ID(TITLE_TYPE_DISC,              'HAZ\0')
#define TITLE_PHOTO_2_CHECK_ALL     ((ESTitleId)(TITLE_PHOTO_2_CHECK | TITLE_REGION_ALL))
#define TITLE_PHOTO_2_CHECK_KOR     ((ESTitleId)(TITLE_PHOTO_2_CHECK | TITLE_REGION_KOR)) /* does such title even exist? */

#define TITLE_NOREGION_MASK         (0xFFFFFFFFFFFFFF00)
#define TITLE_REGION_MASK           (0x00000000000000FF)

#define TITLE_NO_REGION(t)          (t & TITLE_NOREGION_MASK)
#define TITLE_REGION(t)             (t & TITLE_REGION_MASK)

#endif // IPL_TITLE_ID_DATABASE
