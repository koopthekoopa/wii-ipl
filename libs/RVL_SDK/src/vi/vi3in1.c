#include <private/vi.h>
#include <revolution/vi.h>

#include <revolution/os.h>

static __VIGammaImm gammaSet[31] = {
    {{0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0}},
    {
        {0, 0, 0, 0x30, 0x397, 0x3B49},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1000, 0x1000, 0x1000, 0x1080, 0x1B80, 0xEB00},
    },
    {
        {0, 0x28, 0x5A, 0x2DB, 0xD8D, 0x3049},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1000, 0x1040, 0x1100, 0x1880, 0x4200, 0xEB00},
    },
    {
        {0, 0x7A, 0x23C, 0x76D, 0x129C, 0x2724},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1000, 0x10C0, 0x1580, 0x2900, 0x6200, 0xEB00},
    },
    {
        {0x4E, 0x199, 0x52D, 0xB24, 0x1429, 0x20A4},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1040, 0x12C0, 0x1DC0, 0x3B00, 0x78C0, 0xEB00},
    },
    {
        {0xEC, 0x3D7, 0x800, 0xD9E, 0x143E, 0x1BDB},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x10C0, 0x16C0, 0x27C0, 0x4B80, 0x8980, 0xEB00},
    },
    {
        {0x276, 0x666, 0xA96, 0xEF3, 0x13AC, 0x1849},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1200, 0x1C00, 0x3280, 0x59C0, 0x9600, 0xEB00},
    },
    {
        {0x4EC, 0x8F5, 0xC96, 0xFCF, 0x12C6, 0x1580},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1400, 0x2200, 0x3CC0, 0x6640, 0x9FC0, 0xEB00},
    },
    {
        {0x800, 0xBAE, 0xE00, 0x1030, 0x11CB, 0x1349},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1680, 0x28C0, 0x4680, 0x7100, 0xA780, 0xEB00},
    },
    {
        {0xBB1, 0xE14, 0xF2D, 0x1018, 0x10E5, 0x1180},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x1980, 0x2F80, 0x4FC0, 0x7A00, 0xADC0, 0xEB00},
    },
    {
        {0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000},
        {0x10, 0x20, 0x40, 0x60, 0x80, 0xA0, 0xEB},
        {0x1000, 0x2000, 0x4000, 0x6000, 0x8000, 0xA000, 0xEB00},
    },
    {
        {0x14EC, 0x11C2, 0x1078, 0xFB6, 0xF2F, 0xEB6},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x2100, 0x3CC0, 0x5FC0, 0x8900, 0xB780, 0xEB00},
    },
    {
        {0x19D8, 0x1333, 0x10D2, 0xF6D, 0xE5E, 0xDA4},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x2500, 0x4300, 0x66C0, 0x8F40, 0xBB40, 0xEB00},
    },
    {
        {0x1EC4, 0x147A, 0x110F, 0xF0C, 0xDA1, 0xCB6},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x2900, 0x4900, 0x6D40, 0x94C0, 0xBE80, 0xEB00},
    },
    {
        {0x2400, 0x1570, 0x110F, 0xEAA, 0xD0F, 0xBDB},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x2D40, 0x4EC0, 0x7300, 0x9980, 0xC180, 0xEB00},
    },
    {
        {0x293B, 0x163D, 0x110F, 0xE30, 0xC7D, 0xB24},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x3180, 0x5440, 0x7880, 0x9DC0, 0xC400, 0xEB00},
    },
    {
        {0x2E27, 0x170A, 0x10D2, 0xDE7, 0xBEB, 0xA80},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x3580, 0x5980, 0x7D40, 0xA1C0, 0xC640, 0xEB00},
    },
    {
        {0x3362, 0x175C, 0x10D2, 0xD6D, 0xB6D, 0x9ED},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x39C0, 0x5E40, 0x8200, 0xA540, 0xC840, 0xEB00},
    },
    {
        {0x384E, 0x17AE, 0x10B4, 0xD0C, 0xAF0, 0x96D},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x3DC0, 0x62C0, 0x8640, 0xA880, 0xCA00, 0xEB00},
    },
    {
        {0x3D3B, 0x1800, 0x105A, 0xCC3, 0xA72, 0x900},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x41C0, 0x6740, 0x8A00, 0xAB80, 0xCB80, 0xEB00},
    },
    {
        {0x41D8, 0x1828, 0x103C, 0xC49, 0xA1F, 0x892},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x4580, 0x6B40, 0x8DC0, 0xAE00, 0xCD00, 0xEB00},
    },
    {
        {0x4676, 0x1851, 0xFE1, 0xC00, 0x9B6, 0x836},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x4940, 0x6F40, 0x9100, 0xB080, 0xCE40, 0xEB00},
    },
    {
        {0x4AC4, 0x187A, 0xFA5, 0xB9E, 0x963, 0x7DB},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x4CC0, 0x7300, 0x9440, 0xB2C0, 0xCF80, 0xEB00},
    },
    {
        {0x4F13, 0x1851, 0xF69, 0xB6D, 0x90F, 0x780},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x5040, 0x7640, 0x9700, 0xB500, 0xD0C0, 0xEB00},
    },
    {
        {0x5313, 0x187A, 0xF0F, 0xB24, 0x8BC, 0x736},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x5380, 0x79C0, 0x99C0, 0xB700, 0xD1C0, 0xEB00},
    },
    {
        {0x5713, 0x1851, 0xEF0, 0xAC3, 0x87D, 0x6ED},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x56C0, 0x7CC0, 0x9C80, 0xB8C0, 0xD2C0, 0xEB00},
    },
    {
        {0x5B13, 0x1828, 0xE96, 0xA92, 0x829, 0x6B6},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x5A00, 0x7FC0, 0x9EC0, 0xBA80, 0xD380, 0xEB00},
    },
    {
        {0x5EC4, 0x1800, 0xE78, 0xA30, 0x800, 0x66D},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x5D00, 0x8280, 0xA140, 0xBC00, 0xD480, 0xEB00},
    },
    {
        {0x6276, 0x17D7, 0xE1E, 0xA00, 0x7C1, 0x636},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x6000, 0x8540, 0xA340, 0xBD80, 0xD540, 0xEB00},
    },
    {
        {0x65D8, 0x17AE, 0xDE1, 0x9CF, 0x782, 0x600},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x62C0, 0x87C0, 0xA540, 0xBF00, 0xD600, 0xEB00},
    },
    {
        {0x693B, 0x1785, 0xDA5, 0x986, 0x743, 0x5DB},
        {0x10, 0x1D, 0x36, 0x58, 0x82, 0xB3, 0xEB},
        {0x1000, 0x6580, 0x8A40, 0xA740, 0xC040, 0xD680, 0xEB00},
    },
};

__VIMacrovisionImm VINtscACPType1 = {0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__VIMacrovisionImm VINtscACPType2 = {0x3E, 0x1D, 0x11, 0x25, 0x11, 0x01, 0x07, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x00};

__VIMacrovisionImm VINtscACPType3 = {0x3E, 0x17, 0x15, 0x21, 0x15, 0x05, 0x05, 0x02, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x00};

__VIMacrovisionImm VIPalACPType1 = {0x36, 0x1A, 0x22, 0x2A, 0x22, 0x05, 0x02, 0x00, 0x1C, 0x3D, 0x14, 0x03, 0xFE,
                                    0x01, 0x54, 0xFE, 0x7E, 0x60, 0x00, 0x08, 0x00, 0x04, 0x07, 0x01, 0x55, 0x01};

__VIMacrovisionImm VIPalACPType2 = {0x36, 0x1A, 0x22, 0x2A, 0x22, 0x05, 0x02, 0x00, 0x1C, 0x3D, 0x14, 0x03, 0xFE,
                                    0x01, 0x54, 0xFE, 0x7E, 0x60, 0x00, 0x08, 0x00, 0x04, 0x07, 0x01, 0x55, 0x01};

__VIMacrovisionImm VIPalACPType3 = {0x36, 0x1A, 0x22, 0x2A, 0x22, 0x05, 0x02, 0x00, 0x1C, 0x3D, 0x14, 0x03, 0xFE,
                                    0x01, 0x54, 0xFE, 0x7E, 0x60, 0x00, 0x08, 0x00, 0x04, 0x07, 0x01, 0x55, 0x01};

__VIMacrovisionImm VIEurgb60ACPType1 = {0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                        0x00, 0x00, 0x1E, 0x1E, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};

__VIMacrovisionImm VIEurgb60ACPType2 = {0x36, 0x1D, 0x11, 0x25, 0x11, 0x01, 0x07, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                        0x00, 0x00, 0x1E, 0x1E, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x01};

__VIMacrovisionImm VIEurgb60ACPType3 = {0x36, 0x17, 0x15, 0x21, 0x15, 0x05, 0x05, 0x02, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                        0x00, 0x00, 0x1E, 0x1E, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x01};

__VIMacrovisionImm VIMpalACPType1 = {0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__VIMacrovisionImm VIMpalACPType2 = {0x36, 0x1D, 0x11, 0x25, 0x11, 0x01, 0x07, 0x00, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x00};

__VIMacrovisionImm VIMpalACPType3 = {0x36, 0x17, 0x15, 0x21, 0x15, 0x05, 0x05, 0x02, 0x1B, 0x1B, 0x24, 0x07, 0xF8,
                                     0x00, 0x00, 0x0F, 0x0F, 0x60, 0x01, 0x0A, 0x00, 0x05, 0x04, 0x03, 0xFF, 0x00};

__VIMacrovisionImm VIProgressiveACPType = {0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                           0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__VIMacrovisionImm VIZeroACPType = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

volatile BOOL Vdac_Flag_Changed = FALSE;
static int __level = 0;
static VIGamma __gamma = 0;
static VIMacrovision __type = 0;
static int Vdac_Flag_Region = VI_NTSC;

static u8 __wd0 = 0xFF;
static u8 __wd1 = 0xFF;
static u8 __wd2 = 0xFF;
static u8 __gp1 = 0xFF;
static u8 __gp2 = 0xFF;
static u8 __gp3 = 0xFF;
static u8 __gp4 = 0xFF;
static u8 __cc1 = 0xFF;
static u8 __cc2 = 0xFF;
static u8 __cc3 = 0xFF;
static u8 __cc4 = 0xFF;
static u32 __tvType = 0xFF;
static u8 __filter = 0xFF;

static void __VISetVideoMode(int mode, u8 unk) {
    u8 data[2];

    Vdac_Flag_Region = mode;
    data[0] = 1;
    data[1] = (unk << 5) | Vdac_Flag_Region;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

static void __VISetCCSEL(u8 flag) {
    u8 data[2];

    data[0] = 0x6A;
    data[1] = TRUE;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

static void __VISetOverSampling(u8 flag) {
    u8 data[2];

    data[0] = 0x65;
    data[1] = TRUE;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetVolume(u8 leftVolume, u8 rightVolume) {
    u8 data[3];

    data[0] = 0x71;
    data[1] = leftVolume;
    data[2] = rightVolume;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetYUVSEL(u8 yuvsel) {
    u8 data[2];
    u32 videoFormat;

    videoFormat = *(u32*)OSPhysicalToCached(OS_ADDR_TV_VIDEO_FORMAT);
    switch (videoFormat) {
        case VI_PAL:
        case VI_EURGB60: {
            Vdac_Flag_Region = VI_VIDEO_MODE_PAL;
            break;
        }
        case VI_MPAL: {
            Vdac_Flag_Region = VI_VIDEO_MODE_MPAL;
            break;
        }
        case VI_NTSC: {
            Vdac_Flag_Region = VI_VIDEO_MODE_NTSC;
            break;
        }
        default: {
            ASSERTMSGLINE(919, FALSE, "Unkwon TV mode!! TV mode is set to NTSC mode.\n");
            Vdac_Flag_Region = VI_VIDEO_MODE_NTSC;
            break;
        }
    }
    data[0] = 1;
    data[1] = (yuvsel << 5) | Vdac_Flag_Region;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetTiming(s32 timing) {
    u8 data[2];

    data[0] = 0;
    data[1] = timing;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISet3in1Output(u8 output) {
    u8 data[2];

    data[0] = 4;
    data[1] = (u8)output;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetFilter4EURGB60(u8 filter) {
    u8 data[2];

    data[0] = 0x6E;
    data[1] = (u8)filter;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetVBICtrl(u8 arg0, u8 arg1, u8 arg2) {
    u8 data[2];

    data[0] = 2;
    data[1] = (~arg2 & 1) | (((~arg1 & 1) << 2) | ((~arg0 & 1) << 1));
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

u32 __VIGetVenderID() {
    u8 data2[2];
    u8 data;

    data = 0x59;
    __VISendI2CData(0xE0, &data, sizeof(data));
    WaitMicroTime(2);
    data = 0;
    if (__VIReceiveI2CData(0xE0, &data, sizeof(data)) == FALSE) {
        return 0xFF;
    }
    if (data == 0xFF) {
        __VISet3in1Output(1);
        data2[0] = 0x40;
        data2[1] = 1;
        __VISendI2CData(0xE0, data2, sizeof(data2));
        WaitMicroTime(2);
        data = 4;
        __VISendI2CData(0xE0, &data, sizeof(data));
        WaitMicroTime(2);
        data = 0;
        if (__VIReceiveI2CData(0xE0, &data, sizeof(data)) == FALSE) {
            data2[0] = 0x40;
            data2[1] = 0;
            __VISendI2CData(0xE0, data2, 2);
            WaitMicroTime(2);
            return 0xFF;
        }
        if (data == 1) {
            data2[0] = 0x40;
            data2[1] = 0;
            __VISendI2CData(0xE0, data2, 2);
            WaitMicroTime(2);
            return 1;
        }
        data2[0] = 0x40;
        data2[1] = 0;
        __VISendI2CData(0xE0, data2, sizeof(data2));
        WaitMicroTime(2);
        return 0;
    }
    return 0x10;
}

void __VISetCGMS() {
    u8 data[3];

    data[0] = 5;
    data[1] = ((__wd1 & 0xF) << 2) | (__wd0 & 3);
    data[2] = __wd2;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetCGMSClear() {
    __wd0 = 0;
    __wd1 = 0;
    __wd2 = 0;
    __VISetCGMS();
}

void VISetCGMS(u8 wd0, u8 wd1, u8 wd2) {
    if (__wd0 != wd0 || __wd1 != wd1 || __wd2 != wd2) {
        __wd0 = wd0;
        __wd1 = wd1;
        __wd2 = wd2;
        Vdac_Flag_Changed |= 1;
    }
}

BOOL VIGetCGMS(u8* wd0, u8* wd1, u8* wd2) {
    *wd0 = __wd0;
    *wd1 = __wd1;
    *wd2 = __wd2;
    return TRUE;
}

void __VISetWSS() {
    u8 data[3];

    data[0] = 8;
    data[1] = ((__gp2 & 0xF) << 4) | (__gp1 & 0xF);
    data[2] = ((__gp4 & 7) << 3) | (__gp3 & 7);
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void VISetWSS(u8 gp1, u8 gp2, u8 gp3, u8 gp4) {
    if (__gp1 != gp1 || __gp2 != gp2 || __gp3 != gp3 || __gp4 != gp4) {
        __gp1 = gp1;
        __gp2 = gp2;
        __gp3 = gp3;
        __gp4 = gp4;
        Vdac_Flag_Changed |= 2;
    }
}

BOOL VIGetWSS(u8* gp1, u8* gp2, u8* gp3, u8* gp4) {
    *gp1 = __gp1;
    *gp2 = __gp2;
    *gp3 = __gp3;
    *gp4 = __gp4;
    return TRUE;
}

void __VISetClosedCaption() {
    u8 data[5];

    data[0] = 0x7A;
    data[1] = __cc1 & 0x7F;
    data[2] = __cc2 & 0x7F;
    data[3] = __cc3 & 0x7F;
    data[4] = __cc4 & 0x7F;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void VISetClosedCaption(u8 cc1, u8 cc2, u8 cc3, u8 cc4) {
    if (__cc1 != cc1 || __cc2 != cc2 || __cc3 != cc3 || __cc4 != cc4) {
        __cc1 = cc1;
        __cc2 = cc2;
        __cc3 = cc3;
        __cc4 = cc4;
        Vdac_Flag_Changed |= 4;
    }
}

void __VISetMacrovisionImm(__VIMacrovisionImm macrovisionImm) {
    u8 data[26 + 1];
    u8 i;

    data[0] = 0x40;

    for (i = 1; i < ARRAY_LENGTH(data); i++) {
        data[i] = macrovisionImm[i - 1];
    }
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetMacrovision() {
    switch (__type) {
        case VI_ACP_TYPE_1: {
            switch (__tvType) {
                case VI_NTSC: {
                    __VISetMacrovisionImm(VINtscACPType1);
                    break;
                }
                case VI_PAL: {
                    __VISetMacrovisionImm(VIPalACPType1);
                    break;
                }
                case VI_MPAL: {
                    __VISetMacrovisionImm(VIMpalACPType1);
                    break;
                }
                case VI_EURGB60: {
                    __VISetMacrovisionImm(VIEurgb60ACPType1);
                    break;
                }
            }
            break;
        }
        case VI_ACP_TYPE_2: {
            switch (__tvType) {
                case VI_NTSC: {
                    __VISetMacrovisionImm(VINtscACPType2);
                    break;
                }
                case VI_PAL: {
                    __VISetMacrovisionImm(VIPalACPType2);
                    break;
                }
                case VI_MPAL: {
                    __VISetMacrovisionImm(VIMpalACPType2);
                    break;
                }
                case VI_EURGB60: {
                    __VISetMacrovisionImm(VIEurgb60ACPType2);
                    break;
                }
            }
            break;
        }
        case VI_ACP_TYPE_3: {
            switch (__tvType) {
                case VI_NTSC: {
                    __VISetMacrovisionImm(VINtscACPType3);
                    break;
                }
                case VI_PAL: {
                    __VISetMacrovisionImm(VIPalACPType3);
                    break;
                }
                case VI_MPAL: {
                    __VISetMacrovisionImm(VIMpalACPType3);
                    break;
                }
                case VI_EURGB60: {
                    __VISetMacrovisionImm(VIEurgb60ACPType3);
                    break;
                }
            }
            break;
        }
        case VI_ACP_TYPE_ZERO: {
            __VISetMacrovisionImm(VIZeroACPType);
            break;
        }
    }
}

void VISetMacrovision(VIMacrovision macrovision) {
    u32 tvFormat;

    u8 var_r31 = 0;
    u8 var_r29 = 0;
    u8 wd0 = __wd0;
    u8 wd1 = __wd1;
    u8 wd2 = __wd2;

    switch (macrovision) {
        case VI_ACP_TYPE_ZERO: {
            var_r31 = 0;
            var_r29 = 0;
            break;
        }
        case VI_ACP_TYPE_1: {
            var_r31 = 2;
            var_r29 = 3;
            wd1 = 0;
            break;
        }
        case VI_ACP_TYPE_2: {
            var_r31 = 1;
            var_r29 = 3;
            wd1 = 0;
            break;
        }
        case VI_ACP_TYPE_3: {
            var_r31 = 3;
            var_r29 = 3;
            wd1 = 0;
            break;
        }
        default: {
            break;
        }
    }
    wd2 = wd2 & 0xF0;
    wd2 = (wd2 | (var_r31 << 2)) | var_r29;
    VISetCGMS(wd0, wd1, wd2);

    tvFormat = VIGetTvFormat();
    if (__type != macrovision || __tvType != tvFormat) {
        __type = macrovision;
        __tvType = tvFormat;
        Vdac_Flag_Changed |= 8;
    }
}

void __VISetGammaImm(__VIGammaImm* gammaImm) {
    u8 data[34];
    u8 dataIndex;
    u8 i;

    data[0] = 0x10;
    dataIndex = 1;

    for (i = 0; i < ARRAY_LENGTH(gammaImm->unk_0x00); i++) {
        data[dataIndex] = (gammaImm->unk_0x00[i] >> 8) & 0xFF;
        data[dataIndex + 1] = gammaImm->unk_0x00[i] & 0xFF;
        dataIndex += 2;
    }

    for (i = 0; i < ARRAY_LENGTH(gammaImm->unk_0x0C); i++) {
        data[dataIndex] = gammaImm->unk_0x0C[i];
        dataIndex++;
    }

    for (i = 0; i < ARRAY_LENGTH(gammaImm->unk_0x14); i++) {
        data[dataIndex] = (gammaImm->unk_0x14[i] >> 8) & 0xFF;
        data[dataIndex + 1] = gammaImm->unk_0x14[i] & 0xC0;
        dataIndex += 2;
    }
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetGamma1_0() {
    __VISetGammaImm(&gammaSet[VI_GM_1_0]);
}

void __VISetGamma() {
    __VISetGammaImm(&gammaSet[__gamma]);
}

void VISetGamma(VIGamma gamma) {
    if (__gamma != gamma) {
        __gamma = gamma;
        Vdac_Flag_Changed |= 0x10;
    }
}

void __VISetTrapFilterImm(u8 flag) {
    u8 data[2];

    data[0] = 3;
    if (flag == TRUE) {
        data[1] = 0;
    } else {
        data[1] = 1;
    }
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void __VISetTrapFilter() {
    u8 data[2];

    data[0] = 3;
    if (__filter == TRUE) {
        data[1] = 0;
    } else {
        data[1] = 1;
    }
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
}

void VISetTrapFilter(u8 flag) {
    if (__filter != flag) {
        __filter = flag;
        Vdac_Flag_Changed |= 0x20;
    }
}

void __VISetRGBOverDrive() {
    u8 data[2];

    if (Vdac_Flag_Region == VI_VIDEO_MODE_RVA) {
        data[0] = 0xA;
        data[1] = (__level << 1) | 1;
        __VISendI2CData(0xE0, data, sizeof(data));
        WaitMicroTime(2);
    } else {
        data[0] = 0xA;
        data[1] = 0;
        __VISendI2CData(0xE0, data, sizeof(data));
        WaitMicroTime(2);
    }
}

void VISetRGBOverDrive(int level) {
    if (__level != level) {
        __level = level;
        Vdac_Flag_Changed |= 0x40;
    }
}

void VISetRGBModeImm() {
    Vdac_Flag_Changed |= 0x80;
}

void __VISetDTVMode() {
    u32 dtvStatus;

    __VISet3in1Output(0);
    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    switch (__VIGetVenderID()) {
        case 0:
        case 1: {
            __VISetTiming(1);
            break;
        }
        case 0x10: {
            __VISetTiming(0);
            break;
        }
        default: {
            __VISetTiming(0);
            break;
        }
    }
    VISetTrapFilter(FALSE);
    VISetGamma(VI_GM_1_0);
    __VISetVolume(142, 142);
    VISetRGBOverDrive(0);
    __VISetVBICtrl(1, 1, 1);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    VIFlush();
    VIWaitForRetrace();
    __VISet3in1Output(1);
}

void VISetDTVMode() {
    __VISetDTVMode();
}

void VISetRVAMode() {
    u8 data[2];

    __VISet3in1Output(0);
    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    __VISetVideoMode(VI_VIDEO_MODE_RVA, 1);
    __VISetTiming(0);
    VISetGamma(VI_GM_1_0);
    VISetTrapFilter(FALSE);
    __VISetVolume(142, 142);
    VISetRGBOverDrive(0);
    __VISetVBICtrl(0, 0, 0);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    data[0] = 0x59;
    data[1] = 0;
    __VISendI2CData(0xE0, data, sizeof(data));
    WaitMicroTime(2);
    VIFlush();
    VIWaitForRetrace();
    __VISet3in1Output(1);
}

void __VISetRGBModeImm() {
    __VISetVideoMode(VI_VIDEO_MODE_RVA, 0);
}

void __VISetLegacyMode() {
    u32 dtvStatus;

    __VISet3in1Output(0);
    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    __VISetTiming(0);
    VISetGamma(VI_GM_1_0);
    VISetTrapFilter(FALSE);
    __VISetVolume(142, 142);
    VISetRGBOverDrive(0);
    __VISetVBICtrl(0, 0, 0);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    VIFlush();
    VIWaitForRetrace();
    __VISet3in1Output(1);
}

void __VISetDVDMode() {
    u32 dtvStatus;

    __VISet3in1Output(0);
    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    __VISetTiming(1);
    VISetTrapFilter(FALSE);
    VISetGamma(VI_GM_1_0);
    __VISetVolume(142, 142);
    VISetRGBOverDrive(0);
    __VISetVBICtrl(1, 1, 1);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    VIFlush();
    VIWaitForRetrace();
    __VISet3in1Output(1);
}

void __VISetRevolutionMode() {
    u32 dtvStatus;

    __VISet3in1Output(0);
    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    __VISetTiming(0);
    __VISetVolume(142, 142);
    __VISetVBICtrl(0, 0, 0);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    VISetTrapFilter(FALSE);
    VISetRGBOverDrive(0);
    VISetGamma(VI_GM_1_0);
    VIFlush();
    VIWaitForRetrace();
    __VISet3in1Output(1);
}

void __VISetRevolutionModeSimple() {
    u32 dtvStatus;

    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    __VISetTiming(0);
    __VISetVolume(142, 142);
    __VISetVBICtrl(0, 0, 0);
    __VISetCGMSClear();
    VISetWSS(0, 0, 0, 0);
    __VISetWSS();
    VISetClosedCaption(0, 0, 0, 0);
    __VISetClosedCaption();
    __VISetMacrovisionImm(VIZeroACPType);
    VISetRGBOverDrive(0);
    __VISetRGBOverDrive();
    __VISetTrapFilterImm(0);
    __VISetGammaImm(&gammaSet[VI_GM_1_0]);
}

void __VISetRevolutionModeNoRetrace() {
    u32 dtvStatus;

    __VISetCCSEL(TRUE);
    __VISetOverSampling(TRUE);
    dtvStatus = VIGetDTVStatus();
    __VISetYUVSEL(dtvStatus);
    __VISetTiming(0);
    __VISetVolume(142, 142);
    __VISetVBICtrl(0, 0, 0);
    VISetCGMS(0, 0, 0);
    VISetWSS(0, 0, 0, 0);
    VISetClosedCaption(0, 0, 0, 0);
    VISetMacrovision(VI_ACP_TYPE_ZERO);
    VISetTrapFilter(FALSE);
    VISetRGBOverDrive(0);
    VISetGamma(VI_GM_1_0);
    VIFlush();
}

void __VIInit3in1(VITVMode tvMode) {
    u32 videoMode;
    u32 tvFormat;

    tvFormat = (u32)tvMode >> 2;
    switch (tvFormat) {
        case VI_NTSC:
            videoMode = VI_VIDEO_MODE_NTSC;
            break;
        case VI_MPAL: {
            videoMode = VI_VIDEO_MODE_MPAL;
            break;
        }
        case VI_PAL:
        case VI_EURGB60: {
            videoMode = VI_VIDEO_MODE_PAL;
            break;
        }
        default: {
            ASSERTMSGLINE(2046, FALSE, "Unkwon TV mode!! TV mode is set to NTSC mode.\n");
            videoMode = VI_VIDEO_MODE_NTSC;
            break;
        }
    }
    __VISetVideoMode(videoMode, 0);
    __VISetRevolutionMode();
}
