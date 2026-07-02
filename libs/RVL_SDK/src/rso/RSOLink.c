#include <revolution/os.h>
#include <revolution/rso.h>

#include <string.h>

extern char _f_init[];
extern char _f_text[];

extern char _f_data[];
extern char _f_rodata[];

extern char _f_sdata[];
extern char _f_sdata2[];

extern char _f_bss[];
extern char _f_sbss[];
extern char _f_sbss2[];

/*****************/
/*  From OSLink  */
/*****************/

/* Sections */

#define S_PPC_INIT 1
#define S_PPC_TEXT 2
#define S_PPC_CTORS 3
#define S_PPC_DTORS 4
#define S_PPC_RODATA 5
#define S_PPC_DATA 6
#define S_PPC_BSS 7
#define S_PPC_SDATA 8
#define S_PPC_SDATA2 9
#define S_PPC_SDATA_UNK 10
#define S_PPC_SBSS 11
#define S_PPC_SBSS2 12
#define S_PPC_SBSS_UNK 13
#define S_PPC_241_UNK 241

/* Relocation types */

// clang-format off
//         Name                         Value   Field Calculation
#define R_PPC_NONE 0                //  none    none
#define R_PPC_ADDR32 1              //  word32  S + A
#define R_PPC_ADDR24 2              //  low24*  (S + A) >> 2
#define R_PPC_ADDR16 3              //  half16* S + A
#define R_PPC_ADDR16_LO 4           //  half16  #lo(S + A)
#define R_PPC_ADDR16_HI 5           //  half16  #hi(S + A)
#define R_PPC_ADDR16_HA 6           //  half16  #ha(S + A)
#define R_PPC_ADDR14 7              //  low14*  (S + A) >> 2
#define R_PPC_ADDR14_BRTAKEN 8      //  low14*  (S + A) >> 2
#define R_PPC_ADDR14_BRNTAKEN 9     //  low14*  (S + A) >> 2
#define R_PPC_REL24 10              //  low24*  (S + A - P) >> 2
#define R_PPC_REL14 11              //  low14*  (S + A - P) >> 2
#define R_PPC_REL14_BRTAKEN 12      //  low14*  (S + A - P) >> 2
#define R_PPC_REL14_BRNTAKEN 13     //  low14*  (S + A - P) >> 2

#define R_PPC_GOT16 14              //  half16* G + A
#define R_PPC_GOT16_LO 15           //  half16  #lo(G + A)
#define R_PPC_GOT16_HI 16           //  half16  #hi(G + A)
#define R_PPC_GOT16_HA 17           //  half16  #ha(G + A)
#define R_PPC_PLTREL24 18           //  low24*  (L + A - P) >> 2
#define R_PPC_COPY 19               //  none    none
#define R_PPC_GLOB_DAT 20           //  word32  S + A
#define R_PPC_JMP_SLOT 21           //  none
#define R_PPC_RELATIVE 22           //  word32  B + A

#define R_PPC_LOCAL24PC 23          //  low24*

#define R_PPC_UADDR32 24            //  word32  S + A
#define R_PPC_UADDR16 25            //  half16* S + A
#define R_PPC_REL32 26              //  word32  S + A - P

#define R_PPC_PLT32 27              //  word32  L + A
#define R_PPC_PLTREL32 28           //  word32  L + A - P
#define R_PPC_PLT16_LO 29           //  half16  #lo(L + A)
#define R_PPL_PLT16_HI 30           //  half16  #hi(L + A)
#define R_PPC_PLT16_HA 31           //  half16  #ha(L + A)

#define R_PPC_SDAREL16 32           //  half16* S + A - _SDA_BASE_
#define R_PPC_SECTOFF 33            //  half16* R + A
#define R_PPC_SECTOFF_LO 34         //  half16  #lo(R + A)
#define R_PPC_SECTOFF_HI 35         //  half16  #hi(R + A)
#define R_PPC_SECTOFF_HA 36         //  half16  #ha(R + A)
#define R_PPC_ADDR30 37             //  word30  (S + A - P) >> 2

#define R_PPC_EMB_NADDR32 101       //  uword32 N       (A - S)
#define R_PPC_EMB_NADDR16 102       //  uhalf16 Y       (A - S)
#define R_PPC_EMB_NADDR16_LO 103    //  uhalf16 N       #lo(A - S)
#define R_PPC_EMB_NADDR16_HI 104    //  uhalf16 N       #hi(A - S)
#define R_PPC_EMB_NADDR16_HA 105    //  uhalf16 N       #ha(A - S)
#define R_PPC_EMB_SDAI16 106        //  uhalf16 Y       T
#define R_PPC_EMB_SDA2I16 107       //  uhalf16 Y       U
#define R_PPC_EMB_SDA2REL 108       //  uhalf16 Y       S + A - _SDA2_BASE_
#define R_PPC_EMB_SDA21 109         //  ulow21  N
#define R_PPC_EMB_MRKREF 110        //  none    N
#define R_PPC_EMB_RELSEC16 111      //  uhalf16 Y       V + A
#define R_PPC_EMB_RELST_LO 112      //  uhalf16 N       #lo(W + A)
#define R_PPC_EMB_RELST_HI 113      //  uhalf16 N       #hi(W + A)
#define R_PPC_EMB_RELST_HA 114      //  uhalf16 N       #ha(W + A)
#define R_PPC_EMB_BIT_FLD 115       //  uword32 Y
#define R_PPC_EMB_RELSDA 116        //  uhalf16 Y
// clang-format on

// not used by RSO
/*#define R_DOLPHIN_NOP 201      //  C9h current offset += OSRel.offset
#define R_DOLPHIN_SECTION 202  //  CAh current section = OSRel.section
#define R_DOLPHIN_END 203      //  CBh
#define R_DOLPHIN_MRKREF 204   //  CCh*/

#define ENQUEUE_INFO(queue, info, link)                                                                                                              \
    do {                                                                                                                                             \
        RSOObjectInfo* __prev;                                                                                                                       \
                                                                                                                                                     \
        __prev = (queue)->tail;                                                                                                                      \
        if (__prev == NULL) {                                                                                                                        \
            (queue)->head = (info);                                                                                                                  \
        } else {                                                                                                                                     \
            __prev->link.next = (info);                                                                                                              \
        }                                                                                                                                            \
        (info)->link.prev = __prev;                                                                                                                  \
        (info)->link.next = NULL;                                                                                                                    \
        (queue)->tail = (info);                                                                                                                      \
    } while (FALSE)

#define DEQUEUE_INFO(info, queue, link)                                                                                                              \
    do {                                                                                                                                             \
        RSOObjectInfo* __next;                                                                                                                       \
        RSOObjectInfo* __prev;                                                                                                                       \
                                                                                                                                                     \
        __next = (info)->link.next;                                                                                                                  \
        __prev = (info)->link.prev;                                                                                                                  \
                                                                                                                                                     \
        if (__next == NULL) {                                                                                                                        \
            (queue)->tail = __prev;                                                                                                                  \
        } else {                                                                                                                                     \
            __next->link.prev = __prev;                                                                                                              \
        }                                                                                                                                            \
                                                                                                                                                     \
        if (__prev == NULL) {                                                                                                                        \
            (queue)->head = __next;                                                                                                                  \
        } else {                                                                                                                                     \
            __prev->link.next = __next;                                                                                                              \
        }                                                                                                                                            \
    } while (FALSE)

#define MODULE_SECTION_INFO(module, offset) ((RSOSectionInfo*)(((RSOObjectHeader*)(module))->info.sectionInfoOffset) + offset)

static RSOObjectList __RSOObjectInfoList;

static BOOL LocateObject(void* newModule, void* bss, RSOFixedLevel i_fixed_level);

static void RSOResolveImportSymbol(RSOObjectHeader* rsoImp, int index, void* addr);
static void RSOUnresolveImportSymbol(RSOObjectHeader* rsoImp, int index);
static void RSOUnresolveImportSymbolAll(RSOObjectHeader* rso);

static int FindExportIndex(const RSOObjectHeader* rso, const char* name);

static void RSORelocate(RSORel* rel, int index, u32 offset);
static void RSORelocateImportSymbol(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex);
static void RSORelocateSmallDataSection(RSOObjectHeader* rsoImp, int impIndex, RSOObjectHeader* rsoExp);

static BOOL LinkList(void* i_newRso, void* i_bss, RSOFixedLevel i_fixed_level);

static int checkNeedFarCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr);
static void makeCode(u32 addr, u32* i_buff);
static int cnvFarCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr, u32* i_buff);
static int cnvJumpCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr, u32* i_buff);

#pragma dont_inline on
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
void RSONotifyModuleLoaded(RSOObjectHeader* moduleHeader) {
}

void RSONotifyModuleUnloaded(RSOObjectHeader* moduleHeader) {
}

void RSONotifyPreRSOLink(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader) {
}

void RSONotifyPostRSOLink(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader) {
}

void RSONotifyPreRSOLinkFar(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader, void* buff) {
}

void RSONotifyPostRSOLinkFar(RSOObjectHeader* impHeader, const RSOObjectHeader* expHeader, void* buff) {
}
#else
void RSONotifyLink(RSOObjectHeader* moduleHeader) {
}
void RSONotifyUnlink(RSOObjectHeader* moduleHeader) {
}
#endif
#pragma dont_inline reset

static BOOL LocateObject(void* newModule, void* bss, RSOFixedLevel i_fixed_level) {
    u32 i;
    RSOSectionInfo* si;
    RSOObjectHeader* moduleHeader = (RSOObjectHeader*)newModule;
    RSORel* intRel;
    RSORel* extRel;
    RSOSectionInfo* sectionInfo;
    u32 a_max;

    moduleHeader->bssSection = 0;

    ASSERTLINE(201, moduleHeader->info.version <= RSO_VERSION);

    moduleHeader->info.sectionInfoOffset += (u32)moduleHeader;
    moduleHeader->info.nameOffset += (u32)moduleHeader;
    moduleHeader->internalRelOffset += (u32)moduleHeader;
    moduleHeader->externalRelOffset += (u32)moduleHeader;
    moduleHeader->expHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->expHeader.stringOffset += (u32)moduleHeader;
    moduleHeader->impHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->impHeader.stringOffset += (u32)moduleHeader;

    for (i = S_PPC_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_SECTION_INFO(newModule, i);
        if (si->offset != 0) {
            si->offset += (u32)moduleHeader;
        } else if (si->size != 0) {
            ASSERTLINE(228, moduleHeader->bssSection == 0);
            moduleHeader->bssSection = i;
            si->offset = (u32)bss;
        }
    }

    if (moduleHeader->prologSection != 0) {
        moduleHeader->prolog += MODULE_SECTION_INFO(newModule, moduleHeader->prologSection)->offset;
    }
    if (moduleHeader->epilogSection != 0) {
        moduleHeader->epilog += MODULE_SECTION_INFO(newModule, moduleHeader->epilogSection)->offset;
    }
    if (moduleHeader->unresolvedSection != 0) {
        moduleHeader->unresolved += MODULE_SECTION_INFO(newModule, moduleHeader->unresolvedSection)->offset;
    }

    a_max = moduleHeader->internalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        intRel = &((RSORel*)moduleHeader->internalRelOffset)[i];
        intRel->offset += (u32)moduleHeader;
        sectionInfo = &((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset)[intRel->info >> 8];
        RSORelocate(intRel, 0, sectionInfo->offset);
    }

    if (i_fixed_level >= RSO_FL_INTERNAL) {
        moduleHeader->internalRelSize = 0;
    }

    a_max = moduleHeader->externalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        extRel = &((RSORel*)moduleHeader->externalRelOffset)[i];
        extRel->offset += (u32)moduleHeader;
    }

    RSOUnresolveImportSymbolAll(moduleHeader);
    if (i_fixed_level <= RSO_FL_INTERNAL) {
        memset(bss, 0, moduleHeader->bssSize);
    }
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyModuleLoaded(moduleHeader);
#else
    RSONotifyLink(moduleHeader);
#endif
    return TRUE;
}

BOOL RSOLocateObject(void* newModule, void* bss) {
    return LocateObject(newModule, bss, RSO_FL_NON);
}

BOOL RSOLocateObjectFixed(void* newModule, void* bss) {
    return LocateObject(newModule, bss, RSO_FL_INTERNAL);
}

BOOL RSOStaticLocateObject(void* newModule) {
    RSOObjectHeader* moduleHeader = (RSOObjectHeader*)newModule;
    u32 i;
    u32 a_max;
    RSOSectionInfo* si;
    RSORel* extRel;

    moduleHeader->bssSection = 0;

    moduleHeader->info.sectionInfoOffset += (u32)moduleHeader;
    moduleHeader->info.nameOffset += (u32)moduleHeader;
    moduleHeader->internalRelOffset += (u32)moduleHeader;
    moduleHeader->externalRelOffset += (u32)moduleHeader;
    moduleHeader->expHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->expHeader.stringOffset += (u32)moduleHeader;
    moduleHeader->impHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->impHeader.stringOffset += (u32)moduleHeader;

    for (i = S_PPC_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_SECTION_INFO(newModule, i);
        switch (i) {
            case S_PPC_INIT: {
                si->offset = (u32)_f_init;
                break;
            }
            case S_PPC_TEXT: {
                si->offset = (u32)_f_text;
                break;
            }
            case S_PPC_CTORS: {
                // .ctors is not used
                if (si->size != 0) {
                    OSReport("Warrning! .ctors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
            case S_PPC_DTORS: {
                // .dtors is not used
                if (si->size != 0) {
                    OSReport("Warrning! .dtors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
            case S_PPC_RODATA: {
                si->offset = (u32)_f_rodata;
                break;
            }
            case S_PPC_DATA: {
                si->offset = (u32)_f_data;
                break;
            }
            case S_PPC_BSS: {
                si->offset = (u32)_f_bss;
                break;
            }
            case S_PPC_SDATA: {
                si->offset = (u32)_f_sdata;
                break;
            }
            case S_PPC_SBSS: {
                si->offset = (u32)_f_sbss;
                break;
            }
            case S_PPC_SDATA2: {
                si->offset = (u32)_f_sdata2;
                break;
            }
            case S_PPC_SBSS2: {
                si->offset = (u32)_f_sbss2;
                break;
            }
            case S_PPC_SDATA_UNK: {
                si->offset = 0;
                break;
            }
            case S_PPC_SBSS_UNK: {
                si->offset = 0;
                break;
            }
            default: {
                if (si->size != 0) {
                    OSReport("Warrning! unknown section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
        }
    }

    a_max = moduleHeader->externalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        extRel = &((RSORel*)moduleHeader->externalRelOffset)[i];
        extRel->offset += (u32)moduleHeader;
    }

    return TRUE;
}

BOOL RSOUnLocateObject(void* oldModule) {
    RSOObjectHeader* moduleHeader = (RSOObjectHeader*)oldModule;
    int i;
    int a_max;
    RSORel* extRel;
    RSORel* intRel;
    RSOSectionInfo* si;

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyModuleUnloaded(moduleHeader);
#endif

    a_max = moduleHeader->externalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        extRel = (RSORel*)moduleHeader->externalRelOffset + i;
        extRel->offset -= (u32)moduleHeader;
    }

    a_max = moduleHeader->internalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        intRel = (RSORel*)moduleHeader->internalRelOffset + i;
        intRel->offset -= (u32)moduleHeader;
    }

    if (moduleHeader->prologSection != 0) {
        moduleHeader->prolog -= MODULE_SECTION_INFO(oldModule, moduleHeader->prologSection)->offset;
    }
    if (moduleHeader->epilogSection != 0) {
        moduleHeader->epilog -= MODULE_SECTION_INFO(oldModule, moduleHeader->epilogSection)->offset;
    }
    if (moduleHeader->unresolvedSection != 0) {
        moduleHeader->unresolved -= MODULE_SECTION_INFO(oldModule, moduleHeader->unresolvedSection)->offset;
    }

    for (i = S_PPC_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_SECTION_INFO(oldModule, i);
        if (i == moduleHeader->bssSection) {
            ASSERTLINE(489, si->size != 0);
            moduleHeader->bssSection = 0;
            si->offset = 0;
        } else if (si->offset != 0) {
            si->offset -= (u32)moduleHeader;
        }
    }

    moduleHeader->info.sectionInfoOffset -= (u32)moduleHeader;
    moduleHeader->info.nameOffset -= (u32)moduleHeader;
    moduleHeader->internalRelOffset -= (u32)moduleHeader;
    moduleHeader->externalRelOffset -= (u32)moduleHeader;
    moduleHeader->expHeader.tableOffset -= (u32)moduleHeader;
    moduleHeader->expHeader.stringOffset -= (u32)moduleHeader;
    moduleHeader->impHeader.tableOffset -= (u32)moduleHeader;
    moduleHeader->impHeader.stringOffset -= (u32)moduleHeader;

#if SDK_VERSION < 20090224 || defined(SDK_IPL)
    RSONotifyUnlink(moduleHeader);
#endif

    return TRUE;
}

RSOImportTable* RSOGetImport(const RSOSymbolHeader* imp) {
    return (RSOImportTable*)imp->tableOffset;
}

RSOExportTable* RSOGetExport(const RSOSymbolHeader* exp) {
    return (RSOExportTable*)exp->tableOffset;
}

int RSOLink(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp) {
    RSOSymbolHeader* imp = &rsoImp->impHeader;
    int i;
    int count = 0;
    const char* impName;
    const u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset;

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPreRSOLink(rsoImp, rsoExp);
#endif

    for (i = 0; i < s_max; i++, impTab++) {
        impName = (char*)impTab->strOffset + imp->stringOffset;
        if (impName != NULL) {
            RSORelocateSmallDataSection(rsoImp, i, (RSOObjectHeader*)rsoExp);
            addr = RSOFindExportSymbolAddr(rsoExp, impName);
            if (addr) {
                RSOResolveImportSymbol(rsoImp, i, (void*)addr);
                count++;
            }
        }
    }
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPostRSOLink(rsoImp, rsoExp);
#endif
    return count;
}

void RSOUnLink(RSOObjectHeader* rsoImp, const RSOObjectHeader* rsoExp) {
    RSOSymbolHeader* imp = &rsoImp->impHeader;
    int i;
    const char* impName;
    const u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPreRSOLink(rsoImp, rsoExp);
#endif

    for (i = 0; i < s_max; i++) {
        impName = RSOGetImportSymbolName(imp, i);
        if (impName != NULL) {
            addr = RSOFindExportSymbolAddr(rsoExp, impName);
            if (addr) {
                RSOUnresolveImportSymbol(rsoImp, i);
            }
        }
    }
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPostRSOLink(rsoImp, rsoExp);
#endif
}

RSOHash RSOGetHash(const char* symbolname) {
    RSOHash h = 0;
    u32 g;

    while (*symbolname != 0) {
        h = (h << 4) + *symbolname++;
        g = h & 0xF0000000;
        if (g != 0) {
            h ^= (u32)g >> 0x18U;
        }
        h &= ~g;
    }
    return h;
}

int RSOGetNumImportSymbols(const RSOSymbolHeader* imp) {
    return imp->tableSize / sizeof(RSOImportTable);
}

int RSOGetNumImportSymbolsUnresolved(const RSOObjectHeader* rso) {
    int count = 0;
    int i;
    int s_max = RSOGetNumImportSymbols(&rso->impHeader);

    for (i = 0; i < s_max; i++) {
        if (!RSOIsImportSymbolResolved(rso, i)) {
            count++;
        }
    }

    return count;
}

char* RSOGetImportSymbolName(const RSOSymbolHeader* imp, int index) {
    RSOImportTable* impTab = (RSOImportTable*)((u8*)imp->tableOffset + (index * sizeof(RSOImportTable)));
    return (char*)impTab->strOffset + imp->stringOffset;
}

BOOL RSOIsImportSymbolResolved(const RSOObjectHeader* rso, int index) {
    RSOImportTable* impTab = RSOGetImport(&rso->impHeader) + index;

    if (impTab->value == rso->unresolved) {
        return FALSE;
    }
    return TRUE;
}

BOOL RSOIsImportSymbolResolvedAll(const RSOObjectHeader* rso) {
    int i;
    int s_max = RSOGetNumImportSymbols(&rso->impHeader);

    for (i = 0; i < s_max; i++) {
        if (RSOIsImportSymbolResolved(rso, i) == 0) {
            return FALSE;
        }
    }
    return TRUE;
}

static void RSOResolveImportSymbol(RSOObjectHeader* rsoImp, int index, void* addr) {
    RSOImportTable* impTab = RSOGetImport(&rsoImp->impHeader) + index;
    impTab->value = (u32)addr;
    RSORelocateImportSymbol(rsoImp, impTab, index);
}

static void RSOUnresolveImportSymbol(RSOObjectHeader* rsoImp, int index) {
    RSOImportTable* impTab = RSOGetImport(&rsoImp->impHeader) + index;
    impTab->value = rsoImp->unresolved;
    RSORelocateImportSymbol(rsoImp, impTab, index);
}

static void RSOUnresolveImportSymbolAll(RSOObjectHeader* rso) {
    int i;
    int s_max = RSOGetNumImportSymbols(&rso->impHeader);

    for (i = 0; i < s_max; i++) {
        RSOUnresolveImportSymbol(rso, i);
    }
}

int RSOGetNumExportSymbols(const RSOSymbolHeader* exp) {
    return exp->tableSize / sizeof(RSOExportTable);
}

char* RSOGetExportSymbolName(const RSOSymbolHeader* exp, int index) {
    RSOExportTable* expTab = (RSOExportTable*)((u8*)exp->tableOffset + (index * sizeof(RSOExportTable)));
    return (char*)expTab->strOffset + exp->stringOffset;
}

void* RSOGetExportSymbolAddr(const RSOObjectHeader* rso, int index) {
    RSOExportTable* expTab = (RSOExportTable*)((u8*)rso->expHeader.tableOffset + (index * sizeof(RSOExportTable)));
    RSOSectionInfo* expSec = MODULE_SECTION_INFO(rso, expTab->section);

    return (u8*)expSec->offset + expTab->value;
}

static int FindExportIndex(const RSOObjectHeader* rso, const char* name) {
    RSOHash a_hash = RSOGetHash(name);
    int i;
    const char* expName;
    int s_max = RSOGetNumExportSymbols(&rso->expHeader);
    RSOExportTable* expTab = (RSOExportTable*)rso->expHeader.tableOffset;
    RSOExportTable* a_expTab;
    int a_top = 0;
    int a_last = s_max - 1;
    int a_idx = -1;

    if (s_max <= 0) {
        return -1;
    }

    while (a_idx == -1) {
        i = (a_top + a_last) >> 1;
        a_expTab = &expTab[i];
        if (a_hash > a_expTab->hash) {
            if (a_top == i) {
                a_idx = a_last;
            } else {
                a_top = i;
            }
        } else if (a_hash < a_expTab->hash) {
            if (a_top == i) {
                a_idx = a_top;
            } else {
                a_last = i;
            }
        } else {
            a_idx = i;
        }
    }

    a_expTab = &expTab[a_idx];
    if (a_hash != a_expTab->hash) {
        return -1;
    }

    expName = RSOGetExportSymbolName(&rso->expHeader, a_idx);
    if (strcmp(name, expName) == 0) {
        return a_idx;
    }

    for (i = a_idx + 1; i <= a_last; i++) {
        a_expTab = &expTab[i];
        if (a_hash == a_expTab->hash) {
            expName = RSOGetExportSymbolName(&rso->expHeader, i);
            if (strcmp(name, expName) == 0) {
                return i;
            }
        } else {
            i = a_last + 1;
        }
    }

    for (i = a_idx - 1; i >= a_top; i--) {
        a_expTab = &expTab[i];
        if (a_hash == a_expTab->hash) {
            expName = RSOGetExportSymbolName(&rso->expHeader, i);
            if (strcmp(name, expName) == 0) {
                return i;
            }
            continue;
        } else {
            return -1;
        }
    }

    return -1;
}

void* RSOFindExportSymbolAddr(const RSOObjectHeader* rso, const char* name) {
    int a_idx = FindExportIndex(rso, name);
    if (a_idx == -1) {
        return NULL;
    }
    return RSOGetExportSymbolAddr(rso, a_idx);
}

RSOExportTable* RSOFindExportSymbol(const RSOObjectHeader* rso, const char* name) {
    int a_idx = FindExportIndex(rso, name);
    if (a_idx == -1) {
        return NULL;
    }
    return &((RSOExportTable*)rso->expHeader.tableOffset)[a_idx];
}
#pragma sym on
static void RSORelocate(RSORel* rel, int index, u32 offset) {
    u32* p;
    u32 x;
    u32 y;
    RSORel* targetRel = &rel[index];

    p = (u32*)targetRel->offset;

    /* From OSLink */
    switch ((u8)rel->info) {
        case R_PPC_NONE: {
            break;
        }
        case R_PPC_ADDR32: {
            x = offset + rel->addend;
            *p = x;
            break;
        }
        case R_PPC_ADDR24: {
            x = offset + rel->addend;
            *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
            break;
        }
        case R_PPC_ADDR16: {
            x = offset + rel->addend;
            *(u16*)p = (u16)(x & 0xFFFF);
            break;
        }
        case R_PPC_ADDR16_LO: {
            x = offset + rel->addend;
            *(u16*)p = (u16)(x & 0xFFFF);
            break;
        }
        case R_PPC_ADDR16_HI: {
            x = offset + rel->addend;
            *(u16*)p = (u16)(((x >> 16) & 0xFFFF));
            break;
        }
        case R_PPC_ADDR16_HA: {
            x = offset + rel->addend;
            *(u16*)p = (u16)(((x >> 16) + ((x & 0x8000) ? 1 : 0)) & 0xFFFF);
            break;
        }
        case R_PPC_ADDR14:
        case R_PPC_ADDR14_BRTAKEN:
        case R_PPC_ADDR14_BRNTAKEN: {
            x = offset + rel->addend;
            *p = (*p & ~0x0000FFFC) | (x & 0x0000FFFC);
            break;
        }
        case R_PPC_REL24: {
            x = offset + rel->addend - (u32)p;
            *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
            x = offset + rel->addend;
            y = ((u32)p & ~0x03FFFFFC) | ((((u32)p & 0x03FFFFFC) + (*p & 0x03FFFFFC)) & 0x03FFFFFC);
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
            if (((u32)x != 0) && (x != y)) {
                *p = (u32)((*p & ~0x03FFFFFC) | 0x03FF0000 | 0xFFFC);
            }
#endif
            break;
        }
        case R_PPC_REL14:
        case R_PPC_REL14_BRTAKEN:
        case R_PPC_REL14_BRNTAKEN: {
            x = offset + rel->addend - (u32)p;
            *p = (*p & ~0x0000FFFC) | (x & 0x0000FFFC);
            break;
        }
        case R_PPC_EMB_SDA21: {
            /* leave it to RSORelocateSmallDataSection! */
            break;
        }
        default: {
            OSReport("OSLink: unknown relocation type %3d\n", (u8)rel->info);
            break;
        }
    }

    DCFlushRange(p, 32);
    ICInvalidateRange(p, 32);
}

static void RSORelocateImportSymbol(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex) {
    RSORel* rel = (RSORel*)((u8*)rso->externalRelOffset + impTab->relOffset);
    while ((rel->info >> 8) == impIndex) {
        RSORelocate(rel, 0, impTab->value);
        rel++;
    }
}

static void RSORelocateSmallDataSection(RSOObjectHeader* rsoImp, int impIndex, RSOObjectHeader* rsoExp) {
    u8* p;
    u32 x;
    u32 base;
    const char* impName;
    RSOImportTable* impTab = RSOGetImport(&rsoImp->impHeader) + impIndex;
    RSOExportTable* expTab;
    RSOExportTable* baseTab;
    RSORel* rel;
    RSOSectionInfo* si;

    impName = RSOGetImportSymbolName(&rsoImp->impHeader, impIndex);
    rel = (RSORel*)((u8*)rsoImp->externalRelOffset + impTab->relOffset);

    while ((rel->info >> 8) == impIndex) {
        if ((u8)rel->info == 0x6D) {
            p = (u8*)rel->offset;
            switch (rel->offset & 3) {
                case 0: {
                    p++;
                    break;
                }
                case 2: {
                    p--;
                    break;
                }
                case 3: {
                    p -= 2;
                    break;
                }
            }
            expTab = RSOFindExportSymbol(rsoExp, impName);
            if (expTab) {
                switch (expTab->section) {
                    case S_PPC_SDATA:
                    case S_PPC_SBSS: {
                        *p = (u8)((*p & ~31) | 0xD);
                        baseTab = RSOFindExportSymbol(rsoExp, "_SDA_BASE_");
                        if (baseTab == NULL) {
                            rel++;
                            continue;
                        } else {
                            base = baseTab->value;
                        }
                        break;
                    }
                    case S_PPC_SDATA2:
                    case S_PPC_SBSS2: {
                        *p = (u8)((*p & ~31) | 2);
                        baseTab = RSOFindExportSymbol(rsoExp, "_SDA2_BASE_");
                        if (baseTab == NULL) {
                            rel++;
                            continue;
                        } else {
                            base = baseTab->value;
                        }
                        break;
                    }
                    case S_PPC_SDATA_UNK:
                    case S_PPC_SBSS_UNK: {
                        *p = (u8)(*p & ~31);
                        base = 0;
                        break;
                    }
                    case S_PPC_241_UNK: {
                        OSReport("ERROR: incorrect R_PPC_EMB_SDA21 data.\n");
                        break;
                    }
                    default: {
                        OSReport("ERROR: incorrect R_PPC_EMB_SDA21 data.\n");
                        break;
                    }
                }
                p++;
                si = MODULE_SECTION_INFO(&rsoExp->info, expTab->section);
                x = expTab->value + si->offset + rel->addend - base;
                *(u16*)p = x;
                p--;

                DCFlushRange(p, 32);
                ICInvalidateRange(p, 32);
            }
        }
        rel++;
    }
}

BOOL RSOListInit(void* i_staticRso) {
    int r;
    RSOObjectHeader* a_rsoInfo = (RSOObjectHeader*)i_staticRso;

    __RSOObjectInfoList.head = __RSOObjectInfoList.tail = NULL;
    r = RSOStaticLocateObject(i_staticRso);
    ENQUEUE_INFO(&__RSOObjectInfoList, &a_rsoInfo->info, link);

    return r;
}

static BOOL LinkList(void* i_newRso, void* i_bss, RSOFixedLevel i_fixed_level) {
    int r;
    RSOObjectHeader* a_rsoInfo = (RSOObjectHeader*)i_newRso;
    RSOObjectInfo* a_target;

    r = LocateObject((RSOObjectHeader*)i_newRso, i_bss, i_fixed_level);
    if (!r) {
        return FALSE;
    }

    for (a_target = __RSOObjectInfoList.head; a_target; a_target = a_target->link.next) {
        RSOLink((RSOObjectHeader*)a_rsoInfo, (RSOObjectHeader*)a_target);
        RSOLink((RSOObjectHeader*)a_target, (RSOObjectHeader*)a_rsoInfo);
    }
    ENQUEUE_INFO(&__RSOObjectInfoList, (RSOObjectInfo*)i_newRso, link);
    if (i_fixed_level >= RSO_FL_EXTERNAL) {
        memset(i_bss, 0, a_rsoInfo->bssSize);
        a_rsoInfo->externalRelSize = 0;
        a_rsoInfo->impHeader.tableSize = 0;
    }
    return TRUE;
}

BOOL RSOLinkList(void* i_newRso, void* i_bss) {
    return LinkList(i_newRso, i_bss, RSO_FL_NON);
}

BOOL RSOLinkListFixed(void* i_newRso, void* i_bss, RSOFixedLevel i_fixed_level) {
    if (i_fixed_level > RSO_FL_EXTERNAL) {
        ASSERTLINE(1430, 0);
        return FALSE;
    }

    return LinkList(i_newRso, i_bss, i_fixed_level);
}

BOOL RSOUnLinkList(void* i_oldRso) {
    RSOObjectInfo* objectInfo = (RSOObjectInfo*)i_oldRso;
    RSOObjectInfo* a_target;

    if (objectInfo->link.next == NULL && objectInfo->link.prev == NULL) {
        return FALSE;
    }

    DEQUEUE_INFO(objectInfo, &__RSOObjectInfoList, link);

    for (a_target = __RSOObjectInfoList.head; a_target; a_target = a_target->link.next) {
        RSOUnLink((RSOObjectHeader*)a_target, (RSOObjectHeader*)objectInfo);
        RSOUnLink((RSOObjectHeader*)objectInfo, (RSOObjectHeader*)a_target);
    }

    RSOUnLocateObject((RSOObjectHeader*)i_oldRso);
    return TRUE;
}

u32 RSOGetFixedSize(void* i_rso, RSOFixedLevel i_fixed_level) {
    RSOObjectHeader* a_rsoInfo = (RSOObjectHeader*)i_rso;

    switch (i_fixed_level) {
        case RSO_FL_NON: {
            return 0;
        }
        case RSO_FL_INTERNAL: {
            return a_rsoInfo->internalRelOffset;
        }
        case RSO_FL_EXTERNAL: {
            return a_rsoInfo->externalRelOffset;
        }
        default: {
            ASSERTLINE(1495, 0);
            return 0;
        }
    }
}

static int checkNeedFarCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr) {
    RSORel* rel;
    u32 offset;
    u32* p;
    u32 x;
    u32 y;

    for (rel = (RSORel*)((u8*)rso->externalRelOffset + impTab->relOffset); (rel->info >> 8) == impIndex; rel++) {
        if ((u8)rel->info == 0xA) {
            offset = addr;
            p = (u32*)rel->offset;
            x = (offset + rel->addend) - (u32)p;
            *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
            x = offset + rel->addend;
            y = ((u32)p & ~0x03FFFFFC) | ((((u32)p & 0x03FFFFFC) + (*p & 0x03FFFFFC)) & 0x03FFFFFC);
            if (x != 0 && x != y) {
                return 1;
            }
        }
    }
    return 0;
}

static void makeCode(u32 addr, u32* i_buff) {
    i_buff[0] = 0x91810004;                                                             // stw r12, 0x0004
    i_buff[1] = (u32)((u16)((addr >> 0x10) + ((addr & 0x8000) ? 1 : 0)) | 0x3D800000);  // lis r12, addr@ha
    i_buff[2] = (u32)((u16)addr | 0x398C0000);                                          // addi r12, r12, addr@l
    i_buff[3] = 0x7D8903A6;                                                             // mtctr r12
    i_buff[4] = 0x81810004;                                                             // lwz r12, 0x0004
    i_buff[5] = 0x4E800420;                                                             // bctr
}

static int cnvFarCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr, u32* i_buff) {
    RSORel* rel;
    u32 offset;
    u32* p;
    u32 x;
    u32 y;
    int i_sw = 0;

    for (rel = (RSORel*)((u8*)rso->externalRelOffset + impTab->relOffset); (rel->info >> 8) == impIndex; rel++) {
        if ((u8)rel->info == 0xA) {
            offset = addr;
            p = (u32*)rel->offset;
            x = (offset + rel->addend) - (u32)p;
            *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
            x = offset + rel->addend;
            y = ((u32)p & ~0x03FFFFFC) | ((((u32)p & 0x03FFFFFC) + (*p & 0x03FFFFFC)) & 0x03FFFFFC);
            if (x != 0 && x != y) {
                if (i_sw == 0) {
                    makeCode(addr, i_buff);
                    i_sw = 1;
                }
                x = (u32)i_buff - (u32)p;
                if ((x > 0xFE000001) || (x < 0x01FFFFFF)) {
                    *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
                    DCFlushRange(p, 32);
                    ICInvalidateRange(p, 32);
                    continue;
                } else {
                    i_sw = -1;
                    break;
                }
            }
        }
    }
    return i_sw;
}

static int cnvJumpCode(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex, u32 addr, u32* i_buff) {
    RSORel* rel;
    u32 offset;
    u32* p;
    u32 x;
    u32 y;
    int i_sw = 0;

    for (rel = (RSORel*)((u8*)rso->externalRelOffset + impTab->relOffset); (rel->info >> 8) == impIndex; rel++) {
        if ((u8)rel->info == 0xA) {
            offset = addr;
            p = (u32*)rel->offset;
            x = (offset + rel->addend) - (u32)p;
            *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
            x = offset + rel->addend;
            y = ((u32)p & ~0x03FFFFFC) | ((((u32)p & 0x03FFFFFC) + (*p & 0x03FFFFFC)) & 0x03FFFFFC);
            if (x != 0 && x != y) {
                i_sw = 1;
                x = (u32)i_buff - (u32)p;
                if ((x > 0xFE000001) || (x < 0x01FFFFFF)) {
                    *p = (*p & ~0x03FFFFFC) | (x & 0x03FFFFFC);
                    DCFlushRange(p, 32);
                    ICInvalidateRange(p, 32);
                    continue;
                } else {
                    i_sw = -1;
                    break;
                }
            }
        }
    }
    return i_sw;
}

int RSOGetFarCodeSize(RSOObjectHeader* i_rsoImp, const RSOObjectHeader* i_rsoExp) {
    RSOSymbolHeader* imp = &i_rsoImp->impHeader;
    int i;
    int count = 0;
    char* impName;
    u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset;

    for (i = 0; i < s_max; i++, impTab++) {
        impName = (char*)impTab->strOffset + (u32)imp->stringOffset;
        if (impName != NULL) {
            addr = RSOFindExportSymbolAddr(i_rsoExp, impName);
            if (addr && checkNeedFarCode(i_rsoImp, (RSOImportTable*)impTab, i, (u32)addr) != 0) {
                count++;
            }
        }
    }
    return count * RSO_FAR_JUMP_SIZE;
}

int RSOLinkFar(RSOObjectHeader* i_rsoImp, const RSOObjectHeader* i_rsoExp, void* i_buff) {
    RSOSymbolHeader* imp = &i_rsoImp->impHeader;
    int i;
    int count = 0;
    char* impName;
    u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset;
    u32* r_buff = (u32*)i_buff;
    int ret;

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPreRSOLinkFar(i_rsoImp, i_rsoExp, i_buff);
#endif

    for (i = 0; i < s_max; i++, impTab++) {
        impName = (char*)impTab->strOffset + imp->stringOffset;
        if (impName != NULL) {
            addr = RSOFindExportSymbolAddr(i_rsoExp, impName);
            if (addr) {
                ret = cnvFarCode(i_rsoImp, (RSOImportTable*)impTab, i, (u32)addr, (u32*)r_buff);
                if (ret == 1) {
                    count++;
                    r_buff += (RSO_FAR_JUMP_SIZE / sizeof(*r_buff));
                    continue;
                }
                if (ret == -1) {
                    count = -1;
                } else {
                    continue;
                }
                break;
            }
        }
    }
    DCFlushRange(i_buff, count * RSO_FAR_JUMP_SIZE);
    ICInvalidateRange(i_buff, count * RSO_FAR_JUMP_SIZE);
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPostRSOLinkFar(i_rsoImp, i_rsoExp, i_buff);
#endif
    return count;
}

int RSOGetJumpCodeSize(const RSOObjectHeader* i_rsoExp) {
    return RSOGetNumExportSymbols(&i_rsoExp->expHeader) * RSO_FAR_JUMP_SIZE;
}

void RSOMakeJumpCode(const RSOObjectHeader* i_rsoExp, void* i_buff) {
    int s_max = RSOGetNumExportSymbols(&i_rsoExp->expHeader);
    u32* r_buff = (u32*)i_buff;
    u32 a_addr;
    int i;

    for (i = 0; i < s_max; i++) {
        a_addr = (u32)RSOGetExportSymbolAddr(i_rsoExp, i);
        makeCode(a_addr, r_buff);
        r_buff += (RSO_FAR_JUMP_SIZE / sizeof(*r_buff));
    }
    DCFlushRange(i_buff, s_max * RSO_FAR_JUMP_SIZE);
    ICInvalidateRange(i_buff, s_max * RSO_FAR_JUMP_SIZE);
}

int RSOLinkJump(RSOObjectHeader* i_rsoImp, const RSOObjectHeader* i_rsoExp, void* i_buff) {
    RSOSymbolHeader* imp = &i_rsoImp->impHeader;
    int i;
    int count = 0;
    char* impName;
    u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset;
    u32* a_buff = (u32*)i_buff;
    int a_idx;
    u32* r_buff;
    int ret;

#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPreRSOLinkFar(i_rsoImp, i_rsoExp, i_buff);
#endif

    for (i = 0; i < s_max; i++, impTab++) {
        impName = (char*)impTab->strOffset + imp->stringOffset;
        if (impName != NULL) {
            a_idx = FindExportIndex(i_rsoExp, impName);
            if (a_idx >= 0) {
                addr = RSOGetExportSymbolAddr(i_rsoExp, a_idx);
                ret = cnvJumpCode(i_rsoImp, (RSOImportTable*)impTab, i, (u32)addr, &a_buff[a_idx * (RSO_FAR_JUMP_SIZE / (int)sizeof(*r_buff))]);
                if (ret == 1) {
                    count++;
                    continue;
                }
                if (ret == -1) {
                    count = -1;
                } else {
                    continue;
                }
                break;
            }
        }
    }
#if SDK_VERSION > 20090224 && !defined(SDK_IPL)
    RSONotifyPostRSOLinkFar(i_rsoImp, i_rsoExp, i_buff);
#endif
    return count;
}
