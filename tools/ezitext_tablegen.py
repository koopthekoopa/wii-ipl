def get_combiner_c(combiner: str) -> str:
    if combiner == "ADD":
        return "+"
    elif combiner == "OR":
        return "|"
    elif combiner == "XOR":
        return "^"
    else:
        raise Exception(f"Invalid combiner {repr(combiner)}")


def to_screaming(text: str) -> str:
    output = ""
    for i in range(len(text)):
        if i != 0:
            prevChar = text[i - 1]
        else:
            prevChar = (
                "Z"  # to prevent UpperCamelCase from generating a leading underscore
            )

        char = text[i]

        if char.isupper():
            if len(output) != 0 and not prevChar.isupper():
                output += "_"
        output += char.upper()
    return output


def gen_multiplier(size: int) -> int:
    if size == 0:
        raise Exception(
            "Cannot generate an index multiplier for a table with entry size 0"
        )
    elif size == 2 ** (size.bit_length() - 1):
        return f"((I) << {size.bit_length()})"
    elif size == 9:
        return "(((I) << 3) + (I))"
    else:
        raise Exception(f"Unsupported index multiplier size {size}")


class Part:
    byteOffset = 0x0
    mask = 0b11111111

    def __init__(self, text: str):
        if ":" in text:
            offsetText, maskText = text.strip().split(":")
        else:
            offsetText = text.strip()
            maskText = ""

        self.byteOffset = int(offsetText.strip(), base=0)

        maskText = maskText.strip()
        if maskText != "":
            isHex = maskText.startswith("0x")
            maskText = maskText.replace("_", "0")
            if isHex:
                maskText = maskText.replace("X", "F")
            else:
                maskText = maskText.replace("X", "1")

            self.mask = int(maskText, base=0)
        else:
            self.mask = 0b11111111

    def _mask_bin_rep(self, doReplacements=True) -> str:
        base = bin(0x100 + self.mask)[-8:]
        if doReplacements:
            return "0b" + base.replace("0", "_").replace("1", "X")
        else:
            return "0b" + base

    def __repr__(self):
        if self.mask == 0b11111111:
            return f"0x{hex(self.byteOffset)[2:].upper()}"
        else:
            return f"0x{hex(self.byteOffset)[2:].upper()} : {self._mask_bin_rep()}"

    def bit_count(self) -> int:
        return bin(self.mask)[2:].count("1")

    def emit(
        self,
        tableName: str,
        indexed: bool,
        cast: str,
        bitsToTheRight: int,
        shift: bool,
        combinerText: str,
    ) -> str:
        if self.mask == 0b00000000:
            return "0"

        totalRShift = "".join(reversed(bin(self.mask))).find("1") - bitsToTheRight
        if totalRShift == 0 or not shift:
            shiftText = ""
        elif totalRShift > 0:
            shiftText = f" >> {totalRShift}"
        else:
            shiftText = f" << {-totalRShift}"

        if cast == "ziU8" or totalRShift == 0:
            castText = ""
        else:
            castText = f"({cast})"

        if indexed:
            getByteMacro = f"ZI8_{tableName}_IDXD_BYTE(TAB, I, {self.byteOffset})"
        else:
            getByteMacro = f"ZI8_{tableName}_BYTE(TAB, {self.byteOffset})"

        if self.mask == 0b11111111:
            maskText = ""
        else:
            maskText = f" & {self._mask_bin_rep(False)}"

        if maskText != "":
            unshiftedText = f"({castText}{getByteMacro}{maskText})"
        else:
            unshiftedText = f"{castText}{getByteMacro}"

        if "|" in combinerText:
            return f"{unshiftedText}{shiftText}"
        else:
            return f"({unshiftedText}{shiftText})"


class Field:
    typename = "ziU8"
    name = "unk_field"
    parts = []
    combiners = []
    shift = True

    def __init__(self, text: str):
        type_and_name, rest = text.strip().split(":", 1)

        typename, name = type_and_name.strip().split()
        self.typename = typename.strip()
        self.name = name.strip()

        partsText, flagsText = rest.strip().removeprefix("(").split(")", 1)
        self.parts = [Part(partText) for partText in partsText.split(",")]

        self.combiners = []
        for flagText in flagsText.upper().split():
            flagText = flagText.strip()
            if flagText == "":
                continue

            if flagText == "NOSHIFT":
                self.shift = False
            elif flagText == "SHIFT":
                self.shift = True
            elif flagText == "OR":
                if "OR" not in self.combiners:
                    self.combiners.append("OR")
            elif flagText == "ADD":
                if "ADD" not in self.combiners:
                    self.combiners.append("ADD")
            elif flagText == "NOCOMBINE":
                self.combiners.append("NOCOMBINE")
            else:
                raise Exception(f"Invalid flag {flagText}")

        if len(self.combiners) == 0 and len(self.parts) > 1:
            raise Exception("No combiners specified")

        if "NOCOMBINE" in self.combiners and len(self.combiners) > 1:
            raise Exception("Cannot specify a combiner if NOCOMBINE is set")
        if "NOCOMBINE" in self.combiners:
            self.combiners = []

    def __repr__(self):
        typenameText = (self.typename + "       ")[:7]

        if len(self.parts) > 1 and len(self.combiners) == 0:
            combinersText = "NOCOMBINE"
        else:
            combinersText = " ".join(self.combiners)

        shiftText = "" if self.shift else "NOSHIFT"

        paddedName = (f"{self.name}:" + " " * 14)[: max(14, len(self.name) + 2)]
        return f"{typenameText} {paddedName}{self.parts} {combinersText} {shiftText}"

    # def _get_nocombine_macro_decl(self, tableName: str, indexed: bool) -> str:
    #     if indexed:
    #         indexedNameText = "_IDXD"
    #         indexedVarText = ", I"
    #     else:
    #         indexedNameText = ""
    #         indexedVarText = ""
    #     return f"ZI8_{tableName}{indexedNameText}_{to_screaming(self.name)}_PTR(TAB{indexedVarText})"

    def _get_macro_decl(
        self, tableName: str, indexed: bool, nocombine: bool = False
    ) -> str:
        if indexed:
            indexedNameText = "_IDXD"
            indexedVarText = ", I"
        else:
            indexedNameText = ""
            indexedVarText = ""
        if nocombine:
            nocombineText = "_PTR"
        else:
            nocombineText = ""

        return f"ZI8_{tableName}{indexedNameText}_{to_screaming(self.name)}{nocombineText}(TAB{indexedVarText})"

    def _get_c_type(self) -> str:
        return self.typename.removesuffix("[]")

    def emit(self, tableName: str, indexed: bool, combinerIdx=None) -> str:
        if len(self.combiners) == 0:
            combinerText = ""
        elif len(self.combiners) == 1:
            combinerText = " " + get_combiner_c(self.combiners[0]) + " "
        elif combinerIdx is not None:
            combinerText = " " + get_combiner_c(self.combiners[combinerIdx]) + " "
        else:
            raise Exception(
                "Must specify a combiner index when there is more than 1 combiner"
            )

        if combinerText != "" or len(self.parts) <= 1:
            parts = ["DEFAULT"] * len(self.parts)
            rightOffset = 0
            for i in range(len(self.parts) - 1, -1, -1):
                part = self.parts[i]
                parts[i] = part.emit(
                    tableName,
                    indexed,
                    self._get_c_type(),
                    rightOffset,
                    self.shift,
                    combinerText,
                )
                rightOffset += part.bit_count()

            if len(parts) == 1 and parts[0].startswith("(") and parts[0].endswith(")"):
                combined = f"{combinerText.join(parts)}"
            else:
                combined = f"({combinerText.join(parts)})"
            return f"#define {self._get_macro_decl(tableName, indexed)} {combined}"
        else:
            additionalOffset = min(part.byteOffset for part in self.parts)
            if indexed:
                baseOffsetText = f"ZI8_{tableName}_IDXD_ENTRY_OFFS(TAB, I) + "
            else:
                baseOffsetText = ""
            return f"#define {self._get_macro_decl(tableName, indexed, True)} ((TAB) + {baseOffsetText}{additionalOffset})"


class Table:
    name = "UnknownTable"
    fields = []
    size = 0
    indexed = True
    nonindexed = True

    def __init__(self, text: str):
        text = text.strip()
        name, *fieldTexts = text.splitlines()
        sizeText = ""
        if ":" in name:
            name, sizeText = name.split(":")
        self.name = name.strip()

        self.fields = [Field(fieldText) for fieldText in fieldTexts]

        if sizeText != "":
            self.size = int(sizeText, base=0)
        else:
            self.size = max(
                max(part.byteOffset + 1 for part in field.parts)
                for field in self.fields
            )

    def __repr__(self):
        output = self.name + "<0x" + hex(self.size)[2:].upper() + "> {\n"
        for field in self.fields:
            output += "    "
            output += repr(field)
            output += ",\n"
        output += "}"
        return output

    def emit(self, indexed: bool = True, nonindexed: bool = True):
        lines = []
        tableName = to_screaming(self.name)

        entryOffsMacroName = f"ZI8_{tableName}_IDXD_ENTRY_OFFS"
        if indexed:
            lines.append(f"#define {entryOffsMacroName}(I) {gen_multiplier(self.size)}")

        lines.append(
            f"#define ZI8_{tableName}_ENTRY_SIZE 0x{hex(self.size)[2:].upper()}"
        )

        if indexed:
            lines.append(
                f"#define ZI8_{tableName}_IDXD_BYTE(TAB, I, BYTE_I) ((TAB)[{entryOffsMacroName}(I) + BYTE_I])"
            )
        if nonindexed:
            lines.append(f"#define ZI8_{tableName}_BYTE(TAB, BYTE_I) ((TAB)[BYTE_I])")

        if indexed:
            lines.append(
                f"#define ZI8_{tableName}_IDXD_PTR(TAB, I) ((TAB) + {entryOffsMacroName}(I))"
            )

        for part in self.fields:
            # TODO: Combiners
            if indexed:
                lines.append(part.emit(tableName, True, None))
            if nonindexed:
                lines.append(part.emit(tableName, False, None))

        return "\n".join(lines)


alphaTConv = Table("""
AlphaTConv
ziU16   hdrOnlyCount: (0x0, 0x1) OR
ziWChar startCh:      (0x0, 0x1) OR
ziWChar endCh:        (0x2, 0x3) OR
ziU8    unused4_:     (0x4)
ziU8    unused5_:     (0x5)
ziU16 charOrOffs:     (0x6, 0x7) OR
""")
koreaT9 = Table("""
KoreaT9
ziU8[]  elements: (0x0, 0x1, 0x2, 0x3, 0x4 : 0bXXXX____) NOCOMBINE
ziU8    flagA:    (0x4 : 0b____X___) NOSHIFT
ziU8    unused_:  (0x4 : 0b_____X__) NOSHIFT
ziU32   taOffs:   (0x4 : 0b______XX, 0x5, 0x6) OR
ziWChar char:     (0x7, 0x8) OR
""")
koreaTA = Table("""
KoreaTA
ziU8  flagA:      (0x0 : 0bX_______) NOSHIFT
ziU8  flagB:      (0x0 : 0b_X______) NOSHIFT
ziU8  unused_:    (0x0 : 0b__X_____) NOSHIFT
ziU16 ord:        (0x0 : 0b___XXXXX, 0x1) OR
""")
dawgInfo = Table("""
DAWGInfo
ziU16   childCount:   (0x0, 0x1) ADD
ziWChar char:         (0x2, 0x3) ADD
ziWChar hdrNodecount: (0x4, 0x5) ADD
ziU32   graphNodeOff: (0x4, 0x5, 0x6) ADD
ziU32   graphEndOff:  (0x7, 0x8, 0x9) ADD
""")
dawgHdr = Table("""
DAWGHdr
ziU8  unusedA:   (0x0)
ziU8  unusedB:   (0x1)
ziU16 charsSize: (0x2, 0x3) ADD
""")

# define GET_DAWG_GRAPH_INFO_SIBLING_OFF(NODE) (((ziU16)NODE[0] << 8) + NODE[1])
# define GET_DAWG_GRAPH_INFO_CHAR(NODE) (((ziU16)NODE[2] << 8) + NODE[3])
# define GET_DAWG_GRAPH_INFO_BASE_COUNT(NODE) (((ziU16)NODE[4] << 8) + NODE[5])

print(alphaTConv)
print(alphaTConv.emit(False, True))
print()
print(koreaT9)
print(koreaT9.emit(True, False))
print()
print(koreaTA)
print(koreaTA.emit(False, True))

print(dawgInfo)
print(dawgInfo.emit(False, True))

print(dawgHdr)
print(dawgHdr.emit(False, True))
