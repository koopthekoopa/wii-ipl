#ifndef RFLi_FORMAT_H
#define RFLi_FORMAT_H

#include <RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    RFLCreateID createID;       // 0x00
    u16         sex : 1;        // 0x08

    s16         next : 15;      // 0x08
    s16         padding2 : 1;   // 0x0A
    s16         prev : 15;      // 0x0A
} RFLiFormatTable;

void        RFLiClearTableData(RFLiFormatTable* data);
void        RFLiClearDBBuffer();

RFLErrcode  RFLiFormatAsync(RFLSimpleCB cb);

#ifdef __cplusplus
}
#endif

#endif // RFLi_FORMAT_H
