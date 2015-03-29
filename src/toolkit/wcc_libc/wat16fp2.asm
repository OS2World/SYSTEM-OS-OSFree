; $Id: wat16fp2.asm,v 1.1 2002/04/18 01:16:59 2001 Exp $

.386

                extrn DosFlatToSel:near
                extrn DosSelToFlat:near

                public __Far16Pascal2

cseg01          segment byte use32 public 'CODE'
                assume cs:cseg01
                assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

__Far16Pascal2  proc near

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
                mov     eax, ebx
                call    DosFlatToSel
                lss     sp, [esp+14h+var_14]
                jmp      far ptr loc_20022
__Far16Pascal2  endp


loc_100D3:
                lss     esp, [ebp+4]
                pop     ds
                pop     es
                pop     edx
                pop     ebx
                pop     edi
                pop     ebp
                retn    

cseg01          ends


cseg03          segment byte use16 public 'CODE'
                assume cs:cseg03
                assume ds:nothing, es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

loc_20022:
                mov     cx, ss
                mov     ds, cx
                mov     es, cx
                push    ax
                call    dword ptr [bp+0]
                jmp     far ptr FLAT:loc_100D3

cseg03		ends

		end
