#!/usr/bin/env python3

###
# Removes the .comment section from a compiled object file.
#
# The presence of a "CodeWarrior" .comment section appears to change the behavior of the linker.
# Byte-identical functions in an object with get wrongly deduplicated at link time
# (like abs/labs in arith.c) and cause a checksum mismatch.
#
# Usage:
#   python3 tools/strip_comment.py input.o output.o
###

import struct
import sys


def strip_comment(src: str, dst: str) -> bool:
    data = bytearray(open(src, "rb").read())

    if len(data) < 0x34:
        raise ValueError("File too small to be an ELF object")

    if data[:4] != b"\x7fELF":
        raise ValueError("Not an ELF file")

    # 32-bit little/big endian ELF. MWCC objects are big-endian.
    if data[4] != 1:
        raise ValueError("Not a 32-bit ELF file")
    if data[5] == 2:
        byteorder = ">"
    elif data[5] == 1:
        byteorder = "<"
    else:
        raise ValueError("Invalid ELF data encoding")

    shoff = struct.unpack_from(byteorder + "I", data, 0x20)[0]
    shentsize = struct.unpack_from(byteorder + "H", data, 0x2E)[0]
    shnum = struct.unpack_from(byteorder + "H", data, 0x30)[0]
    shstrndx = struct.unpack_from(byteorder + "H", data, 0x32)[0]

    if shentsize < 40:
        raise ValueError("Section header too small")

    # Parse all section headers.
    headers = []
    for i in range(shnum):
        off = shoff + i * shentsize
        raw = data[off : off + shentsize]
        if len(raw) < 40:
            raise ValueError("Truncated section header")
        fields = list(struct.unpack(byteorder + "IIIIIIIIII", raw))
        headers.append(fields)

    # Locate .comment via the section name string table.
    if shstrndx >= shnum:
        raise ValueError("Invalid shstrndx")
    shstr_off = headers[shstrndx][4]
    shstr_size = headers[shstrndx][5]
    shstr = bytes(data[shstr_off : shstr_off + shstr_size])

    comment_idx = None
    for i, fields in enumerate(headers):
        name = shstr[fields[0] : shstr.index(b"\x00", fields[0])]
        if name == b".comment":
            comment_idx = i
            break

    if comment_idx is None:
        return False

    # Remap section indices, dropping .comment.
    old_to_new = {}
    new_idx = 0
    for i in range(shnum):
        if i == comment_idx:
            continue
        old_to_new[i] = new_idx
        new_idx += 1

    new_shnum = shnum - 1

    # Rewrite the section header table without .comment, fixing links.
    newtab = bytearray()
    for i in range(shnum):
        if i == comment_idx:
            continue
        fields = list(headers[i])
        fields[6] = old_to_new.get(fields[6], fields[6])  # sh_link
        fields[7] = old_to_new.get(fields[7], fields[7])  # sh_info
        newtab += struct.pack(byteorder + "IIIIIIIIII", *fields)
    data[shoff : shoff + len(newtab)] = newtab

    struct.pack_into(byteorder + "H", data, 0x30, new_shnum)
    if shstrndx != comment_idx:
        struct.pack_into(byteorder + "H", data, 0x32, old_to_new[shstrndx])

    # Patch symbol table st_shndx values.
    for i in range(shnum):
        if i == comment_idx:
            continue
        if headers[i][1] == 2:  # SHT_SYMTAB
            stroff = headers[i][4]
            strsize = headers[i][5]
            for e in range(strsize // 16):
                o = stroff + e * 16
                ndx = struct.unpack_from(byteorder + "H", data, o + 14)[0]
                if ndx in old_to_new and ndx != 0:
                    struct.pack_into(byteorder + "H", data, o + 14, old_to_new[ndx])

    with open(dst, "wb") as f:
        f.write(bytes(data))
    return True


def main() -> None:
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} input.o output.o")
        sys.exit(1)
    stripped = strip_comment(sys.argv[1], sys.argv[2])
    if not stripped:
        print("No .comment section found")
    sys.exit(0 if stripped else 1)


if __name__ == "__main__":
    main()
