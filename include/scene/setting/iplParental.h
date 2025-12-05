#ifndef IPL_PARENTAL_H
#define IPL_PARENTAL_H

#include <revolution/types.h>
#include <revolution/sc.h>

#include <cwchar>

namespace ipl {
    namespace parental {
        class Parental {
            public:
                enum {
                    RESTRICTION_SHOP = (1 << 0),
                    RESTRICTION_MSGBOARD = (1 << 1),
                    RESTRICTION_OPERA = (1 << 2),
                    RESTRICTION_NEWS = (1 << 4),
                };

                static void init();

                static BOOL     checkFlags();
                static u32      checkRating();
                static u32      checkRestrictions();
                static BOOL     checkPass(const char* pass);
                static u32      checkMistake(u8 mistakeCount);
                static u8       checkSecQ();

                static BOOL     judgePass(const char* pass);
                static BOOL     judgeSecA(const wchar_t* secAnswer);
                static BOOL     judgeMaster(const char* master);

                static wchar_t* getSecA();
                static u32      getOgn();
                static u32      getCountry();

                static void     setFlags(u8 flag);
                static void     setRating(u8 rating);
                static void     setPass(const char* pass);
                static void     setSecQ(u8 secQuestion);
                static void     setSecA(const wchar_t* secAnswer);
                static void     setCountry(u8 country);
                static void     setRestrictions(u32 restrictions);
                static void     adjustOgn(u8 country);

                static void     write();
                static void     clear();
                static void     clearMiss();

                static void     makeMasterkey();

                static char*    getRequestNum();

            private:
                static void _initRating();

                static BOOL _checkPass(const char* pass) NO_INLINE;

                static void Crc32Init();
                static u32  CalcCrc32(const u8* buf, u32 size);

                typedef struct SCData {
                    SCParentalControlsInfo  info;               // 0x00
                    u32                     netContentRestrict; // 0x4C
                    BOOL                    wwwRestrict;        // 0x50
                } SCData;

                enum {
                    MISTAKE_PASS = 0,
                    MISTAKE_SEC_ANSWER,
                    MISTAKE_MASTER,
                    MISTAKE_MAX,
                };

                static const int REQUEST_NUMBER_LENGTH = 8;
                static const int MASTER_KEY_LENGTH = 5;
                static const int CRC32_TABLE_SIZE = 0x100;

                static SCData   m_sc;
                static SCData   m_scSave;

                static char     mRequestNum[REQUEST_NUMBER_LENGTH+1];

                static char     mStackPass[SC_PARENTAL_PASSWORD_LENGTH];
                static u8       mMistake[MISTAKE_MAX];
                static char     mMasterKey[MASTER_KEY_LENGTH+1];

                static u32      mCrc32Table[CRC32_TABLE_SIZE+1];
        };
    }
}

#endif // IPL_PARENTAL_H
