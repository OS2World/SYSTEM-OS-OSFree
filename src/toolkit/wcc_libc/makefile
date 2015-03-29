# $Id: makefile,v 1.1 2002/04/18 01:16:59 2001 Exp $
#
# Makefile for Watcom/LIBC interface layer

ROOT=..\..\..
!include $(ROOT)\makefile.inc

# For performance/compatibility reasons, we build a "_System" and
# "_Optlink"-like libraries, corresponding to "-5r" and "-5s" options of
# Watcom compiler.

LIBS = $(ROOT)\lib\owatcomr.lib $(ROOT)\lib\owatcoms.lib

all: $(LIBS)

WAT_OBJS = wat16thk.obj watthunk.obj wat16ff.obj wat16ff2.obj &
           wat16fp.obj wat16fp2.obj wat16fc.obj wat16fc2.obj &
           fpi87.obj

$(ROOT)\lib\owatcomr.lib: owatcomr.obj $(WAT_OBJS)
 -@if exist $@ del $@
 wlib $@ +$<

$(ROOT)\lib\owatcoms.lib: owatcoms.obj $(WAT_OBJS)
 -@if exist $@ del $@
 wlib $@ +$<

# Clean all

clean:
 -del $(LIBS)
 -del *.obj
 -del *.sbr
 -del *.map
