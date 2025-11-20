#ifndef REVOLUTION_CX_H
#define REVOLUTION_CX_H

#include <revolution/types.h>

typedef u8 CXCompressionType;
#define CX_COMPRESSION_TYPE_LEMPEL_ZIV  0x10
#define CX_COMPRESSION_TYPE_HUFFMAN     0x20
#define CX_COMPRESSION_TYPE_RUN_LENGTH  0x30

#define CX_COMPRESSION_TYPE_MASK        0xF0




#include <revolution/cx/CXUncompression.h>
#include <revolution/cx/CXSecureUncompression.h>
#include <revolution/cx/CXStreamingUncompression.h>

#endif  // REVOLUTION_CX_H
