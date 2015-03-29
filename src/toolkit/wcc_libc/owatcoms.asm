; $Id: owatcoms.asm,v 1.1 2002/04/18 01:16:59 2001 Exp $
;
; OpenWatcom startup code translation layer

.386p

		PUBLIC	_cstart_
		PUBLIC	__argc

		EXTERN	_exestart:PROC

DGROUP		GROUP	STACK

; Common code segment

		CODE32	SEGMENT BYTE PUBLIC "CODE"
		ASSUME	cs:CODE32

; Initialization routine (never used)

_cstart_:

; argc__ (stub? Not used!)

__argc:

		CODE32	ENDS

; We do this to "pin up" the presence of STACK segment so WLINK won't end up
; with L1014

		STACK	SEGMENT BYTE PUBLIC "STACK"
		STACK	ENDS
		
		END	_exestart
