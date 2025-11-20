#include <revolution/rso.h>
#include <revolution/os.h>

#include <string.h>

RSOObjectList   __RSOObjectInfoList;

#define JUMP_CODE_INST_COUNT    6
#define JUMP_CODE_SIZE          (sizeof(u32) * JUMP_CODE_INST_COUNT)

enum RSOSection {
    RSO_SECTION_NONE        = 0,    // ---

    RSO_SECTION_INIT        = 1,    // .init
    RSO_SECTION_TEXT        = 2,    // .text
    RSO_SECTION_CTORS       = 3,    // .ctors
    RSO_SECTION_DTORS       = 4,    // .dtors
    RSO_SECTION_RODATA      = 5,    // .rodata
    RSO_SECTION_DATA        = 6,    // .data
    RSO_SECTION_BSS         = 7,    // .bss
    RSO_SECTION_SDATA       = 8,    // .sdata
    RSO_SECTION_SDATA2      = 9,    // .sdata2
    RSO_SECTION_EMB_SDATA0  = 10,   // .PPC.EMB.sdata0
    RSO_SECTION_SBSS        = 11,   // .sbss
    RSO_SECTION_SBSS2       = 12,   // .sbss2
    RSO_SECTION_EMB_SBSS0   = 13,   // .PPC.EMB.sbss0

    RSO_SECTION_EXTABINDEX  = 241,  // extabindex
};

typedef struct RSORel {
    u32 offset; // 0x00
    u32 info;   // 0x04
    u32 addend; // 0x08
} RSORel;

extern char _f_sbss2[];
extern char _f_sdata2[];
extern char _f_sbss[];
extern char _f_sdata[];
extern char _f_bss[];
extern char _f_data[];
extern char _f_rodata[];
extern char _f_text[];
extern char _f_init[];

#define ELF32_R_SYM(val)        ((val) >> 8)
#define ELF32_R_TYPE(val)       ((val) & 0xff)
#define ELF32_R_INFO(sym, type) (((sym) << 8) + ((type) & 0xff))

#define R_PPC_NONE              0
#define R_PPC_ADDR32            1
#define R_PPC_ADDR24            2
#define R_PPC_ADDR16            3
#define R_PPC_ADDR16_LO         4
#define R_PPC_ADDR16_HI         5
#define R_PPC_ADDR16_HA         6
#define R_PPC_ADDR14            7
#define R_PPC_ADDR14_BRTAKEN    8
#define R_PPC_ADDR14_BRNTAKEN   9
#define R_PPC_REL24             10
#define R_PPC_REL14             11
#define R_PPC_REL14_BRTAKEN     12
#define R_PPC_REL14_BRNTAKEN    13

#define R_PPC_EMB_SDA21         109

#define BIND_POINTER(target_, base_)   * (u32*)&(target_) += (u32)(base_);
#define UNBIND_POINTER(target_, base_) * (u32*)&(target_) -= (u32)(base_);

struct mtsi { char _[12]; RSOSectionInfo* at_0x0c; };
#define MODULE_TO_SECTION_INFO(module_) (((struct mtsi*)(module_))->at_0x0c)

#define ADD_LINK_TO_LIST_TAIL(list_, link_) {   \
        RSOObjectInfo* __prev = (list_)->tail;  \
                                                \
        if (__prev == NULL) {                   \
            (list_)->head = (link_);            \
        }                                       \
        else {                                  \
            __prev->link.next = (link_);        \
        }                                       \
                                                \
        (link_)->link.prev = __prev;            \
        (link_)->link.next = NULL;              \
                                                \
        (list_)->tail = (link_);                \
    }

#define REMOVE_LINK_FROM_LIST(list_, link_) {       \
        RSOObjectInfo* __next = (link_)->link.next; \
        RSOObjectInfo* __prev = (link_)->link.prev; \
                                                    \
        if (__next == NULL) {                       \
            (list_)->tail = __prev;                 \
        }                                           \
        else {                                      \
            __next->link.prev = __prev;             \
        }                                           \
                                                    \
        if (__prev == NULL) {                       \
            (list_)->head = __next;                 \
        }                                           \
        else {                                      \
            __prev->link.next = __next;             \
        }                                           \
    }

#define MAKE_RELOC_ADDR24(base_, reloc_)    (((base_) & ~0x03fffffc) | ((reloc_) & 0x03fffffc))
#define MAKE_RELOC_ADDR16(base_, reloc_)    ((reloc_) & 0xffff)
#define MAKE_RELOC_ADDR16_LO(base_, reloc_) ((reloc_) & 0xffff)
#define MAKE_RELOC_ADDR16_HI(base_, reloc_) (((reloc_) >> 16) & 0xffff)
#define MAKE_RELOC_ADDR16_HA(base_, reloc_) ((((reloc_) >> 16) + ((reloc_) & 0x8000 ? 1 : 0)) & 0xffff)
#define MAKE_RELOC_ADDR14(base_, reloc_)    (((base_) & ~0x0000fffc) | ((reloc_) & 0x0000fffc))
#define MAKE_RELOC_REL24(base_, reloc_)     (((base_) & ~0x03fffffc) | ((reloc_) & 0x03fffffc))
#define MAKE_RELOC_REL14(base_, reloc_)     (((base_) & ~0x0000fffc) | ((reloc_) & 0x0000fffc))

#define MAKE_RELOC_EMB_SDA21_REG(hi_, reg_)     (((hi_) & ~0x1f) | (reg_))
#define MAKE_RELOC_EMB_SDA21_ADDR(lo_, addr_)   ((addr_) & 0xffff)

void RSONotifyLink(RSOObjectHeader* moduleHeader) NO_INLINE {}
void RSONotifyUnlink(RSOObjectHeader* moduleHeader) NO_INLINE {}

BOOL LocateObject(void* newModule, void* bss, RSOFixedLevel i_fixed_level);

static void RSOResolveImportSymbol(RSOObjectHeader* rsoImp, int index, void* addr);
static void RSOUnresolveImportSymbol(RSOObjectHeader* rsoImp, int index);
static void RSOUnresolveImportSymbolAll(RSOObjectHeader* rso);

static int FindExportIndex(RSOObjectHeader* rso, char* name);

static void RSORelocate(RSORel* rel, int index, u32 offset);
static void RSORelocateImportSymbol(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex);
static void RSORelocateSmallDataSection(RSOObjectHeader* rsoImp, int impIndex, RSOObjectHeader* rsoExp);

BOOL LocateObject(void* newModule, void* bss, RSOFixedLevel i_fixed_level) {
    u32 i;
    RSOSectionInfo* si;
    RSOObjectHeader* moduleHeader = newModule;
    RSORel* intRel;
    RSORel* extRel;
    RSOSectionInfo* sectionInfo;
    u32 a_max;

    moduleHeader->bssSection = 0;

    BIND_POINTER(moduleHeader->info.sectionInfoOffset, moduleHeader);
    BIND_POINTER(moduleHeader->info.nameOffset, moduleHeader);
    BIND_POINTER(moduleHeader->internalRelOffset, moduleHeader);
    BIND_POINTER(moduleHeader->externalRelOffset, moduleHeader);
    BIND_POINTER(moduleHeader->expHeader.tableOffset, moduleHeader);
    BIND_POINTER(moduleHeader->expHeader.stringOffset, moduleHeader);
    BIND_POINTER(moduleHeader->impHeader.tableOffset, moduleHeader);
    BIND_POINTER(moduleHeader->impHeader.stringOffset, moduleHeader);

    for (i = RSO_SECTION_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_TO_SECTION_INFO(newModule) + i;

        if (si->offset) {
            BIND_POINTER(si->offset, moduleHeader);
        }
        else if (si->size) {
            moduleHeader->bssSection = i;
            si->offset = (u32)bss;
        }
    }

    if (moduleHeader->prologSection) {
        BIND_POINTER(moduleHeader->prolog, MODULE_TO_SECTION_INFO(newModule)[moduleHeader->prologSection].offset);
    }

    if (moduleHeader->epilogSection) {
        BIND_POINTER(moduleHeader->epilog, MODULE_TO_SECTION_INFO(newModule)[moduleHeader->epilogSection].offset);
    }

    if (moduleHeader->unresolvedSection) {
        BIND_POINTER(moduleHeader->unresolved, MODULE_TO_SECTION_INFO(newModule)[moduleHeader->unresolvedSection].offset);
    }

    a_max = moduleHeader->internalRelSize / sizeof(*intRel);

    for (i = 0; i < a_max; i++) {
        intRel = (RSORel*)moduleHeader->internalRelOffset + i;

        BIND_POINTER(intRel->offset, moduleHeader);

        sectionInfo = (RSOSectionInfo*)moduleHeader->info.sectionInfoOffset + ELF32_R_SYM(intRel->info);

        RSORelocate(intRel, 0, sectionInfo->offset);
    }

    if (i_fixed_level >= RSO_FL_INTERNAL) {
        moduleHeader->internalRelSize = 0;
    }

    a_max = moduleHeader->externalRelSize / sizeof(*extRel);

    for (i = 0; i < a_max; i++) {
        extRel = (RSORel*)moduleHeader->externalRelOffset + i;

        BIND_POINTER(extRel->offset, moduleHeader);
    }

    RSOUnresolveImportSymbolAll(moduleHeader);

    if (i_fixed_level <= RSO_FL_INTERNAL) {
        memset(bss, 0, moduleHeader->bssSize);
    }

    RSONotifyLink(moduleHeader);

    return TRUE;
}

BOOL RSOStaticLocateObject(void* newModule) {
    RSOObjectHeader* moduleHeader = newModule;
    u32 i;
    u32 a_max;
    RSOSectionInfo* si;
    RSORel* extRel;

    moduleHeader->bssSection = 0;

    BIND_POINTER(moduleHeader->info.sectionInfoOffset, moduleHeader);
    BIND_POINTER(moduleHeader->info.nameOffset, moduleHeader);
    BIND_POINTER(moduleHeader->internalRelOffset, moduleHeader);
    BIND_POINTER(moduleHeader->externalRelOffset, moduleHeader);
    BIND_POINTER(moduleHeader->expHeader.tableOffset, moduleHeader);
    BIND_POINTER(moduleHeader->expHeader.stringOffset, moduleHeader);
    BIND_POINTER(moduleHeader->impHeader.tableOffset, moduleHeader);
    BIND_POINTER(moduleHeader->impHeader.stringOffset, moduleHeader);

    for (i = RSO_SECTION_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_TO_SECTION_INFO(newModule) + i;

        switch (i) {
            case RSO_SECTION_INIT: {
                si->offset = (u32)_f_init;
                break;
            }
            case RSO_SECTION_TEXT: {
                si->offset = (u32)_f_text;
                break;
            }
            case RSO_SECTION_CTORS: {
                if (si->size) {
                    OSReport("Warrning! .ctors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = (u32)0;
                break;
            }
            case RSO_SECTION_DTORS: {
                if (si->size) {
                    OSReport("Warrning! .dtors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = (u32)0;
                break;
            }
            case RSO_SECTION_RODATA: {
                si->offset = (u32)_f_rodata;
                break;
            }
            case RSO_SECTION_DATA: {
                si->offset = (u32)_f_data;
                break;
            }
            case RSO_SECTION_BSS: {
                si->offset = (u32)_f_bss;
                break;
            }
            case RSO_SECTION_SDATA: {
                si->offset = (u32)_f_sdata;
                break;
            }
            case RSO_SECTION_SBSS: {
                si->offset = (u32)_f_sbss;
                break;
            }
            case RSO_SECTION_SDATA2: {
                si->offset = (u32)_f_sdata2;
                break;
            }
            case RSO_SECTION_SBSS2: {
                si->offset = (u32)_f_sbss2;
                break;
            }
            case RSO_SECTION_EMB_SDATA0: {
                si->offset = (u32)0;
                break;
            }
            case RSO_SECTION_EMB_SBSS0: {
                si->offset = (u32)0;
                break;
            }
            default: {
                if (si->size) {
                    OSReport("Warrning! unknown section[%d]! size=%x\n", i, si->size);
                }
                si->offset = (u32)0;
                break;
            }
        }
    }

    a_max = moduleHeader->externalRelSize / sizeof(*extRel);

    for (i = 0; i < a_max; i++) {
        extRel = (RSORel*)moduleHeader->externalRelOffset + i;

        BIND_POINTER(extRel->offset, moduleHeader);
    }

    return TRUE;
}

BOOL RSOUnLocateObject(void* oldModule) {
    RSOObjectHeader* moduleHeader = oldModule;
    int i;
    int a_max;
    RSORel* extRel;
    RSORel* intRel;
    RSOSectionInfo* si;

    a_max = moduleHeader->externalRelSize / sizeof(*extRel);

    for (i = 0; i < a_max; i++) {
        extRel = (RSORel*)moduleHeader->externalRelOffset + i;

        UNBIND_POINTER(extRel->offset, moduleHeader);
    }

    a_max = moduleHeader->internalRelSize / sizeof(*intRel);

    for (i = 0; i < a_max; i++) {
        intRel = (RSORel*)moduleHeader->internalRelOffset + i;

        UNBIND_POINTER(intRel->offset, moduleHeader);
    }

    if (moduleHeader->prologSection) {
        UNBIND_POINTER(moduleHeader->prolog, MODULE_TO_SECTION_INFO(oldModule)[moduleHeader->prologSection].offset);
    }

    if (moduleHeader->epilogSection) {
        UNBIND_POINTER(moduleHeader->epilog, MODULE_TO_SECTION_INFO(oldModule)[moduleHeader->epilogSection].offset);
    }

    if (moduleHeader->unresolvedSection) {
        UNBIND_POINTER(moduleHeader->unresolved, MODULE_TO_SECTION_INFO(oldModule)[moduleHeader->unresolvedSection].offset);
    }

    for (i = RSO_SECTION_INIT; i < moduleHeader->info.numSections; i++) {
        si = MODULE_TO_SECTION_INFO(oldModule) + i;

        if (i == moduleHeader->bssSection) {
            moduleHeader->bssSection = 0;
            si->offset = 0;
        }
        else if (si->offset) {
            UNBIND_POINTER(si->offset, moduleHeader);
        }
    }

    UNBIND_POINTER(moduleHeader->info.sectionInfoOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->info.nameOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->internalRelOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->externalRelOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->expHeader.tableOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->expHeader.stringOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->impHeader.tableOffset, moduleHeader);
    UNBIND_POINTER(moduleHeader->impHeader.stringOffset, moduleHeader);

    RSONotifyUnlink(moduleHeader);

    return TRUE;
}

RSOImportTable* RSOGetImport(RSOSymbolHeader* imp) {
    return (RSOImportTable*)imp->tableOffset;
}

RSOExportTable* RSOGetExport(RSOSymbolHeader* exp) {
    return (RSOExportTable*)exp->tableOffset;
}

int RSOLink(RSOObjectHeader* rsoImp, RSOObjectHeader* rsoExp) {
    RSOSymbolHeader* imp = &rsoImp->impHeader;
    int i;
    int count = 0;
    char* impName;
    u32* addr;
    int s_max = RSOGetNumImportSymbols(imp);
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset;

    for (i = 0; i < s_max; i++, impTab++) {
        impName = (char*)(impTab->strOffset + imp->stringOffset);
        if (impName == NULL) {
            continue;
        }

        RSORelocateSmallDataSection(rsoImp, i, rsoExp);

        addr = RSOFindExportSymbolAddr(rsoExp, impName);
        if (!addr) {
            continue;
        }

        RSOResolveImportSymbol(rsoImp, i, addr);

        count++;
    }

    return count;
}

void RSOUnLink(RSOObjectHeader* rsoImp, RSOObjectHeader* rsoExp) {
    RSOSymbolHeader* imp = &rsoImp->impHeader;
    int i;
    char* impName;
    u32* addr;
    int s_max = RSOGetNumImportSymbols((RSOSymbolHeader*)imp);

    for (i = 0; i < s_max; i++) {
        impName = RSOGetImportSymbolName((RSOSymbolHeader*)imp, (u32)i);
        if (impName == NULL) {
            continue;
        }

        addr = RSOFindExportSymbolAddr(rsoExp, impName);
        if (!addr) {
            continue;
        }

        RSOUnresolveImportSymbol(rsoImp, i);
    }
}

RSOHash RSOGetHash(char* symbolname) {
    RSOHash h = 0x00000000;
    RSOHash g;

    while (*symbolname) {
        h = (h << 4) +* symbolname++;
        g = h & 0xf0000000;
        if (g) {
            h ^= g >> 24;
        }
        h &= ~g;
    }

    return h;
}

int RSOGetNumImportSymbols(RSOSymbolHeader* imp) {
    return imp->tableSize / sizeof(RSOImportTable);
}

int RSOGetNumImportSymbolsUnresolved(RSOObjectHeader* rso) {
    int count = 0;
    int i;
    int s_max = RSOGetNumImportSymbols(&rso->impHeader);

    for (i = 0; i < s_max; i++) {
        if (!RSOIsImportSymbolResolved(rso, i))
            count++;
    }

    return count;
}

char* RSOGetImportSymbolName(RSOSymbolHeader* imp, int index) {
    RSOImportTable* impTab = (RSOImportTable*)imp->tableOffset + index;
    return (char*)(impTab->strOffset + imp->stringOffset);
}

BOOL RSOIsImportSymbolResolved(RSOObjectHeader* rso, int index) {
    RSOImportTable* impTab = RSOGetImport(&rso->impHeader) + index;

    if (impTab->value == rso->unresolved) {
        return FALSE;
    }

    return TRUE;
}

BOOL RSOIsImportSymbolResolvedAll(RSOObjectHeader* rso) {
    int i;
    int s_max = RSOGetNumImportSymbols(&rso->impHeader);

    for (i = 0; i < s_max; i++) {
        if (!RSOIsImportSymbolResolved(rso, i)) {
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

int RSOGetNumExportSymbols(RSOSymbolHeader* exp) {
    return exp->tableSize / sizeof(RSOExportTable);
}

char* RSOGetExportSymbolName(RSOSymbolHeader* exp, int index) {
    RSOExportTable* expTab = (RSOExportTable*)exp->tableOffset + index;
    return (char*)(expTab->strOffset + exp->stringOffset);
}

void* RSOGetExportSymbolAddr(RSOObjectHeader* rso, int index) {
    RSOExportTable* expTab = (RSOExportTable*)rso->expHeader.tableOffset + index;
    RSOSectionInfo* expSec = (RSOSectionInfo*)rso->info.sectionInfoOffset + expTab->section;

    return (void*)(expSec->offset + expTab->value);
}

static int FindExportIndex(RSOObjectHeader* rso, char* name) {
    RSOHash a_hash = RSOGetHash(name);
    int i;
    char* expName;
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
        a_expTab = expTab + i;

        if (a_hash > a_expTab->hash) {
            if (a_top == i) {
                a_idx = a_last;
            }
            else {
                a_top = i;
            }
        }
        else if (a_hash < a_expTab->hash) {
            if (a_top == i) {
                a_idx = a_top;
            }
            else {
                a_last = i;
            }
        }
        else {
            a_idx = i;
        }
    }

    a_expTab = expTab + a_idx;

    if (a_hash != a_expTab->hash) {
        return -1;
    }

    expName = RSOGetExportSymbolName(&rso->expHeader, a_idx);

    if (strcmp(name, expName) == 0)
        return a_idx;

    for (i = a_idx + 1; i <= a_last; i++) {
        a_expTab = expTab + i;

        if (a_hash == a_expTab->hash) {
            expName = RSOGetExportSymbolName((RSOSymbolHeader*)&rso->expHeader, (u32)i);

            if (strcmp(name, expName) == 0) {
                return i;
            }
        }
        else {
            i = a_last + 1;
        }
    }

    for (i = a_idx - 1; i >= a_top; i--) {
        a_expTab = expTab + i;

        if (a_hash == a_expTab->hash) {
            expName = RSOGetExportSymbolName((RSOSymbolHeader*)&rso->expHeader, (u32)i);

            if (strcmp(name, expName) == 0) {
                return i;
            }
        }
        else {
            return -1;
        }
    }

    return -1;
}

void* RSOFindExportSymbolAddr(RSOObjectHeader* rso, char* name) {
    int a_idx = FindExportIndex(rso, name);

    if (a_idx == -1) {
        return NULL;
    }

    return RSOGetExportSymbolAddr(rso, a_idx);
}

RSOExportTable* RSOFindExportSymbol(RSOObjectHeader* rso, char* name) {
    int a_idx = FindExportIndex(rso, name);

    if (a_idx == -1) {
        return NULL;
    }

    return (RSOExportTable*)rso->expHeader.tableOffset + a_idx;
}

static void RSORelocate(RSORel* rel, int index, u32 offset) {
    u32* p;
    u32 x;
    u32 y;
    RSORel* targetRel = rel + index;

    p = (u32*)targetRel->offset;

    switch (ELF32_R_TYPE(rel->info)) {
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
            *p = MAKE_RELOC_ADDR24(*p, x);
            break;
        }
        case R_PPC_ADDR16: {
            x = offset + rel->addend;
            *(u16*)p = MAKE_RELOC_ADDR16(*p, x);
            break;
        }
        case R_PPC_ADDR16_LO: {
            x = offset + rel->addend;
            *(u16*)p = MAKE_RELOC_ADDR16_LO(*p, x);
            break;
        }
        case R_PPC_ADDR16_HI: {
            x = offset + rel->addend;
            *(u16*)p = MAKE_RELOC_ADDR16_HI(*p, x);
            break;
        }
        case R_PPC_ADDR16_HA: {
            x = offset + rel->addend;
            *(u16*)p = MAKE_RELOC_ADDR16_HA(*p, x);
            break;
        }
        case R_PPC_ADDR14:
        case R_PPC_ADDR14_BRTAKEN:
        case R_PPC_ADDR14_BRNTAKEN: {
            x = offset + rel->addend;
            *p = MAKE_RELOC_ADDR14(*p, x);
            break;
        }
        case R_PPC_REL24: {
            x = offset + rel->addend - (u32)p;
            *p = MAKE_RELOC_REL24(*p, x);
            break;
        }
        case R_PPC_REL14:
        case R_PPC_REL14_BRTAKEN:
        case R_PPC_REL14_BRNTAKEN: {
            x = offset + rel->addend - (u32)p;
            *p = MAKE_RELOC_REL14(*p, x);
            break;
        }
        case R_PPC_EMB_SDA21: {
            /* handled in RSORelocateSmallDataSection */
            break;
        }
        default: {
            // NOTE: Not ELF32_R_TYPE
            OSReport("OSLink: unknown relocation type %3d\n", (u8)rel->info);
            break;
        }
    }

    DCFlushRange(p, OSRoundUp32B(sizeof(*p)));
    ICInvalidateRange(p, OSRoundUp32B(sizeof(*p)));
}

static void RSORelocateImportSymbol(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex) {
    RSORel* rel;

    for (rel = (RSORel*)(rso->externalRelOffset + impTab->relOffset); ELF32_R_SYM(rel->info) == impIndex; rel++) {
        RSORelocate(rel, 0, impTab->value);
    }
}

static void RSORelocateSmallDataSection(RSOObjectHeader* rsoImp, int impIndex, RSOObjectHeader* rsoExp) {
    u8* p;
    u32 x;
    u32 base;
    char* impName;
    RSOImportTable* impTab;
    RSOExportTable* expTab;
    RSOExportTable* baseTab;
    RSORel* rel;

    RSOSectionInfo* si;

    impTab = RSOGetImport((RSOSymbolHeader*)&rsoImp->impHeader) + impIndex;
    impName = RSOGetImportSymbolName(&rsoImp->impHeader, impIndex);
    rel = (RSORel*)(rsoImp->externalRelOffset + impTab->relOffset);

    while (ELF32_R_SYM(rel->info) == impIndex) {
        if (ELF32_R_TYPE(rel->info) == R_PPC_EMB_SDA21) {
            // why not just (u8*)(((rel->offset) & ~0x03) | 0x01)?
            p = (u8*)rel->offset;

            switch (rel->offset & 0x03) {
                case 0x00: {
                    p += 1;
                    break;
                }
                case 0x01: {
                    /* want the address of the second quarter of the u32 */
                    break;
                }
                case 0x02: {
                    p -= 1;
                    break;
                }
                case 0x03: {
                    p -= 2;
                    break;
                }
            }

            expTab = RSOFindExportSymbol(rsoExp, impName);
            if (expTab) {
                switch (expTab->section) {
                    case RSO_SECTION_SDATA:
                    case RSO_SECTION_SBSS: {
                        *p = MAKE_RELOC_EMB_SDA21_REG(*p, 13); // r13 (SysV PPC ABI)

                        baseTab = RSOFindExportSymbol(rsoExp, "_SDA_BASE_");
                        if (baseTab == NULL) {
                            rel++;
                            continue;
                        }

                        base = baseTab->value;
                        break;
                    }
                    case RSO_SECTION_SDATA2:
                    case RSO_SECTION_SBSS2: {
                        *p = MAKE_RELOC_EMB_SDA21_REG(*p, 2); // r2 (PPC EABI)

                        baseTab = RSOFindExportSymbol(rsoExp, "_SDA2_BASE_");
                        if (baseTab == NULL) {
                            rel++;
                            continue;
                        }

                        base = baseTab->value;
                        break;
                    }
                    case RSO_SECTION_EMB_SDATA0:
                    case RSO_SECTION_EMB_SBSS0: {
                        *p = MAKE_RELOC_EMB_SDA21_REG(*p, 0); // (rA|0) (PPC EABI)
                        base = 0;
                        break;
                    }
                    case RSO_SECTION_EXTABINDEX: {
                        OSReport("ERROR: incorrect R_PPC_EMB_SDA21 data.\n");
                        break;
                    }
                    default: {
                        OSReport("ERROR: incorrect R_PPC_EMB_SDA21 data.\n");
                        break;
                    }
                }

                p++;

                si = (RSOSectionInfo*)rsoExp->info.sectionInfoOffset + expTab->section;

                x = expTab->value + si->offset + rel->addend - base;
                *(u16*)p = MAKE_RELOC_EMB_SDA21_ADDR(*p, x);
                p--;

                DCFlushRange(p, OSRoundUp32B(sizeof(*p)));
                ICInvalidateRange(p, OSRoundUp32B(sizeof(*p)));
            }
        }

        rel++;
    }
}

BOOL RSOListInit(void* i_staticRso) {
    BOOL r;
    RSOObjectHeader* a_rsoInfo = i_staticRso;

    __RSOObjectInfoList.head = __RSOObjectInfoList.tail = NULL;

    r = RSOStaticLocateObject(i_staticRso);

    ADD_LINK_TO_LIST_TAIL(&__RSOObjectInfoList, &a_rsoInfo->info);

    return r;
}

static BOOL LinkList(void* i_newRso, void* i_bss, RSOFixedLevel i_fixed_level) {
    BOOL r;
    RSOObjectHeader* a_rsoInfo = i_newRso;
    RSOObjectInfo* a_target;

    r = LocateObject(i_newRso, i_bss, i_fixed_level);
    if (!r) {
        return FALSE;
    }

    for (a_target = __RSOObjectInfoList.head; a_target; a_target = a_target->link.next) {
        RSOLink(a_rsoInfo, (RSOObjectHeader*)a_target);
        RSOLink((RSOObjectHeader*)a_target, a_rsoInfo);
    }

    ADD_LINK_TO_LIST_TAIL(&__RSOObjectInfoList, (RSOObjectInfo*)i_newRso);

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

BOOL RSOUnLinkList(void* i_oldRso) {
    RSOObjectInfo* objectInfo = i_oldRso;
    RSOObjectInfo* a_target;

    if (objectInfo->link.next == NULL && objectInfo->link.prev == NULL) {
        return FALSE;
    }

    REMOVE_LINK_FROM_LIST(&__RSOObjectInfoList, objectInfo);

    for (a_target = __RSOObjectInfoList.head; a_target; a_target = a_target->link.next) {
        RSOUnLink((RSOObjectHeader*)a_target, (RSOObjectHeader*)objectInfo);
        RSOUnLink((RSOObjectHeader*)objectInfo, (RSOObjectHeader*)a_target);
    }

    RSOUnLocateObject(i_oldRso);

    return TRUE;
}
