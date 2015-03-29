# $Id: makefile,v 1.3 2002/04/18 01:16:58 2001 Exp $

ROOT=..\..\..

DIR = $(ROOT)\tools
PROJ = hlldump
DESC = Debug information dump facility
OBJS = hll.obj hlldirectory.obj exe.obj hllmodule.obj hllpublics.obj &
       hlllines.obj hllsymbols.obj hlltypes.obj

!include $(ROOT)\makefile.inc

all: $(DIR)\$(PROJ).exe $(DIR)\$(PROJ).sym

$(DIR)\$(PROJ).exe: $(OBJS)
 %create $^&.lnk
 %append $^&.lnk $(LINKOPT)
 %append $^&.lnk NAME $^@ OPTION MODNAME=$^&
 %append $^&.lnk FORMAT OS2 LX PMCOMPATIBLE
 %append $^&.lnk OPTION DESCRIPTION '$(FILEVER)  $(DESC)'
 %append $^&.lnk OPTION STACK=65536
 %append $^&.lnk OPTION MAP=$^&.wmp
 %append $^&.lnk LIBRARY $(LINKLIB)
 for %i in ($(OBJS)) do @%append $^&.lnk FILE %i
 $(LINKER) @$^&.lnk
