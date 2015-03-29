# $Id: path.makefile,v 1.1 2002/08/28 17:37:32 bartosz Exp $

ROOT=..\..\..

DIR = $(ROOT)\bin\os2
PROJ = path
DESC = Sets Search Path
OBJS = path.obj
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
 %append $^&.lnk OPTION STACK=40960
 %append $^&.lnk OPTION MAP=$^&.wmp
 %append $^&.lnk LIBRARY $(LINKLIB)
 for %i in ($(OBJS)) do @%append $^&.lnk FILE %i
 $(LINKER) @$^&.lnk