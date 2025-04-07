#include <revolution/tpl.h>
#include <revolution/os.h>
#include <revolution/gx.h>

void TPLBind(TPLPalette* pal) {
    u16 i;

    OSAssertMsg(pal->versionNumber == 0x20AF30, "invalid version number for texture palette", 25);

    pal->descriptorArray = (TPLDescriptor*)(((u32)(pal->descriptorArray)) + ((u32)pal));

    for (i = 0; i < pal->numDescriptors; i++) {
        if (pal->descriptorArray[i].textureHeader) {
            pal->descriptorArray[i].textureHeader = (TPLHeader*)(((u32)(pal->descriptorArray[i].textureHeader)) + ((u32)pal));
        
            if (!pal->descriptorArray[i].textureHeader->unpacked) {
                pal->descriptorArray[i].textureHeader->data = (char*)((u32)(pal->descriptorArray[i].textureHeader->data) + (u32)pal);
                pal->descriptorArray[i].textureHeader->unpacked = 1;
            }
        }

        if (pal->descriptorArray[i].CLUTHeader) {
            pal->descriptorArray[i].CLUTHeader = (TPLClutHeader*)((u32)(pal->descriptorArray[i].CLUTHeader) + (u32)pal);

            if (!pal->descriptorArray[i].CLUTHeader->unpacked) {
                pal->descriptorArray[i].CLUTHeader->data = (char*)((u32)(pal->descriptorArray[i].CLUTHeader->data) + (u32)pal);
                pal->descriptorArray[i].CLUTHeader->unpacked = 1;
            }
        }
    }
}

TPLDescriptor* TPLGet(TPLPalette* pal, u32 id) {
    return &pal->descriptorArray[id % pal->numDescriptors];
}

void TPLGetGXTexObjFromPalette(TPLPalette* pal, GXTexObj* texObj, u32 id) {
    TPLDescriptor* descriptor = TPLGet(pal, id);
    GXBool hasMipMap = descriptor->textureHeader->minLOD == descriptor->textureHeader->maxLOD ? GX_FALSE : GX_TRUE;
    
    GXInitTexObj(texObj, descriptor->textureHeader->data, descriptor->textureHeader->width, descriptor->textureHeader->height, descriptor->textureHeader->format, descriptor->textureHeader->wrapS, descriptor->textureHeader->wrapT, hasMipMap);
    GXInitTexObjLOD(texObj, descriptor->textureHeader->minFilter,descriptor->textureHeader->magFilter, descriptor->textureHeader->minLOD,descriptor->textureHeader->maxLOD, descriptor->textureHeader->LODBias, GX_FALSE, descriptor->textureHeader->edgeLODEnable, GX_ANISO_1);
}
