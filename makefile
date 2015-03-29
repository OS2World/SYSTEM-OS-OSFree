# $Id: makefile,v 1.2 2002/07/06 20:22:11 andrew Exp $
#
# Root makefile for whatever may reside in subdirectories. Don't invoke the
# compiler directly from this file!
#
# wmake config	-> compile and install the build tools
# wmake [all]	-> build the project-related source code
# wmake install	-> create a distribution tree

ROOT=.
UNCONFIGURED=1
!include makefile.inc

all
 cd src\cmd
 $(MAKE) $(MAKEFLAGS)

config
 %create config.inc
!ifdef LIBCPATH
 %append config.inc LIBC=1
 %append config.inc LIBCPATH=$(LIBCPATH)
!endif
 cd src\toolkit
 $(MAKE) $(MAKEFLAGS)
 cd ..\shared
 $(MAKE) $(MAKEFLAGS)
 cd ..\cmd\shared
 $(MAKE) $(MAKEFLAGS)

install
 @echo [No binary distribution yet]
