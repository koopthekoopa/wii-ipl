#ifndef NW4R_LYT_RESOURCES_H
#define NW4R_LYT_RESOURCES_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#include <nw4r/ut/binaryFileFormat.h>

#include <nw4r/lyt/resourceAccessor.h>
#include <nw4r/lyt/types.h>

namespace nw4r {
    namespace lyt {
        typedef struct InflationLRTB {
            f32 l;  // 0x00
            f32 r;  // 0x04
            f32 t;  // 0x08
            f32 b;  // 0x0C
        } InflationLRTB;

        typedef struct WindowFrameSize {
            f32 l;  // 0x00
            f32 r;  // 0x04
            f32 t;  // 0x08
            f32 b;  // 0x0C
        } WindowFrameSize;

        class MaterialResourceNum {
            public:
                u8      GetTexMapNum() const        { return detail::GetBits<>(bits, 0, 4); }
                u8      GetTexSRTNum() const        { return detail::GetBits<>(bits, 4, 4); }
                u8      GetTexCoordGenNum() const   { return detail::GetBits<>(bits, 8, 4); }

                bool    HasTevSwapTable() const     { return detail::TestBit<>(bits, 12); }

                u8      GetIndTexSRTNum() const     { return detail::GetBits<>(bits, 13, 2); }
                u8      GetIndTexStageNum() const   { return detail::GetBits<>(bits, 15, 3); }

                u8      GetTevStageNum() const      { return detail::GetBits<>(bits, 18, 5); }

                bool    HasAlphaCompare() const     { return detail::TestBit<>(bits, 23); }
                bool    HasBlendMode() const        { return detail::TestBit<>(bits, 24); }

                u8      GetChanCtrlNum() const      { return detail::GetBits<>(bits, 25, 1); }

                u8      GetMatColNum() const        { return detail::GetBits<>(bits, 27, 1); }

            private:
                u32 bits;
        };

        namespace res {
            /*** COMMON ***/

            typedef struct BinaryFileHeader {
                char    signature[4];   // 0x00
                u16     byteOrder;      // 0x04

                u16     version;        // 0x06

                u32     fileSize;       // 0x08

                u16     headerSize;     // 0x0C
                u16     dataBlocks;     // 0x0E
            } BinaryFileHeader;

            typedef struct DataBlockHeader {
                char    kind[4];    // 0x00
                u32     size;       // 0x04
            } DataBlockHeader;

            /*** ANIMATION ***/

            typedef struct StepKey {
                f32 frame;      // 0x00
                u16 value;      // 0x04
                u16 padding;    // 0x06
            } StepKey;

            typedef struct HermiteKey {
                f32 frame;  // 0x00
                f32 value;  // 0x04
                f32 slope;  // 0x08
            } HermiteKey;

            typedef struct AnimationInfo {
                public:
                    u32 kind;       // 0x00
                    u8  num;        // 0x04
                    u8  padding[3]; // 0x05

                public:
                    static const u32 ANIM_INFO_PANE_PAIN_SRT            = 'RLPA';
                    static const u32 ANIM_INFO_PANE_VERTEX_COLOR        = 'RLVC';
                    static const u32 ANIM_INFO_PANE_VISIBILITY          = 'RLVI';

                    static const u32 ANIM_INFO_MATERIAL_COLOR           = 'RLMC';
                    static const u32 ANIM_INFO_MATERIAL_TEXTURE_PATTERN = 'RLTP';
                    static const u32 ANIM_INFO_MATERIAL_TEXTURE_SRT     = 'RLTS';
                    static const u32 ANIM_INFO_MATERIAL_IND_TEX_SRT     = 'RLIM';
            } AnimationInfo;

            typedef struct AnimationTarget {
                u8  id;             // 0x00
                u8  target;         // 0x01
                u8  curveType;      // 0x02
                u8  padding1;       // 0x03

                u16 keyNum;         // 0x04
                u8  padding2[2];    // 0x06
                u32 keysOffset;     // 0x08
            } AnimationTarget;

            typedef struct AnimationBlock {
                DataBlockHeader blockHeader;            // 0x00
                u16             frameSize;              // 0x08
                u8              loop;                   // 0x0A

                u8              padding1;
                u16             fileNum;                // 0x0C

                u16             animContNum;            // 0x0E
                u32             animContOffsetsOffset;  // 0x10
            } AnimationBlock;

            typedef struct AnimationContent {
                public:
                    enum {
                        ANIMTYPE_PANE = 0,
                        ANIMTYPE_MATERIAL,

                        ANIMTYPE_MAX
                    };

                public:
                    char    name[20];   // 0x00
                    u8      num;        // 0x14
                    u8      type;       // 0x15
                    u8      padding[2]; // 0x16
            } AnimationContent;

            /*** MATERIAL ***/

            typedef struct Texture {
                u32 nameStrOffset;  // 0x00
                u8  type;           // 0x04
                u8  padding[3];
            } Texture;

            typedef struct Material {
                char                name[20];                   // 0x00

                GXColorS10          tevCols[TEVCOLOR_MAX];      // 0x14
                GXColor             tevKCols[GX_MAX_KCOLOR];    // 0x2C

                MaterialResourceNum resNum;                     // 0x3C
            } Material;

            typedef struct TexMap {
                u16 texIdx; // 0x00
                u8  wrapS;  // 0x02
                u8  wrapT;  // 0x03
            } TexMap;

            /*** PANES ***/

            static const u32 FILE_HEADER_SIGNATURE_ANIMATION    = 'RLAN';   // 0x524C414E
            static const u32 FILE_HEADER_SIGNATURE_LAYOUT       = 'RLYT';   // 0x524C5954

            static const u32 OBJECT_SIGNATURE_LAYOUT            = 'lyt1';   // 0x6C797431
            static const u32 OBJECT_SIGNATURE_FONT_LIST         = 'fnl1';   // 0x666E6C31
            static const u32 OBJECT_SIGNATURE_MATERIAL_LIST     = 'mat1';   // 0x6D617431
            static const u32 OBJECT_SIGNATURE_TEXTURE_LIST      = 'txl1';   // 0x74786C31

            static const u32 OBJECT_SIGNATURE_PANE              = 'pan1';   // 0x70696331
            static const u32 OBJECT_SIGNATURE_PANE_CHILD_START  = 'pas1';   // 0x70697331
            static const u32 OBJECT_SIGNATURE_PANE_CHILD_END    = 'pae1';   // 0x70696531

            static const u32 OBJECT_SIGNATURE_PICTURE           = 'pic1';   // 0x70696331
            static const u32 OBJECT_SIGNATURE_BOUNDING          = 'bnd1';   // 0x626E6431
            static const u32 OBJECT_SIGNATURE_WINDOW            = 'wnd1';   // 0x776E6431
            static const u32 OBJECT_SIGNATURE_TEXT_BOX          = 'txt1';   // 0x74787431
            
            static const u32 OBJECT_SIGNATURE_GROUP             = 'grp1';   // 0x67727031
            static const u32 OBJECT_SIGNATURE_GROUP_CHILD_START = 'grs1';   // 0x67727331
            static const u32 OBJECT_SIGNATURE_GROUP_CHILD_END   = 'gre1';   // 0x67726531

            static const u32 OBJECT_SIGNATURE_PANE_ANIM         = 'pai1';   // 0x70616931 (Either "PAne anImation" or... "PAIn")

            typedef struct Pane {
                DataBlockHeader blockHeader;    // 0x00

                u8              flag;           // 0x08
                u8              basePosition;   // 0x09

                u8              alpha;          // 0x0A

                u8              padding;        // 0x0B

                char            name[16];       // 0x0c
                char            userData[8];    // 0x1c

                math::VEC3      translate;      // 0x24
                math::VEC3      rotate;         // 0x30
                math::VEC2      scale;          // 0x3c

                Size            size;           // 0x44
            } Pane;

            typedef struct Bounding : Pane {

            } Bounding;

            typedef struct Picture : public Pane {
                u32 vtxCols[4];     // 0x4C

                u16 materialIdx;    // 0x5C

                u8  texCoordNum;    // 0x5E

                u8  padding[1];     // 0x5F
            } Picture;

            typedef struct Font {
                u32 nameStrOffset;  // 0x00
                u8  type;           // 0x04
                u8  padding[3];
            } Font;

            struct TextBox : public Pane {
                u16     textBufBytes;               // 0x4C
                u16     textStrBytes;               // 0x4E

                u16     materialIdx;                // 0x50

                u16     fontIdx;                    // 0x52
                u8      textPosition;               // 0x54

                u8      padding[3];

                u32     textStrOffset;              // 0x58
                u32     textCols[TEXTCOLOR_MAX];    // 0x5C

                Size    fontSize;                   // 0x64
                f32     charSpace;                  // 0x6C
                f32     lineSpace;                  // 0x70
            };

            typedef struct WindowFrame {
                u16 materialIdx;    // 0x00
                u8  textureFlip;    // 0x02
                u8  padding1;       // 0x03
            } WindowFrame;

            typedef struct WindowContent {
                u32 vtxCols[VERTEXCOLOR_MAX];   // 0x00
                u16 materialIdx;                // 0x10
                u8  texCoordNum;                // 0x12

                u8  padding[1];                 // 0x13
            } WindowContent;

            typedef struct Window : public Pane {
                InflationLRTB   inflation;              // 0x4C
                u8              frameNum;               // 0x5C

                u8              padding1;               // 0x5D
                u8              padding2;               // 0x5E
                u8              padding3;               // 0x5F

                u32             contentOffset;          // 0x60
                u32             frameOffsetTableOffset; // 0x64
            } Window;

            /*** GROUP ***/

            typedef struct Group {
                DataBlockHeader blockHeader;    // 0x00
                char            name[16];       // 0x08
                u16             paneNum;        // 0x18
                u8              padding[2];     // 0x19
            } Group;

            /*** LAYOUT ***/

            typedef struct Layout {
                DataBlockHeader blockHeader;    // 0x00
                u8              originType;     // 0x08

                u8              padding[3];     // 0x09

                Size            layoutSize;     // 0x0c
            } Layout;
        }

        namespace res {
            typedef struct TextureList {
                DataBlockHeader blockHeader;    // 0x00
                u16             texNum;         // 0x08
                u8              padding[2];
            } TextureList;

            typedef struct FontList {
                DataBlockHeader blockHeader;    // 0x00
                u16             fontNum;        // 0x08
                u8              padding[2];
            } FontList;

            typedef struct MaterialList {
                DataBlockHeader blockHeader;    // 0x00
                u16             materialNum;    // 0x08
                u8              padding[2];
            } MaterialList;
        }

        typedef struct ResBlockSet {
            const res::TextureList*     pTextureList;   // 0x00
            const res::FontList*        pFontList;      // 0x04
            const res::MaterialList*    pMaterialList;  // 0x08

            ResourceAccessor*           pResAccessor;   // 0x0c
        } ResBlockSet;
    }
}

#endif // NW4R_LYT_RESOURCES_H
