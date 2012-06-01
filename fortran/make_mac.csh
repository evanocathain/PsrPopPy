#!/bin/tcsh

set gf = ~/bin/gfortran

$gf -O2 -fPIC -fno-second-underscore -c -I. *.f

$gf -dynamiclib -o libne2001.so -fno-second-underscore ne2001.o getpath.o
$gf -dynamiclib -o libtsky.so -fno-second-underscore psr_tsky.o getpath.o glun.o
$gf -dynamiclib -o libykarea.so -fno-second-underscore ykarea.o psrran.o
$gf -dynamiclib -o libgetseed.so -fno-second-underscore getseed.o psrran.o clock.o
$gf -dynamiclib -o libsla.so -fno-second-underscore galtfeq.o sla.o

