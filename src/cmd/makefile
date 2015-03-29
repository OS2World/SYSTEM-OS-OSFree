# $Id: makefile,v 1.3 2002/09/06 23:53:57 bartosz Exp $

ROOT=..\..
!include $(ROOT)\makefile.inc

# Add other targets here upon their maturity

all
 for %%i in (ansi attrib chkdsk cls eject format label mkdir recover sysinstx tree ver vol) do cd %%i&$(MAKE) $(MAKEFLAGS)&cd ..
