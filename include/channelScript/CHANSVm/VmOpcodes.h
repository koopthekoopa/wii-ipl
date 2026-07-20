#ifndef CHANS_VM_OPCODES_H
#define CHANS_VM_OPCODES_H

#ifdef __cplusplus
extern "C" {
#endif

// clang-format off

enum CHANSVmOpcode {
    /* 0x00-0x3F: Base instruction set (opcode & 0xC0 == 0) */

    /* Stack & flow */
    CHANS_VM_OP_RETURN              = 0x00,
    CHANS_VM_OP_RETURN_VALUE        = 0x01,
    CHANS_VM_OP_IS_CLASS            = 0x02,
    CHANS_VM_OP_NEW_ARRAY           = 0x03,
    CHANS_VM_OP_PUSH                = 0x04,
    CHANS_VM_OP_POP                 = 0x05,

    /* Binary ops (pop stack as left operand, accumulator as right) */
    CHANS_VM_OP_ADD                 = 0x06,
    CHANS_VM_OP_SUB                 = 0x07,
    CHANS_VM_OP_MUL                 = 0x08,
    CHANS_VM_OP_DIV                 = 0x09,
    CHANS_VM_OP_MOD                 = 0x0A,
    CHANS_VM_OP_BIT_AND             = 0x0B,
    CHANS_VM_OP_BIT_OR              = 0x0C,
    CHANS_VM_OP_BIT_XOR             = 0x0D,
    CHANS_VM_OP_ULSHIFT             = 0x0E,
    CHANS_VM_OP_ARSHIFT             = 0x0F,
    CHANS_VM_OP_CMP_EQ              = 0x10,
    CHANS_VM_OP_CMP_NEQ             = 0x11,
    CHANS_VM_OP_CMP_LT              = 0x12,
    CHANS_VM_OP_CMP_GT              = 0x13,
    CHANS_VM_OP_CMP_LEQ             = 0x14,
    CHANS_VM_OP_CMP_GEQ             = 0x15,

    /* Unary ops */
    CHANS_VM_OP_BIT_NOT             = 0x16,
    CHANS_VM_OP_LOG_NOT             = 0x17,

    /* Immediate load */
    CHANS_VM_OP_LOAD_IMM_1          = 0x18,
    CHANS_VM_OP_ADD_IMM             = 0x19,
    CHANS_VM_OP_SUB_IMM             = 0x1A,
    CHANS_VM_OP_MUL_IMM             = 0x1B,
    CHANS_VM_OP_DIV_IMM             = 0x1C,
    CHANS_VM_OP_MOD_IMM             = 0x1D,
    CHANS_VM_OP_AND_IMM             = 0x1E,
    CHANS_VM_OP_OR_IMM              = 0x1F,
    CHANS_VM_OP_XOR_IMM             = 0x20,
    CHANS_VM_OP_CMP_EQ_IMM          = 0x21,
    CHANS_VM_OP_CMP_NEQ_IMM         = 0x22,
    CHANS_VM_OP_CMP_LT_IMM          = 0x23,
    CHANS_VM_OP_CMP_GT_IMM          = 0x24,
    CHANS_VM_OP_CMP_LEQ_IMM         = 0x25,
    CHANS_VM_OP_CMP_GEQ_IMM         = 0x26,
    CHANS_VM_OP_LOAD_IMM_2          = 0x27,
    CHANS_VM_OP_LOAD_IMM_4          = 0x28,
    CHANS_VM_OP_LOAD_IMM_8          = 0x29,
    CHANS_VM_OP_LOAD_FLOAT          = 0x2A,

    /* Object access */
    CHANS_VM_OP_STORE_UNDEFINED     = 0x2B,
    CHANS_VM_OP_LOAD_STRING_CONST   = 0x2C,
    CHANS_VM_OP_SET_INDEX           = 0x2D,

    /* Calls */
    CHANS_VM_OP_CALL_METHOD         = 0x30,
    CHANS_VM_OP_CALL_FUNCTION       = 0x31,
    CHANS_VM_OP_PROP_GET            = 0x32,
    CHANS_VM_OP_PROP_SET            = 0x33,

    /* Iteration & jump */
    CHANS_VM_OP_GET_PROPERTY_NAME   = 0x34,
    CHANS_VM_OP_JUMP                = 0x35,

    /* Delete */
    CHANS_VM_OP_DELETE_SYMBOL       = 0x36,
    CHANS_VM_OP_DELETE_INDIRECT     = 0x37,

    /* Indirect array access */
    CHANS_VM_OP_LOAD_INDIRECT       = 0x3E,
    CHANS_VM_OP_STORE_INDIRECT      = 0x3F,

    /* 0x40-0x7F: Symbol load/store (opcode & 0xC0 == 0x40) */
    CHANS_VM_OP_SYMBOL_STORE        = 0x20,  // Bit 5: set = store, clear = load
    CHANS_VM_OP_SYMBOL_INDEX_MASK   = 0x1F,  // Bits 4-0: high bits of 13-bit symbol index

    /* 0x80-0xFF: Branch instructions (opcode & 0xC0 == 0x80) */
    CHANS_VM_OP_BRANCH_COND_MASK    = 0x60,  // Bits 5-6: condition type
    CHANS_VM_OP_BRANCH_CASE         = 0x00,  // 0x80-0x9F: strict-equality case match
    CHANS_VM_OP_BRANCH_FALSE        = 0x20,  // 0xA0-0xBF: branch if false
    CHANS_VM_OP_BRANCH_TRUE         = 0x40,  // 0xC0-0xDF: branch if true
    CHANS_VM_OP_BRANCH_ALWAYS       = 0x60,  // 0xE0-0xFF: unconditional branch
};

// clang-format on

/* Opcode class decode (top 2 bits of opcode byte) */
#define VM_OPCLASS(op)          ((op) & 0xC0)
#define VM_OPCLASS_BASE         0x00
#define VM_OPCLASS_SYMBOL       0x40
#define VM_OPCLASS_BRANCH       0x80

/* Branch offset extraction (applied to u8 << 8, not raw opcode) */
#define CHANS_VM_OP_BRANCH_OFFSET_MASK     0x1F00  // (u8 << 8) & this = offset[12:8]
#define CHANS_VM_OP_BRANCH_OFFSET_SIGN     0x1000  // (u8 << 8) & this = sign (1 = backward)
#define CHANS_VM_OP_BRANCH_OFFSET_BIAS     0x1FFF  // backward: pc + offset - bias (2-byte instr)
#define CHANS_VM_OP_BRANCH_OFFSET_BIAS_5   0x1FFC  // same, for 5-byte GET_PROPERTY_NAME instr

/* JUMP 24-bit signed offset (3 operand bytes) */
#define CHANS_VM_OP_JUMP_OFFSET_SIGN     0x800000  // (u8 << 16) & this = sign (1 = backward)
#define CHANS_VM_OP_JUMP_OFFSET_BIAS     0xFFFFFF  // backward: pc + offset - bias

enum VmOpKind {
    VM_OPKIND_ADD   = 0x2B,
    VM_OPKIND_SUB   = 0x2D,
    VM_OPKIND_MUL   = 0x2A,
    VM_OPKIND_DIV   = 0x2F,
    VM_OPKIND_MOD   = 0x25,
    VM_OPKIND_CMP   = 0x43,
    VM_OPKIND_EQ    = 0x3D,
    VM_OPKIND_BIT   = 0x42,
    VM_OPKIND_SHIFT = 0x53,
};

#ifdef __cplusplus
}
#endif

#endif  // CHANS_VM_OPCODES_H
