# st version
VERSION = 0.8.5

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2`
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft \
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2`

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# Linux:
CFLAGS = -std=c99 -O2 -march=native -fno-builtin -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE

# compiler and linker
 CC = clang
