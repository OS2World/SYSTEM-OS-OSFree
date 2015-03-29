; $Id: watthunk.asm,v 1.1 2002/04/18 01:17:00 2001 Exp $

.386
 
		public	__TNC, __TNK
 
cseg01          segment byte use32 public 'CODE'
                assume cs:cseg01
                assume es:nothing, ss:nothing, ds:nothing, fs:nothing, gs:nothing

__TNC:
                push    eax
                mov     eax, [esp+8]
                add     eax, [esp+0Ch]
                add     eax, 2000h
                call    $+5
                pop     eax

__TNK:
                push    eax
                push    ebx
                push    ecx
                push    esi
                push    edi
                lea     edi, [esp+24h]
                mov     eax, [edi-8]
                mov     ebx, [edi-0Ch]
                add     ebx, 2000h
                lea     esi, [edi+eax]
                mov     ecx, esi
                sub     cx, bx
                jnb     short loc_1005B
                xor     di, di
                mov     esi, esp
                lea     ecx, [eax+28h]
                sub     edi, ecx
                sub     esp, 4
                and     sp, 0F000h

loc_10045:
                cmp     esp, edi
                jbe     short loc_10054
                mov     [esp], eax
                sub     esp, 1000h
                jmp     short loc_10045

loc_10054:
                mov     esp, edi
                shr     ecx, 2
                repe movsd

loc_1005B:
                pop     edi
                pop     esi
                pop     ecx
                pop     ebx
                pop     eax
                retn    8
cseg01          ends

                end 
