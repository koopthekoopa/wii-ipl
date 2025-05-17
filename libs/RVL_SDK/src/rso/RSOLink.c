#include <revolution/rso.h>
#include <revolution/os.h>

#include <string.h>

RSOObjectList   __RSOObjectInfoList;

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

static void RSORelocate(RSORel* rel, int index, u32 offset) {

}

void RSONotifyLink(RSOObjectHeader* rso) NO_INLINE {

}

void RSONotifyUnlink(RSOObjectHeader* rso) NO_INLINE {

}

static RSOImportTable* RSOGetImport(const RSOSymbolHeader* imp) {
    return (RSOImportTable*)imp->tableOffset;
}

static void RSORelocateImportSymbol(RSOObjectHeader* rso, RSOImportTable* impTab, int impIndex) {
    RSORel* rel;
    
    for (rel = &((RSORel*)rso->externalRelOffset)[impTab->relOffset]; rel->info >> 8 == impIndex; rel++) {
        RSORelocate(rel, 0, impTab->value);
    }
}

static int RSOGetNumImportSymbols(RSOSymbolHeader* imp) {
    return imp->tableSize / sizeof(RSOSymbolHeader);
}

void RSOUnresolveImportSymbol(RSOObjectHeader* rsoImp, int index) {
    RSOImportTable* impTab;
    
    impTab = &RSOGetImport(&rsoImp->impHeader)[index];
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

int LocateObject(void* newModule, void* bss, int i_fixed_level) {
    u32                 i;
    RSOSectionInfo*     si;

    RSOObjectHeader*    moduleHeader = (RSOObjectHeader*)newModule;

    RSORel*             intRel;
    RSORel*             extRel;

    RSOSectionInfo*     sectionInfo;

    u32                 a_max;

    moduleHeader->bssSection = 0;

    moduleHeader->info.sectionInfoOffset += (u32)moduleHeader;
    moduleHeader->info.nameOffset += (u32)moduleHeader;
    moduleHeader->internalRelOffset += (u32)moduleHeader;
    moduleHeader->externalRelOffset += (u32)moduleHeader;
    moduleHeader->expHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->expHeader.stringOffset += (u32)moduleHeader;
    moduleHeader->impHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->impHeader.stringOffset += (u32)moduleHeader;

    for (i = 1; i < moduleHeader->info.numSections; i++) {
        si = &((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset)[i];
        if (si->offset != 0) {
            si->offset = (u32)moduleHeader;
        }
        else if (si->size != 0) {
            moduleHeader->bssSection = i;
            si->offset = (u32)bss;
        }
    }

    if (moduleHeader->prologSection) {
        sectionInfo = ((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset);
        moduleHeader->prolog += sectionInfo[moduleHeader->prologSection].offset;
    }
    if (moduleHeader->epilogSection) {
        sectionInfo = ((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset);
        moduleHeader->epilog += sectionInfo[moduleHeader->epilogSection].offset;
    }
    if (moduleHeader->unresolvedSection) {
        sectionInfo = ((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset);
        moduleHeader->unresolved += sectionInfo[moduleHeader->unresolvedSection].offset;
    }

    a_max = moduleHeader->internalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        intRel = &((RSORel*)moduleHeader->internalRelOffset)[i];
        intRel->offset += (u32)moduleHeader;

        sectionInfo = ((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset);
        RSORelocate(intRel, 0, sectionInfo[intRel->info >> 8].offset);
    }

    if (i_fixed_level >= 1) {
        moduleHeader->internalRelSize = 0;
    }

    a_max = moduleHeader->externalRelSize / sizeof(RSORel);
    for (i = 0; i < a_max; i++) {
        extRel = &((RSORel*)moduleHeader->externalRelOffset)[i];
        extRel->offset += (u32)moduleHeader;
    }
    RSOUnresolveImportSymbolAll(moduleHeader);

    if (i_fixed_level <= 1) {
        memset(bss, 0, moduleHeader->bssSize);
    }

    RSONotifyLink(moduleHeader);

    return 1;
}

int RSOStaticLocateObject(void* newModule) {
    RSOObjectHeader*    moduleHeader = ((RSOObjectHeader*)newModule);
    u32                 i;
    u32                 a_max;

    RSOSectionInfo*     si;

    RSORel*             extRel;

    moduleHeader->bssSection = 0;

    moduleHeader->info.sectionInfoOffset += (u32)moduleHeader;
    moduleHeader->info.nameOffset += (u32)moduleHeader;
    moduleHeader->internalRelOffset += (u32)moduleHeader;
    moduleHeader->externalRelOffset += (u32)moduleHeader;
    moduleHeader->expHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->expHeader.stringOffset += (u32)moduleHeader;
    moduleHeader->impHeader.tableOffset += (u32)moduleHeader;
    moduleHeader->impHeader.stringOffset += (u32)moduleHeader;

    a_max = moduleHeader->info.numSections;
    for (i = 1; i < a_max; i++) {
        si = &((RSOSectionInfo*)moduleHeader->info.sectionInfoOffset)[i];
        switch (i) {
            case 1: {
                si->offset = (u32)_f_init;
                break;
            }
            case 2: {
                si->offset = (u32)_f_text;
                break;
            }
            // Consturctors are not allowed.
            case 3: {
                if (si->size != 0) {
                    OSReport("Warrning! .ctors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
            // Desctructors are not allowed.
            case 4: {
                if (si->size != 0) {
                    OSReport("Warrning! .dtors section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
            case 5: {
                si->offset = (u32)_f_rodata;
                break;
            }
            case 6: {
                si->offset = (u32)_f_data;
                break;
            }
            case 7: {
                si->offset = (u32)_f_bss;
                break;
            }
            case 8: {
                si->offset = (u32)_f_sdata;
                break;
            }
            case 11: {
                si->offset = (u32)_f_sbss;
                break;
            }
            case 9: {
                si->offset = (u32)_f_sdata2;
                break;
            }
            case 12: {
                si->offset = (u32)_f_sbss2;
                break;
            }
            // Reserved?
            case 10: {
                si->offset = 0;
                break;
            }
            case 13: {
                si->offset = 0;
                break;
            }
            // Uhh invalid section!!!
            default: {
                if (si->size != 0) {
                    OSReport("Warrning! unknown section[%d]! size=%x\n", i, si->size);
                }
                si->offset = 0;
                break;
            }
        }

        a_max = moduleHeader->externalRelSize / sizeof(RSORel);
        for (i = 0; i < a_max; i++) {
            extRel = &((RSORel*)moduleHeader->externalRelOffset)[i];
            extRel->offset += (u32)moduleHeader;
        }
    }
    return 1;
}
