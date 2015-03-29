# $Id: makefile,v 1.1 2002/08/27 08:25:00 bartosz Exp $

ROOT=..\..\..

DIR = $(ROOT)\bin\os2
PROJ = label
DESC = Volume label control utility
OBJS = label.obj
ADD_COPT = -i=..\include
ADD_LIB = cmd_shared.lib,all_shared.lib

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
