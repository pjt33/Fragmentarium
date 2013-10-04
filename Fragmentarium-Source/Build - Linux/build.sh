#!/bin/sh

cd `dirname $0`/..

qmake-qt4 -project -after "CONFIG+=opengl" -after "QT+=xml opengl script"
qmake-qt4

make Fragmentarium-Source clean &&
	rm Fragmentarium-Source.pro Makefile &&
	mkdir -p build &&
	cd build &&
	mv ../Fragmentarium-Source Fragmentarium &&
	ln -fs ../Examples &&
	ln -fs ../Misc
