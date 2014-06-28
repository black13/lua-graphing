# examples/c/Makefile.examples.in for PLplot
###
### Process this file with configure to produce Makefile.examples
###
# Copyright (C) 2002, 2004  Alan W. Irwin
# Copyright (C) 2004  Rafael Laboissiere
# Copyright (C) 2004  Andrew Ross
#
# This file is part of PLplot.
#
# PLplot is free software; you can redistribute it and/or modify
# it under the terms of the GNU Library General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# PLplot is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU Library General Public License
# along with the file PLplot; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

CC = C:/Program Files/Microsoft Visual Studio 10.0/VC/bin/cl.exe
EXEEXT = .exe

LIB_TAG = d
PKG_CONFIG_ENV = PKG_CONFIG_PATH=c:/temp/plplot-install/lib/pkgconfig
RPATHCMD = -Wl,-rpath -Wl,c:/temp/plplot-install/lib

PLPLOTCANVAS_EXECUTABLES_list = \
		 plplotcanvas_demo$(EXEEXT) \
		 plplotcanvas_animation$(EXEEXT)

#extXdrawable_EXECUTABLES_list = \
#	extXdrawable_demo$(EXEEXT)

extcairo_EXECUTABLES_list = \
	ext-cairo-test$(EXEEXT)

EXECUTABLES_list = \
		 x01c$(EXEEXT) \
		 x02c$(EXEEXT) \
		 x03c$(EXEEXT) \
		 x04c$(EXEEXT) \
		 x05c$(EXEEXT) \
		 x06c$(EXEEXT) \
		 x07c$(EXEEXT) \
		 x08c$(EXEEXT) \
		 x09c$(EXEEXT) \
		 x10c$(EXEEXT) \
		 x11c$(EXEEXT) \
		 x12c$(EXEEXT) \
		 x13c$(EXEEXT) \
		 x14c$(EXEEXT) \
		 x15c$(EXEEXT) \
		 x16c$(EXEEXT) \
		 x17c$(EXEEXT) \
		 x18c$(EXEEXT) \
		 x19c$(EXEEXT) \
		 x20c$(EXEEXT) \
		 x21c$(EXEEXT) \
		 x22c$(EXEEXT) \
		 x23c$(EXEEXT) \
		 x24c$(EXEEXT) \
		 x25c$(EXEEXT) \
		 x26c$(EXEEXT) \
		 x27c$(EXEEXT) \
		 x28c$(EXEEXT) \
		 x29c$(EXEEXT) \
		 x30c$(EXEEXT) \
		 x31c$(EXEEXT) \
		 x32c$(EXEEXT) \
		 $(PLPLOTCANVAS_EXECUTABLES_list) \
		 $(extXdrawable_EXECUTABLES_list) \
		 $(extcairo_EXECUTABLES_list)

all: $(EXECUTABLES_list)

clean:
	rm -f $(EXECUTABLES_list)

plplotcanvas_demo$(EXEEXT): plplotcanvas_demo.c
	$(CC) $< -o $@ $(RPATHCMD) \
			`$(PKG_CONFIG_ENV) pkg-config --cflags --libs plplot$(LIB_TAG)-gnome2`
#	$(CC) $< -o $@ \
#			`plplot-config --cflags --libs --with-gcw`

plplotcanvas_animation$(EXEEXT): plplotcanvas_animation.c
	$(CC) $< -o $@ $(RPATHCMD) \
			`$(PKG_CONFIG_ENV) pkg-config --cflags --libs plplot$(LIB_TAG)-gnome2` \
			`pkg-config --cflags --libs gthread-2.0`			
#	$(CC) $< -o \
#			$@ `plplot-config --cflags --libs --with-gcw` \
#			 

#extXdrawable_demo$(EXEEXT): extXdrawable_demo.c
#	$(CC) $< -o $@ $(RPATHCMD) \
#	`$(PKG_CONFIG_ENV) pkg-config --cflags --libs plplot$(LIB_TAG) gtk+-x11-2.0`

ext-cairo-test$(EXEEXT): ext-cairo-test.c
	$(CC) $< -o $@ $(RPATHCMD) \
	`$(PKG_CONFIG_ENV) pkg-config --cflags --libs plplot$(LIB_TAG) cairo`

.c$(EXEEXT):
	$(CC) $< -o $@ $(RPATHCMD) `$(PKG_CONFIG_ENV) pkg-config --cflags --libs plplot$(LIB_TAG)`
#	$(CC) $< -o $@ `plplot-config --cflags --libs`

.SUFFIXES: .c $(EXEEXT)
