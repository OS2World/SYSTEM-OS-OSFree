; $Id: wat16thk.asm,v 1.1 2002/04/18 01:16:59 2001 Exp $

.386

                extrn DosFlatToSel:near
                extrn DosSelToFlat:near

		public	__FlatToFar16, __Far16ToFlat

cseg01          segment byte use32 public 'CODE'
                assume cs:cseg01
                assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

__FlatToFar16   proc near
                or      eax, eax
                jnz     DosFlatToSel
                retn    
__FlatToFar16   endp


__Far16ToFlat   proc near
                or      eax, eax
                jnz     DosSelToFlat
                retn    
__Far16ToFlat   endp

cseg01          ends

	        end
