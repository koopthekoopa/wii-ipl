#ifndef MSL_INTERNAL_MEM_FUNCS_H
#define MSL_INTERNAL_MEM_FUNCS_H

void __copy_longs_aligned(void* pDest, const void* pSrc, unsigned long len);
void __copy_longs_rev_aligned(void* pDest, const void* pSrc, unsigned long len);
void __copy_longs_unaligned(void* pDest, const void* pSrc, unsigned long len);
void __copy_longs_rev_unaligned(void* pDest, const void* pSrc, unsigned long len);

#endif // MSL_INTERNAL_MEM_FUNCS_H
