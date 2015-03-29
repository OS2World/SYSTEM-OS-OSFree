# $Id: makefile,v 1.4 2002/09/04 07:47:20 bartosz Exp $
#
# Makefile for Watcom/LIBC interface layer

ROOT=..\..\..
ADD_COPT = -i=..\include
!include $(ROOT)\makefile.inc

# For performance/compatibility reasons, we build a "_System" and
# "_Optlink"-like libraries, corresponding to "-5r" and "-5s" options of
# Watcom compiler.

all: $(ROOT)\lib\cmd_shared.lib

OBJS = cmd_execfsentry.obj cmd_messages.obj &
       cmd_querycurrentdisk.obj cmd_queryfsname.obj cmd_showvolumeinfo.obj

cmd_fsentry16.obj: cmd_fsentry16.c
 wcc -s -ml -zl -bt=os2 cmd_fsentry16.c

$(ROOT)\lib\cmd_shared.lib: $(OBJS) cmd_FSEntry16.obj
 -@if exist $@ del $@
 wlib $@ +$<

# Clean all

clean:
 -del $(LIBS)
 -del *.obj
 -del *.sbr
 -del *.map
