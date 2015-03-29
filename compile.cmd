set path=d:\_work\osos2\src\osfree;%path%
SET BEGINLIBPATH=d:\_work\osos2\src\osfree
set LIB=c:\programs\watcom\lib386;c:\programs\watcom\lib386\os2;c:\os2tk45\lib
wmake -a config LIBCPATH=c:\os2tk45\h\libc
:cmd
wmake -a

