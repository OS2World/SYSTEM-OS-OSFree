# Best viewed in -*- makefile -*- mode
#
# $Id: makefile.inc,v 1.2 2002/07/06 20:22:11 andrew Exp $
#
# General setup - to be reused by ordinary user-mode binaries. Shall be
# informed about its location via the $(ROOT) variable.

!ifndef ROOT
!error No root path defined. How did you manage to include this file?
!endif

!ifndef UNCONFIGURED
!include $(ROOT)\config.inc
!endif

!ifndef DIR
DIR=.
!endif

# Version macro. Not to be changed for a long time yet.

_VENDOR=osFree
_VERSION=9.23
FILEVER=@$#$(_VENDOR):$(_VERSION)$#@

# Tools configuration

!ifdef DEBUG
DBG_COPT=-d2 -en
DBG_LINKOPT=DEBUG CODEVIEW ALL OPTION CVPACK
DBG_MAKEFLAGS=DEBUG=1
!else
DBG_COPT=-os
DBG_LINKOPT=
!endif

!ifdef LIBC
LIBC_COPT=-s -i=$(LIBCPATH) -D__EXTENDED__ -zl -D_LNK_CONV=_System
LIBC_LINKOPT=
LIBC_LIB=OWATCOMS,LIBCSSI
!else
LIBC_COPT=
LIBC_LINKOPT=
LIBC_LIB=CLIB3S
!endif

CC=wcc386
COPT=$(ADD_COPT) -fpi87 -5s -ze -i=$(ROOT)\src\include $(DBG_COPT) $(LIBC_COPT)

ASM=wasm
ASMOPT=

LINKER=wlink
LINKOPT=$(DBG_LINKOPT) LIBPATH $(ROOT)\lib $(LIBC_LINKOPT) OPTION NODEFAULTLIBS OPTION REDEFSOK
!if "$(ADD_LIB)"!=""
ADD_LIB_=,$(ADD_LIB)
!endif
LINKLIB=$(LIBC_LIB),OS2386$(ADD_LIB_)

# MS NMAKE defines this, so let's not break it:

MAKE=wmake
MAKEFLAGS=$(__MAKEOPTS__) $(DBG_MAKEFLAGS)

# Implicit rules

.EXTENSIONS:
.EXTENSIONS: .sym .exe .dll .lib .obj .c .asm .h .inc

.c.obj: .AUTODEPEND
 $(CC) $(COPT) $<

.asm.obj: .AUTODEPEND
 $(ASM) $(ASMOPT) $<

.exe: $(DIR)
.exe.sym:
 @awk -f$(ROOT)\tools\mapsym.awk <$^&.wmp >$^&.map
 mapsym $^&.map
 -@del $^&.map $^&.wmp $^@
 move $^&.sym $^@

.dll: $(DIR)
.dll.sym:
 @awk -f$(ROOT)\tools\mapsym.awk <$^&.wmp >$^&.map
 mapsym $^&.map
 -@del $^&.map $^&.wmp $^@
 move $^&.sym $^@
