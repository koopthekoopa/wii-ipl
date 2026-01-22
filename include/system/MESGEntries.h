#ifndef IPL_MESSAGE_ENTRIES_H
#define IPL_MESSAGE_ENTRIES_H

/* Common message IDs */
// TODO: Find out whats with the alts
#define MESG_CMN_START                  2
#define MESG_CMN_BACK                   35
#define MESG_CMN_QUIT                   37
#define MESG_CMN_OK                     46
#define MESG_CMN_BACK_ALT_2             79
#define MESG_CMN_BACK_ALT               315
#define MESG_CMN_YES                    321
#define MESG_CMN_NO                     322

/* Channel Manager */

#define MESG_DISK_CHANNEL_NAME          0

/* Play Time Log */

#define MESG_PLAY_TIME_LOG_TITLE        132
#define MESG_PLAY_TIME_LOG_TOTAL        135
#define MESG_PLAY_TIME_TITLE            136
#define MESG_PLAY_TIME_LOG_EXTRA        137
#define MESG_PLAY_TIME_TIME_SEPERATOR   138
#define MESG_PLAY_TIME_SENDMSG_TOTAL    144
#define MESG_PLAY_TIME_SENDMSG_AND      145
#define MESG_PLAY_TIME_SENDMSG_MORE     146

/* Cdb Backup */

#define MESG_CDBBACKUP_SD_UNAVAILABLE   56
#define MESG_CDBBACKUP_ASK_FOR_BACKUP   57
#define MESG_CDBBACKUP_BACKING          58
#define MESG_CDBBACKUP_BACK_FINISHED    59
#define MESG_CDBBACKUP_BACK_SD_FULL     60
#define MESG_CDBBACKUP_BACK_SD_ERROR    61
#define MESG_CDBBACKUP_SD_LOCKED        62
#define MESG_CDBBACKUP_ASK_FOR_DELETE   147
#define MESG_CDBBACKUP_DELETING         148
#define MESG_CDBBACKUP_DELETE_FINISH    149
#define MESG_CDBBACKUP_BACKING_NO_SD    150
#define MESG_CDBBACKUP_SD_UNKNOWN_ERR   151
#define MESG_CDBBACKUP_BACK_FINISHED_2  152

/* Address */

#define MESG_ADDRESS_REGISTER           41
#define MESG_ADDRESS_WII_ID             66
#define MESG_ADDRESS_CHOOSE             78
#define MESG_ADDRESS_TITLE              134

/* Address Add Select */

#define MESG_ADDRESS_ADD_SEL_WII        77
#define MESG_ADDRESS_ADD_SEL_EMAIL      70

/* Friend List Cache (awaiting friends by email) */

#define MESG_FRIEND_CACHE_EMAIL_TITLE   385
#define MESG_FRIEND_CACHE_EMAIL_BODY    386

/* Board */

#define MESG_BOARD_CORRUPTED            11
#define MESG_BOARD_UPDATE               21
#define MESG_BOARD_SAFE_MODE_NOTICE     27
#define MESG_BOARD_POST                 36
#define MESG_BOARD_SEND                 39
#define MESG_BOARD_ERASE_ERROR          62
#define MESG_BOARD_ERASE_CONFIRM        64
#define MESG_BOARD_REPLY                67
#define MESG_BOARD_TRASH                40
#define MESG_BOARD_CHJUMP_CONFIRM       88
#define MESG_BOARD_CHJUMP_NO_OPERA      89
#define MESG_BOARD_CHJUMP_LAUNCH_ERROR  90
#define MESG_BOARD_OPT_OUT              92
#ifndef VERSION_43E
#define MESG_BOARD_OPT_OUT_SELECT       102
#define MESG_BOARD_OPT_OUT_ONE          103
#define MESG_BOARD_OPT_OUT_ALL          104
#define MESG_BOARD_OPT_OUT_CANCEL       105
#define MESG_BOARD_OPT_OUT_CONFIRM      106
#define MESG_BOARD_OPT_OUT_DONE         107
#define MESG_BOARD_OPT_OUT_DONE_ALL     108
#define MESG_BOARD_NWC24_DELETE_FAIL    109
#else
#define MESG_BOARD_OPT_OUT_SELECT       93
#define MESG_BOARD_OPT_OUT_ONE          94
#define MESG_BOARD_OPT_OUT_ALL          95
#define MESG_BOARD_OPT_OUT_CANCEL       96
#define MESG_BOARD_OPT_OUT_CONFIRM      97
#define MESG_BOARD_OPT_OUT_DONE         98
#define MESG_BOARD_OPT_OUT_DONE_ALL     99
#define MESG_BOARD_NWC24_DELETE_FAIL    100
#endif // VERSION_43E
#define MESG_BOARD_NAND_FULL            154
#define MESG_BOARD_RFL_INIT_FAIL        381

/* Button */

#define MESG_BUTTON_SETTING             14
#define MESG_BUTTON_BBS_BOARD           15
#define MESG_BUTTON_CH_SEL              16
#define MESG_BUTTON_CALENDAR            17
#define MESG_BUTTON_CREATE              18

/* Calendar */

#define MESG_CALENDAR_MONDAY            110
#define MESG_CALENDAR_TUESDAY           111
#define MESG_CALENDAR_WEDNESDAY         112
#define MESG_CALENDAR_THURSDAY          113
#define MESG_CALENDAR_FRIDAY            114
#define MESG_CALENDAR_SATURDAY          115
#define MESG_CALENDAR_SUNDAY            116

#define MESG_CALENDAR_JAN               118
#define MESG_CALENDAR_FEB               119
#define MESG_CALENDAR_MAR               120
#define MESG_CALENDAR_APR               121
#define MESG_CALENDAR_MAY               122
#define MESG_CALENDAR_JUN               123
#define MESG_CALENDAR_JUL               124
#define MESG_CALENDAR_AUG               125
#define MESG_CALENDAR_SEP               126
#define MESG_CALENDAR_OCT               127
#define MESG_CALENDAR_NOV               128
#define MESG_CALENDAR_DEC               129

#define MESG_CALENDAR_WEEK_START        130
#define MESG_CALENDAR_WEEK_END          131

/* Channel Edit */

#define MESG_CHAN_EDIT_BLOCKS_OPEN      156
#define MESG_CHAN_EDIT_BLANK            242

/* Channel Select */

#define MESG_CHAN_SEL_SAFE_MODE         27
#define MESG_CHAN_SEL_NAND_FULL         154

/* Clock */

#define MESG_CLOCK_WII_MENU             16

/* Letter Writer */

#define MESG_LETTERWRITER_LETTER_HEADER 141
#define MESG_LETTERWRITER_LETTER_TEXT   142
#define MESG_LETTERWRITER_SENDING       143
#define MESG_LETTERWRITER_EMAIL_SUBJECT 387

/* Parental Dialog */

#define MESG_PARENTAL_DLG_TITLE         327
#define MESG_PARENTAL_DLG_PIN           328
#define MESG_PARENTAL_DLG_SUCCESS       329
#define MESG_PARENTAL_DLG_SUCCESS_TEMP  330
#define MESG_PARENTAL_DLG_BAD_PIN       331
#define MESG_PARENTAL_DLG_NO_PIN        345

/* SD Button */

#define MESG_SD_BUTTON_PAGE             160
#define MESG_SD_BUTTON_HELP             166
#define MESG_SD_BUTTON_WII_MENU         168

/* Settings Select Button */

#define MESG_SETTING_SEL_DATA_MANAGE    253
#define MESG_SETTING_SEL_SAVE_DATA      254
#define MESG_SETTING_SEL_CHANNELS       255
#define MESG_SETTING_SEL_WII            256
#define MESG_SETTING_SEL_CUBE           257
#define MESG_SETTING_SEL_WII_SETTING    316

/* Text Writer */

#define MESG_TEXTWRITER_HEADER          133
#define MESG_TEXTWRITER_ADD_MII         139
#define MESG_TEXTWRITER_LETTER_TEXT     140
#define MESG_TEXTWRITER_NO_MII          380
#define MESG_TEXTWRITER_SEND_ERROR      455

/* Network */

#define MESG_NETWORK_NO_CONFIG          324
#define MESG_NETWORK_SETTINGS_BTN       326
#define MESG_NETWORK_PARENTAL_RESTRICT  332
#define MESG_NETWORK_NO_WC24_CONFIG     382

/* Error Messages */

#define MESG_ERROR_CODE                 400
#define MESG_ERROR_UPD_SERVER           401
#define MESG_ERROR_UPD_INTERNET         402
#define MESG_ERROR_UPD_NAND_FULL        403
#define MESG_ERROR_UPD_UNKNOWN          404
#define MESG_ERROR_NCD_INTERNET         405
#define MESG_ERROR_NCD_NOSETUP          406
#define MESG_ERROR_NCD_INVALID          407
#define MESG_ERROR_NCD_LAN_INVALID      408
#define MESG_ERROR_NCD_WL_INVALID       409
#ifndef VERSION_43E
#define MESG_ERROR_NWC24_NETWORK        410
#else
#define MESG_ERROR_NWC24_NETWORK        430
#endif // VERSION_43E
#define MESG_ERROR_NWC24_SERVER         453
#define MESG_ERROR_NWC24_FATAL          454
#define MESG_ERROR_NWC24_FRIEND_NULL    456

#endif // IPL_MESSAGE_ENTRIES_H
