; $Id: wat16fc.asm,v 1.1 2002/04/18 01:16:59 2001 Exp $

.386

                extrn DosFlatToSel:near
                extrn DosSelToFlat:near

                public __Far16Cdecl

cseg01          segment byte use32 public 'CODE'
                assume cs:cseg01
                assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

__Far16Cdecl    proc near

var_14          = -14h

                push    ebp
                push    edi
                push    ebx
                push    edx
                push    es
                push    ds
                mov     ebp, esp
                push    ss
                push    ebp
                call    DosFlatToSel
                push    eax
                add     ecx, 3
                and     cl, 0FCh
                xor     ebp, ebp
                mov     bp, cx
                sub     esp, ecx
                mov     edi, esp
                shr     ecx, 1
                repe movsw
                mov     eax, esp
                call    DosFlatToSel
                push    eax
                add     bp, ax
                lss     sp, [esp+14h+var_14]
                jmp      far ptr loc_20045
__Far16Cdecl    endp

loc_101B2:
                lss     esp, [ebp+4]
                rol     eax, 10h
                mov     ax, ds
                rol     eax, 10h
                pop     ds
                pop     es
                pop     edx
                pop     ebx
                pop     edi
                pop     ebp
                call    DosSelToFlat
                retn    

cseg01          ends


cseg03          segment byte use16 public 'CODE'
                assume cs:cseg03
                assume ds:nothing, es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

loc_20045:
                mov     cx, ss
                mov     ds, cx
                mov     es, cx
                call    dword ptr [bp+0]
                jmp     far ptr FLAT:loc_101B2

cseg03		ends

		end
