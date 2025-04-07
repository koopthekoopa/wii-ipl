#ifndef PRIVATE_HOLLYWOOD_FLIPPER_MEM_REGS_H
#define PRIVATE_HOLLYWOOD_FLIPPER_MEM_REGS_H

#define MEM_MARR0_START         0x0000
#define MEM_MARR0_END           0x0002
#define MEM_MARR1_START         0x0004
#define MEM_MARR1_END           0x0006
#define MEM_MARR2_START         0x0008
#define MEM_MARR2_END           0x000A
#define MEM_MARR3_START         0x000C
#define MEM_MARR3_END           0x000E

#define MEM_MARR_CONTROL        0x0010

#define MEM_CP_BW_DIAL          0x0012
#define MEM_TC_BW_DIAL          0x0014
#define MEM_PE_BW_DIAL          0x0016
#define MEM_CPUR_BW_DIAL        0x0018
#define MEM_CPUW_BW_DIAL        0x001A

#define MEM_INT_ENBL            0x001C
#define MEM_INT_STAT            0x001E
#define MEM_INT_CLR             0x0020
#define MEM_INT_ADDR            0x0022
#define MEM_INT_ADDRL           0x0022
#define MEM_INT_ADDRH           0x0024

#define MEM_REFRESH             0x0026

#define MEM_CONFIG              0x0028

#define MEM_LATENCY             0x002A

#define MEM_RDTORD              0x002E
#define MEM_WRTORD              0x0030

#define MEM_CP_REQCOUNT         0x0032
#define MEM_CP_REQCOUNTH        0x0032
#define MEM_CP_REQCOUNTL        0x0034

#define MEM_TC_REQCOUNT         0x0036
#define MEM_TC_REQCOUNTH        0x0036
#define MEM_TC_REQCOUNTL        0x0038

#define MEM_CPUR_REQCOUNT       0x003A
#define MEM_CPUR_REQCOUNTH      0x003A
#define MEM_CPUR_REQCOUNTL      0x003C

#define MEM_CPUW_REQCOUNT       0x003E
#define MEM_CPUW_REQCOUNTH      0x003E
#define MEM_CPUW_REQCOUNTL      0x0040

#define MEM_DSP_REQCOUNT        0x0042
#define MEM_DSP_REQCOUNTH       0x0042
#define MEM_DSP_REQCOUNTL       0x0044

#define MEM_IO_REQCOUNT         0x0046
#define MEM_IO_REQCOUNTH        0x0046
#define MEM_IO_REQCOUNTL        0x0048

#define MEM_VI_REQCOUNT         0x004A
#define MEM_VI_REQCOUNTH        0x004A
#define MEM_VI_REQCOUNTL        0x004C

#define MEM_PE_REQCOUNT         0x004E
#define MEM_PE_REQCOUNTH        0x004E
#define MEM_PE_REQCOUNTL        0x0050

#define MEM_RF_REQCOUNT         0x0052
#define MEM_RF_REQCOUNTH        0x0052
#define MEM_RF_REQCOUNTL        0x0054

#define MEM_FI_REQCOUNT         0x0056
#define MEM_FI_REQCOUNTH        0x0056
#define MEM_FI_REQCOUNTL        0x0058

#define MEM_DRV_STRENGTH        0x005A

#define MEM_REFRSH_THHD         0x005C

#define MEM_CPUAHMR_REQCOUNT    0x0060
#define MEM_CPUAHMR_REQCOUNTH   0x0060
#define MEM_CPUAHMR_REQCOUNTL   0x0062

#define MEM_CPUAHMW_REQCOUNT    0x0064
#define MEM_CPUAHMW_REQCOUNTH   0x0064
#define MEM_CPUAHMW_REQCOUNTL   0x0066

#define MEM_DMAAHMR_REQCOUNT    0x0068
#define MEM_DMAAHMR_REQCOUNTH   0x0068
#define MEM_DMAAHMR_REQCOUNTL   0x006A

#define MEM_DMAAHMW_REQCOUNT    0x006C
#define MEM_DMAAHMW_REQCOUNTH   0x006C
#define MEM_DMAAHMW_REQCOUNTL   0x006E

#define MEM_ACC_REQCOUNT        0x0070
#define MEM_ACC_REQCOUNTH       0x0070
#define MEM_ACC_REQCOUNTL       0x0072

#define MEM_DDRREG_ADDR         0x0074

#define MEM_DDRREG_DATA         0x0076

#define MEM_DRV_PSTRENGTH       0x0078

#define MEM_INT_MEM_0           0
#define MEM_INT_MEM_1           1
#define MEM_INT_MEM_2           2
#define MEM_INT_MEM_3           3
#define MEM_INT_MEM_ADDRESS     4

#endif // PRIVATE_HOLLYWOOD_FLIPPER_MEM_REGS_H
