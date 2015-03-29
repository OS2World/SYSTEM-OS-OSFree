/*
 $Header: d:/project/osfree/src/nonos2/utlapi/utlapi/librectangles.h,v 1.1.1.1 2002/04/05 20:14:18 osfree Exp $
*/

#ifndef _RectAPI_LIBRECTANGLES_H_
#define _RectAPI_LIBRECTANGLES_H_

#define LIBRECTANGLES_INCLUDED

#ifndef INCL_TYPES   /* include base types if not included */
#include <os2def.h>
#endif

BOOL APIENTRY RectCopy(PRECTL prclDst, PRECTL prclSrc);

BOOL APIENTRY RectSet(PRECTL prcl, LONG xLeft, LONG yBottom,
                         LONG xRight, LONG yTop);

BOOL APIENTRY RectIsEmpty(PRECTL prcl);

BOOL APIENTRY RectEqual(PRECTL prcl1, PRECTL prcl2);

BOOL APIENTRY RectSetEmpty(PRECTL prcl);

BOOL APIENTRY RectOffset(PRECTL prcl, LONG cx, LONG cy);

BOOL APIENTRY RectInflate(PRECTL prcl, LONG cx, LONG cy);

BOOL APIENTRY RectPtIn(PRECTL prcl, PPOINTL pptl);

BOOL APIENTRY RectIntersect(PRECTL prclDst, PRECTL prclSrc1,
                               PRECTL prclSrc2);

BOOL APIENTRY RectUnion(PRECTL prclDst, PRECTL prclSrc1,
                           PRECTL prclSrc2);

BOOL APIENTRY RectSubtract(PRECTL prclDst, PRECTL prclSrc1,
                              PRECTL prclSrc2);

/* what with them??
BOOL APIENTRY RectMakeRect(PRECTL pwrc);

BOOL APIENTRY RectMakePoints(PPOINTL pwpt, ULONG cwpt);
*/

#endif /* _RectAPI_LIBRECTANGLES_H_ */
