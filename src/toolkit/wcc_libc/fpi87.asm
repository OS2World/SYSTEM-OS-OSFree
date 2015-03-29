; $Id: fpi87.asm,v 1.1 2002/04/18 01:16:58 2001 Exp $
;
; Common floating point data.

.386p

		PUBLIC	__8087
		PUBLIC	_mw87only, _mw87_used, _mwfltused

; Common data segment

		_DATA	SEGMENT BYTE PUBLIC "DATA"
		ASSUME	ds:_DATA

; Watcom data

__8087:

; Metaware data

_mw87only:
_mw87_used:
_mwfltused:

		dd	1

		_DATA	ENDS
		
		END
