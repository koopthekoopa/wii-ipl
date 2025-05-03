#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

TEVCOpTable TEVCOpTableST0[5] = {
    {192, 0, 0, 1, 0, 0, 15, 8, 10, 15},   // modulate
    {192, 0, 0, 1, 0, 0, 10, 8, 9, 15},    // decal
    {192, 0, 0, 1, 0, 0, 10, 12, 8, 15},   // blend
    {192, 0, 0, 1, 0, 0, 15, 15, 15, 8},   // replace
    {192, 0, 0, 1, 0, 0, 15, 15, 15, 10},  // passclr
};

TEVCOpTable TEVCOpTableST1[5] = {
    {192, 0, 0, 1, 0, 0, 15, 8, 0, 15},   // modulate
    {192, 0, 0, 1, 0, 0, 0, 8, 9, 15},    // decal
    {192, 0, 0, 1, 0, 0, 0, 12, 8, 15},   // blend
    {192, 0, 0, 1, 0, 0, 15, 15, 15, 8},  // replace
    {192, 0, 0, 1, 0, 0, 15, 15, 15, 0},  // passclr
};

TEVAOpTable TEVAOpTableST0[5] = {
    {193, 0, 0, 1, 0, 0, 7, 4, 5, 7, 0, 0},  // modulate
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 5, 0, 0},  // decal
    {193, 0, 0, 1, 0, 0, 7, 4, 5, 7, 0, 0},  // blend
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 4, 0, 0},  // replace
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 5, 0, 0},  // passclr
};

TEVAOpTable TEVAOpTableST1[5] = {
    {193, 0, 0, 1, 0, 0, 7, 4, 0, 7, 0, 0},  // modulate
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 0, 0, 0},  // decal
    {193, 0, 0, 1, 0, 0, 7, 4, 0, 7, 0, 0},  // blend
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 4, 0, 0},  // replace
    {193, 0, 0, 1, 0, 0, 7, 7, 7, 0, 0, 0},  // passclr
};

void GXSetTevOp(GXTevStageID id, GXTevMode mode) {
    u32* ctmp;
    u32* atmp;
    u32 tevReg;

    if (id == GX_TEVSTAGE0) {
        ctmp = (u32*)TEVCOpTableST0 + mode;
        atmp = (u32*)TEVAOpTableST0 + mode;
    }
    else {
        ctmp = (u32*)TEVCOpTableST1 + mode;
        atmp = (u32*)TEVAOpTableST1 + mode;
    }

    tevReg = __GXData->tevc[id];
    tevReg = (*ctmp & ~0xFF000000) | (tevReg & 0xFF000000);
    GX_WRITE_RAS_REG(tevReg);
    __GXData->tevc[id] = tevReg;

    tevReg = __GXData->teva[id];
    tevReg = (*atmp & ~0xFF00000F) | (tevReg & 0xFF00000F);
    GX_WRITE_RAS_REG(tevReg);
    __GXData->teva[id] = tevReg;

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevColorIn(GXTevStageID stage, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c, GXTevColorArg d) {
    u32 tevReg;

    tevReg = __GXData->tevc[stage];
    SET_REG_FIELD(tevReg, 4, 12, a);
    SET_REG_FIELD(tevReg, 4,  8, b);
    SET_REG_FIELD(tevReg, 4,  4, c);
    SET_REG_FIELD(tevReg, 4,  0, d);

    GX_WRITE_RAS_REG(tevReg);
    __GXData->tevc[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevAlphaIn(GXTevStageID stage, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c, GXTevAlphaArg d) {
    u32 tevReg;

    tevReg = __GXData->teva[stage];
    SET_REG_FIELD(tevReg, 3, 13, a);
    SET_REG_FIELD(tevReg, 3, 10, b);
    SET_REG_FIELD(tevReg, 3,  7, c);
    SET_REG_FIELD(tevReg, 3,  4, d);

    GX_WRITE_RAS_REG(tevReg);
    __GXData->teva[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevColorOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID out_reg) {
    u32 tevReg;

    tevReg = __GXData->tevc[stage];
    SET_REG_FIELD(tevReg, 1, 18, op & 1);
    if (op <= 1) {
        SET_REG_FIELD(tevReg, 2, 20, scale);
        SET_REG_FIELD(tevReg, 2, 16, bias);
    }
    else {
        SET_REG_FIELD(tevReg, 2, 20, (op >> 1) & 3);
        SET_REG_FIELD(tevReg, 2, 16, 3);
    }
    SET_REG_FIELD(tevReg, 1, 19, clamp & 0xFF);
    SET_REG_FIELD(tevReg, 2, 22, out_reg);

    GX_WRITE_RAS_REG(tevReg);
    __GXData->tevc[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevAlphaOp(GXTevStageID stage, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID out_reg) {
    u32 tevReg;

    tevReg = __GXData->teva[stage];
    SET_REG_FIELD(tevReg, 1, 18, op & 1);
    if (op <= 1) {
        SET_REG_FIELD(tevReg, 2, 20, scale);
        SET_REG_FIELD(tevReg, 2, 16, bias);
    }
    else {
        SET_REG_FIELD(tevReg, 2, 20, (op >> 1) & 3);
        SET_REG_FIELD(tevReg, 2, 16, 3);
    }
    SET_REG_FIELD(tevReg, 1, 19, clamp & 0xFF);
    SET_REG_FIELD(tevReg, 2, 22, out_reg);

    GX_WRITE_RAS_REG(tevReg);
    __GXData->teva[stage] = tevReg;
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevColor(GXTevRegID id, GXColor color) {
    u32 rgba;
    u32 regRA;
    u32 regBG;

    rgba = *(u32*)&color;

    regRA = (0xE0 + id * 2) << 24;
    SET_REG_FIELD(regRA, 8, 0, rgba >> 24);
    SET_REG_FIELD(regRA, 8, 12, rgba & 0xFF);

    regBG = (0xE1 + id * 2) << 24;
    SET_REG_FIELD(regBG, 8, 0, (rgba >> 8) & 0xFF);
    SET_REG_FIELD(regBG, 8, 12, (rgba >> 16) & 0xFF);

    GX_WRITE_RAS_REG(regRA);
    GX_WRITE_RAS_REG(regBG);
    GX_WRITE_RAS_REG(regBG);
    GX_WRITE_RAS_REG(regBG);

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevColorS10(GXTevRegID id, GXColorS10 color) {
    u32 sRG;
    u32 sBA;
    u32 regRA;
    u32 regBG;

    sRG = *(u32*)&color;
    sBA = *((u32*)&color + 1);

    regRA = (0xE0 + id * 2) << 24;
    SET_REG_FIELD(regRA, 11,  0, (sRG >> 16) & 0x7FF);
    SET_REG_FIELD(regRA, 11, 12, sBA & 0x7FF);

    regBG = (0xE1 + id * 2) << 24;
    SET_REG_FIELD(regBG, 11, 0, (sBA >> 16) & 0x7FF);
    SET_REG_FIELD(regBG, 11, 12, sRG & 0x7FF);

    GX_WRITE_RAS_REG(regRA);
    GX_WRITE_RAS_REG(regBG);
    GX_WRITE_RAS_REG(regBG);
    GX_WRITE_RAS_REG(regBG);

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevKColor(GXTevKColorID id, GXColor color) {
    u32 rgba;
    u32 regRA, regBG;

    rgba = *(u32*)&color;

    regRA = (0xE0 + id * 2) << 24;
    SET_REG_FIELD(regRA, 8, 0, rgba >> 24);
    SET_REG_FIELD(regRA, 8, 12, rgba & 0xFF);
    SET_REG_FIELD(regRA, 4, 20, 8);

    regBG = (0xE1 + id * 2) << 24;
    SET_REG_FIELD(regBG, 8, 0, (rgba >> 8) & 0xFF);
    SET_REG_FIELD(regBG, 8, 12, (rgba >> 16) & 0xFF);
    SET_REG_FIELD(regBG, 4, 20, 8);

    GX_WRITE_RAS_REG(regRA);
    GX_WRITE_RAS_REG(regBG);

    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevKColorSel(GXTevStageID stage, GXTevKColorSel sel) {
    u32* Kreg;

    Kreg = &__GXData->tevKsel[stage >> 1];
    if (stage & 1) {
        SET_REG_FIELD(*Kreg, 5, 14, sel);
    }
    else {
        SET_REG_FIELD(*Kreg, 5, 4, sel);
    }

    GX_WRITE_RAS_REG(*Kreg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevKAlphaSel(GXTevStageID stage, GXTevKAlphaSel sel) {
    u32* Kreg;

    Kreg = &__GXData->tevKsel[stage >> 1];
    if (stage & 1) {
        SET_REG_FIELD(*Kreg, 5, 19, sel);
    }
    else {
        SET_REG_FIELD(*Kreg, 5, 9, sel);
    }

    GX_WRITE_RAS_REG(*Kreg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevSwapMode(GXTevStageID stage, GXTevSwapSel ras_sel, GXTevSwapSel tex_sel) {
    u32* pTevReg;

    pTevReg = &__GXData->teva[stage];
    SET_REG_FIELD(*pTevReg, 2, 0, ras_sel);
    SET_REG_FIELD(*pTevReg, 2, 2, tex_sel);

    GX_WRITE_RAS_REG(*pTevReg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevSwapModeTable(GXTevSwapSel table, GXTevColorChan red, GXTevColorChan green, GXTevColorChan blue, GXTevColorChan alpha) {
    u32* Kreg;

    Kreg = &__GXData->tevKsel[table * 2];

    SET_REG_FIELD(*Kreg, 2, 0, red);
    SET_REG_FIELD(*Kreg, 2, 2, green);

    GX_WRITE_RAS_REG(*Kreg);

    Kreg = &__GXData->tevKsel[table * 2 + 1];
    SET_REG_FIELD(*Kreg, 2, 0, blue);
    SET_REG_FIELD(*Kreg, 2, 2, alpha);

    GX_WRITE_RAS_REG(*Kreg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1) {
    u32 reg;

    reg = 0xF3000000;

    SET_REG_FIELD(reg, 8, 0, ref0);
    SET_REG_FIELD(reg, 8, 8, ref1);
    SET_REG_FIELD(reg, 3, 16, comp0);
    SET_REG_FIELD(reg, 3, 19, comp1);
    SET_REG_FIELD(reg, 2, 22, op);

    GX_WRITE_RAS_REG(reg);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetZTexture(GXZTexOp op, GXTexFmt fmt, u32 bias) {
    u32 zenv0;
    u32 zenv1;
    u32 type;

    zenv0 = 0;
    SET_REG_FIELD(zenv0, 24, 0, bias);
    SET_REG_FIELD(zenv0, 8, 24, 0xF4);

    zenv1 = 0;
    switch (fmt) {
        case GX_TF_Z8: {
            type = 0;
            break;
        }
        case GX_TF_Z16: {
            type = 1;
            break;
        }
        case GX_TF_Z24X8: {
            type = 2;
            break;
        }
        default: {
            type = 2;
            break;
        }
    }

    SET_REG_FIELD(zenv1, 2, 0, type);
    SET_REG_FIELD(zenv1, 2, 2, op);
    SET_REG_FIELD(zenv1, 8, 24, 0xF5);

    GX_WRITE_RAS_REG(zenv0);
    GX_WRITE_RAS_REG(zenv1);
    __GXData->bpSentNot = GX_FALSE;
}

void GXSetTevOrder(GXTevStageID stage, GXTexCoordID coord, GXTexMapID map, GXChannelID color) {
    u32* ptref;
    u32 tmap;
    u32 tcoord;
    static int c2r[] = { 0, 1, 0, 1, 0, 1, 7, 5, 6 };

    ptref = &__GXData->tref[stage / 2];
    __GXData->texmapId[stage] = map;

    tmap = map & ~GX_TEX_DISABLE;
    tmap = (tmap >= GX_MAX_TEXMAP) ? GX_TEXMAP0 : tmap;

    if (coord >= GX_MAX_TEXCOORD) {
        tcoord = GX_TEXCOORD0;
        __GXData->tevTcEnab = __GXData->tevTcEnab & ~(1 << stage);
    }
    else {
        tcoord = coord;
        __GXData->tevTcEnab = __GXData->tevTcEnab | (1 << stage);
    }

    if (stage & 1) {
        SET_REG_FIELD(*ptref, 3, 12, tmap);
        SET_REG_FIELD(*ptref, 3, 15, tcoord);
        SET_REG_FIELD(*ptref, 3, 19, (color == GX_COLOR_NULL) ? 7 : c2r[color]);
        SET_REG_FIELD(*ptref, 1, 18, (map != GX_TEXMAP_NULL && !(map & GX_TEX_DISABLE)));
    }
    else {
        SET_REG_FIELD(*ptref, 3, 0, tmap);
        SET_REG_FIELD(*ptref, 3, 3, tcoord);
        SET_REG_FIELD(*ptref, 3, 7, (color == GX_COLOR_NULL) ? 7 : c2r[color]);
        SET_REG_FIELD(*ptref, 1, 6, (map != GX_TEXMAP_NULL && !(map & GX_TEX_DISABLE)));
    }

    GX_WRITE_RAS_REG(*ptref);
    __GXData->bpSentNot = GX_FALSE;
    __GXData->dirtyState |= 1;
}

void GXSetNumTevStages(u8 nStages) {
    SET_REG_FIELD(__GXData->genMode, 4, 10, nStages - 1);
    __GXData->dirtyState |= 4;
}
