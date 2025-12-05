#include "scene/setting/iplParental.h"
#include "scene/setting/iplNCDSetting.h"

#include <revolution/os.h>

#include <cstring>

#include "iplSystem.h"

namespace ipl {
    namespace parental {
        Parental::SCData    Parental::m_sc;
        Parental::SCData    Parental::m_scSave;

        char                Parental::mRequestNum[REQUEST_NUMBER_LENGTH+1];

        char                Parental::mStackPass[SC_PARENTAL_PASSWORD_LENGTH];
        u8                  Parental::mMistake[Parental::MISTAKE_MAX];
        char                Parental::mMasterKey[MASTER_KEY_LENGTH+1];

        u32                 Parental::mCrc32Table[Parental::CRC32_TABLE_SIZE+1];

        void Parental::init() {
            memset(&m_sc, 0, sizeof(SCData));

            BOOL result = SCGetParentalControl(&m_sc.info);
            if (!result) {
                OSReport("SCGetParentalControl Failed! %d\n", result);
            }

            if (!(m_sc.info.enable & SC_PARENTAL_FLAG_ENABLED)) {
                _initRating();
            }

            m_sc.netContentRestrict = SCGetNetContentRestrictions();
            m_sc.wwwRestrict = SCGetWwwRestriction();

            memcpy(&m_scSave,  &m_sc,sizeof(SCData));
            clearMiss();

            makeMasterkey();
        }

        void Parental::_initRating() {
            int region = System::getRegion();

            // Japan
            if (region == SC_PRODUCT_AREA_JPN) {
                m_sc.info.org = SC_PARENTAL_ORG_CERO;
                m_sc.info.rating = 18;
            }
            // Europe
            else if (region == SC_PRODUCT_AREA_EUR) {
                adjustOgn(SCGetSimpleAddressID() >> SC_SIMPLE_ADDRESS_ID_COUNTRY);
            }
            // Korea
            else if (region == SC_PRODUCT_AREA_KOR) {
                m_sc.info.org = SC_PARENTAL_ORG_GRB /*(GRAC)*/;
                m_sc.info.rating = 18;
            }
            // USA (or unknown)
            else {
                m_sc.info.org = SC_PARENTAL_ORG_ESRB;
                m_sc.info.rating = 20;
            }
        }

        BOOL Parental::checkFlags() {
            BOOL result = FALSE;
            if ((m_sc.info.enable & SC_PARENTAL_FLAG_ENABLED)) {
                result = TRUE;
            }
            return result;
        }

        u32 Parental::checkRating() {
            return m_sc.info.rating;
        }

        u32 Parental::checkRestrictions() {
            // what even
            return (m_sc.wwwRestrict == 0) & 4 | -(m_sc.netContentRestrict & 1) & 8 | -((m_sc.netContentRestrict >> 1) & 1) & 2 | (m_sc.netContentRestrict >> 2) & 1;
        }

        BOOL Parental::checkPass(const char* pass) {
            int result = strncmp(mStackPass, pass, SC_PARENTAL_PASSWORD_LENGTH);
            if (result == 0) {
                memcpy(m_sc.info.password, pass, ARRSIZE(m_sc.info.password));
                return TRUE;
            }
            else {
                return FALSE;
            }
        }

        BOOL Parental::_checkPass(const char* pass) {
            return strncmp(m_sc.info.password, pass, ARRSIZE(m_sc.info.password)) == 0;
        }

        BOOL Parental::judgePass(const char* pass) {
            mMistake[MISTAKE_SEC_ANSWER] = 0;
            mMistake[MISTAKE_MASTER] = 0;

            if (_checkPass(pass)) {
                mMistake[MISTAKE_PASS] = 0;
                return TRUE;
            }
            else {
                mMistake[MISTAKE_PASS] += 1;
            }
            return FALSE;
        }

        BOOL Parental::judgeSecA(const wchar_t* secAnswer) {
            mMistake[MISTAKE_PASS] = 0;
            mMistake[MISTAKE_MASTER] = 0;

            if (memcmp(m_sc.info.secretAnswer, secAnswer, sizeof(m_sc.info.secretAnswer)) == 0) {
                mMistake[MISTAKE_SEC_ANSWER] = 0;
                return TRUE;
            }
            else {
                mMistake[MISTAKE_SEC_ANSWER] += 1;
            }
            return FALSE;
        }

        BOOL Parental::judgeMaster(const char* master) {
            mMistake[MISTAKE_PASS] = 0;
            mMistake[MISTAKE_SEC_ANSWER] = 0;

            if (strncmp(master, mMasterKey, MASTER_KEY_LENGTH) == 0) {
                mMistake[MISTAKE_MASTER] = 0;
                return TRUE;
            }
            else {
                mMistake[MISTAKE_MASTER] += 1;
            }
            return FALSE;
        }

        u32 Parental::checkMistake(u8 mistakeCount) {
            return mMistake[mistakeCount] >= 3 ? 1 : 2;
        }

        u8 Parental::checkSecQ() {
            return m_sc.info.secretQuestion;
        }

        wchar_t* Parental::getSecA() {
            return (wchar_t*)m_sc.info.secretAnswer;
        }

        u32 Parental::getOgn() {
            if (getCountry() != SC_COUNTRY_NZ) {
                return m_sc.info.org;
            }
            return SC_PARENTAL_ORG_GRB;
        }

        u32 Parental::getCountry() {
            return (SCGetSimpleAddressID() >> SC_SIMPLE_ADDRESS_ID_COUNTRY);
        }

        void Parental::setFlags(u8 flag) {
            if (flag == 0) {
                memcpy(&m_sc, &m_scSave, sizeof(SCData));
                clearMiss();
            }
            else {
                m_sc.info.enable = SC_PARENTAL_FLAG_ENABLED;
            }
        }

        void Parental::setRating(u8 rating) {
            m_sc.info.rating = rating;
        }

        void Parental::setPass(const char* pass) {
            memcpy(mStackPass, pass, sizeof(mStackPass));
        }

        void Parental::setSecQ(u8 secQuestion) {
            m_sc.info.secretQuestion = secQuestion;
        }

        void Parental::setSecA(const wchar_t* secAnswer) {
            memcpy(m_sc.info.secretAnswer, secAnswer, sizeof(m_sc.info.secretAnswer));
            m_sc.info.secretAnswerLength = wcslen(secAnswer);
        }

        void Parental::setCountry(u8 country) {
            SCSimpleAddress simpleAddr;
            memset(&simpleAddr, 0, sizeof(SCSimpleAddress));
            simpleAddr.id = country << SC_SIMPLE_ADDRESS_ID_COUNTRY;
            SCSetSimpleAddressData(&simpleAddr);
        }

        void Parental::setRestrictions(u32 restrictions) {
            m_sc.wwwRestrict = (restrictions >> 2) & 1;
            m_sc.netContentRestrict = ((((((restrictions >> 1) & 1) * -1) & 2 & ~1) | ((restrictions >> 3) & 1)) & ~4) | (-(restrictions & 1) & 4);
        }

        void Parental::adjustOgn(u8 country) {
            m_sc.info.rating = 20;

            switch (country) { // irregular
                case SC_COUNTRY_DE: {
                    m_sc.info.org = SC_PARENTAL_ORG_USK;
                    break;
                }
                case SC_COUNTRY_GB: {
                    m_sc.info.org = SC_PARENTAL_ORG_BBFC;
                    break;
                }
                case SC_COUNTRY_PT: {
                    m_sc.info.org = SC_PARENTAL_ORG_PEGI_PORTUGAL;
                    break;
                }
                case SC_COUNTRY_NZ:
                case SC_COUNTRY_AU: {
                    m_sc.info.org = SC_PARENTAL_ORG_OFLC;
                    break;
                }
                default: {
                    m_sc.info.org = SC_PARENTAL_ORG_PEGI;
                    break;
                }
            }
        }


        void Parental::write() {
            if (!SCSetParentalControl(&m_sc.info)) {
                OSReport("SCSetParentalControl Failed!\n");
            }

            SCSetNetContentRestrictions(m_sc.netContentRestrict);
            SCSetWwwRestriction(m_sc.wwwRestrict);

            memcpy(&m_scSave, &m_sc, sizeof(SCData));

            clearMiss();

            SCFlush();
            OSReport("!!!!!!!!!!!!SC FLUSH!!!!!!!!!!!!\n");
        }

        void Parental::clear() {
            memset(&m_sc, 0, sizeof(SCData));

            clearMiss();
            _initRating();

            m_sc.netContentRestrict = FALSE;
            m_sc.wwwRestrict = FALSE;

            write();
        }

        void Parental::clearMiss() {
            memset(mMistake, 0, sizeof(mMistake));
        }

        void Parental::Crc32Init() {
            memset(mCrc32Table, 0, CRC32_TABLE_SIZE);

            for (u32 i = 0; i < CRC32_TABLE_SIZE; i++) {
                u32 flag, j;
                u32 val = i;
                for (j = 8; j != 0; j--) {
                    flag = val & 1;
                    val >>= 1;
                    if (flag != 0) {
                        val ^= 0xedb88320;
                    }
                }
                mCrc32Table[i] = val;
            }
        }

        u32 Parental::CalcCrc32(const u8* buf, u32 size) {
            int i;
            u32 crc = ~0;
            for (i = 0; i != (int)size; i++) {
                u32 data = buf[i];
                crc = mCrc32Table[(crc ^ data) & 0xFF] ^ crc >> 8;
            }
            return crc;
        }

        void Parental::makeMasterkey() {
            char data[REQUEST_NUMBER_LENGTH+1];

            memset(data, 0, sizeof(mRequestNum));
            memset(mRequestNum, 0, sizeof(mRequestNum));
            memset(mMasterKey, 0, MASTER_KEY_LENGTH /* Should be sizeof(mMasterKey) but I guess the last byte is always NULL no matter what */);

            // Create request (confirmation) number
            u32 macnum = ncd::NCDSetting::getMacNum();
            snprintf(mRequestNum, ARRSIZE(mRequestNum), "%08u", macnum);
            OSReport("macnum:%u  :%s\n", macnum, mRequestNum);

            OSCalendarTime dateTime;
            OSTicksToCalendarTime(OSGetTime(), &dateTime);
            snprintf(data, 5, "%02u%02u", dateTime.mon + 1, dateTime.mday);

            // Prepare master key
            memcpy(&data[4], &mRequestNum[4], 4);

            // Create master key
            Crc32Init();
            snprintf(mMasterKey, sizeof(mMasterKey), "%05u", ((CalcCrc32((u8*)&data, REQUEST_NUMBER_LENGTH) ^ 0xAAAA) + 0x14C1) % 100000);

            // is "data" a typo of "date"?
            OSReport("data+req:%s\n", data);
        }


        char* Parental::getRequestNum() {
            makeMasterkey();
            return mRequestNum;
        }

        DECOMP_FORCE_ACTIVE(iplParental_cpp, "flags:%d\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "rating:%d\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "password:%s\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "secretQuestion:%d\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "secretAnswer:%s\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "secretAnswerLength:%d\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "net contents restrictions:%02x\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "www channel restriction  :%d\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "requestNum:%s\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "masterkey:%s\n");
        DECOMP_FORCE_ACTIVE(iplParental_cpp, "country: %d\n");
    }
}
