# $Id: makefile,v 1.1 2002/04/18 01:16:58 2001 Exp $

ROOT=..\..
!include $(ROOT)\makefile.inc

# Build LIBC compatibility layer first, then go for the others

all
 for %%i in (wcc_libc hlldump) do cd %%i&$(MAKE) $(MAKEFLAGS)&cd ..
