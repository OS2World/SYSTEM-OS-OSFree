# $Id: makefile,v 1.2 2002/08/27 08:21:07 bartosz Exp $
#
# Makefile for Watcom/LIBC interface layer

ROOT=..\..
ADD_COPT = -i=..\include
!include $(ROOT)\makefile.inc

# For performance/compatibility reasons, we build a "_System" and
# "_Optlink"-like libraries, corresponding to "-5r" and "-5s" options of
# Watcom compiler.

all: $(ROOT)\lib\all_shared.lib

OBJS = all_messages.obj all_querycurrentdisk.obj all_queryfsname.obj &
	all_dlist.obj all_pathmanipulation.obj all_performrecursiveaction.obj

$(ROOT)\lib\all_shared.lib: $(OBJS)
 -@if exist $@ del $@
 wlib $@ +$<

# Clean all

clean:
 -del $(LIBS)
 -del *.obj
 -del *.sbr
 -del *.map
