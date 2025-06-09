#include <private/si.h>

#include <revolution/os.h>
#include <revolution/vi.h>

#include <private/hollywood.h>

static u32 SamplingRate = 0;

typedef struct XY {
    u16 line;   // 0x00
    u8  count;  // 0x04
} XY;

static XY XYNTSC[12] = {
    {0x00F6, 0x02},
    {0x000E, 0x13},
    {0x001E, 0x09},
    {0x002C, 0x06},
    {0x0034, 0x05},
    {0x0041, 0x04},
    {0x0057, 0x03},
    {0x0057, 0x03},
    {0x0057, 0x03},
    {0x0083, 0x02},
    {0x0083, 0x02},
    {0x0083, 0x02},
};

static XY XYPAL[12] = {
    {0x0128, 0x02},
    {0x000F, 0x15},
    {0x001D, 0x0B},
    {0x002D, 0x07},
    {0x0034, 0x06},
    {0x003F, 0x05},
    {0x004E, 0x04},
    {0x0068, 0x03},
    {0x0068, 0x03},
    {0x0068, 0x03},
    {0x0068, 0x03},
    {0x009C, 0x02},
};

void SISetSamplingRate(u32 msec) {
    XY* xy;
    BOOL progressive;
    BOOL enabled;

    if (msec > 11) {
        msec = 11;
    }
    enabled = OSDisableInterrupts();
    SamplingRate = msec;

    switch (VIGetTvFormat()) {
        case VI_NTSC:
        case VI_MPAL:
        case VI_EURGB60: {
            xy = XYNTSC;
            break;
        }
        case VI_PAL: {
            xy = XYPAL;
            break;
        }
        default: {
            OSReport("SISetSamplingRate: unknown TV format. Use default.");
            msec = 0;
            xy = XYNTSC;
            break;
        }
    }

    progressive = VI_READ_REG(VI_CLOCK_SELECT) & 1;
    SISetXY((progressive ? 2 : 1) * xy[msec].line, xy[msec].count);
    OSRestoreInterrupts(enabled);
}

void SIRefreshSamplingRate() {
    SISetSamplingRate(SamplingRate);
}
