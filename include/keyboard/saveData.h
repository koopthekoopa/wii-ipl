#ifndef KEYBOARD_SAVE_DATA_H
#define KEYBOARD_SAVE_DATA_H

#include <revolution/types.h>

namespace textinput {
    namespace extend {
        namespace savedata {
            typedef struct MemoSetting {
                u8          uRevisionAndType;           // 0x00

                union {
                    struct {
                        u8  uDictionary;                // 0x01
                        u8  uPredictOnOff;              // 0x02
                        u8  uSignPage;                  // 0x03
                        
                        u8  uKeitaiUpperCaseJP  : 1;    // 0x04:10000000
                        u8  uKeitaiInputMode    : 4;    // 0x04:01111000
                        u8  uQwertyABC          : 1;    // 0x04:00000100
                        u8  uNumLockOff         : 1;    // 0x04:00000010
                        u8  uReserve2           : 1;    // 0x04:00000001
                        
                        u8  uABCInputMode       : 4;    // 0x05:11110000
                        u8  uAIUInputMode       : 4;    // 0x05:00001111

                        u8  uReserve3;                  // 0x06
                        u8  uReserve4;                  // 0x07
                    };
                    struct {
                        u8  uDictionary;                // 0x01
                        u8  uPredictOnOff;              // 0x02
                        u8  uSignPage;                  // 0x03
                        
                        u8  uKeitaiUpperCaseJP  : 1;    // 0x04:10000000
                        u8  uKeitaiInputMode    : 4;    // 0x04:01111000
                        u8  uQwertyABC          : 1;    // 0x04:00000100
                        u8  uQwertTranslateMode : 2;    // 0x04:00000011
                        
                        u8  uABCInputMode       : 4;    // 0x05:00001111
                        u8  uAIUInputMode       : 4;    // 0x05:4
                        
                        u8  uReserve3;                  // 0x06
                        u8  uReserve4;                  // 0x07
                    } uRev0;
                    struct {
                        u8  val[7];                     // 0x01
                    } uRawData;
                };
            } MemoSetting;
        }
    }
}

#endif // KEYBOARD_SAVE_DATA_H
