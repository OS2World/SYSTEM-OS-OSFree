# $Id: makefile,v 1.3 2004/08/21 14:49:22 prokushev Exp $
#
# Makefile for common shared libs

PROJ = all_shared
DIRS = msg libs
srcfiles = $(p)all_messages$(e) $(p)all_querycurrentdisk$(e) $(p)all_queryfsname$(e) &
           $(p)all_dlist$(e) $(p)all_pathmanipulation$(e) $(p)all_performrecursiveaction$(e) &
           $(p)all_getopt$(e) $(p)all_debug$(e)

UNI2H = 1
ADD_COPT =  
# ADD_LINKOPT = lib $(BLD)$(SEP)lib$(SEP)os2386.lib
NOLIBS      = 1
TARGETS  = $(PATH)$(PROJ).lib subdirs

!include $(%ROOT)/mk/libsos2.mk

$(PATH)$(PROJ).lib: $(OBJS)
 @$(MAKE) $(MAKEOPT) library=$(PATH)$(PROJ).lib library
