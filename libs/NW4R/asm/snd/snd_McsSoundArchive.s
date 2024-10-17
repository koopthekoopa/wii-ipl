.include "macros.inc"
.file "snd_McsSoundArchive.cpp"

# 0x8150170C..0x81501724 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x8150170C | size: 0x8
# nw4r::ut::IOStream::GetBufferAlign() const
.fn GetBufferAlign__Q34nw4r2ut8IOStreamCFv, global
/* 8150170C | 38 60 00 01 */	li r3, 0x1
/* 81501710 | 4E 80 00 20 */	blr
.endfn GetBufferAlign__Q34nw4r2ut8IOStreamCFv

# .text:0x8 | 0x81501714 | size: 0x8
# nw4r::ut::IOStream::GetSizeAlign() const
.fn GetSizeAlign__Q34nw4r2ut8IOStreamCFv, global
/* 81501714 | 38 60 00 01 */	li r3, 0x1
/* 81501718 | 4E 80 00 20 */	blr
.endfn GetSizeAlign__Q34nw4r2ut8IOStreamCFv

# .text:0x10 | 0x8150171C | size: 0x8
# nw4r::ut::IOStream::GetOffsetAlign() const
.fn GetOffsetAlign__Q34nw4r2ut8IOStreamCFv, global
/* 8150171C | 38 60 00 01 */	li r3, 0x1
/* 81501720 | 4E 80 00 20 */	blr
.endfn GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
