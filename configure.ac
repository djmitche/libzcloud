#  -*- Mode: C; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
#  vi: set tabstop=4 shiftwidth=4 expandtab: */
# ***** BEGIN LICENSE BLOCK *****
# Copyright (C) 2009 Zmanda Incorporated. All Rights Reserved.
#
# This file is part of libzcloud.
#
# libzcloud is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License (the LGPL)
# as published by the Free Software Foundation, either version 2.1 of
# the LGPL, or (at your option) any later version.
#
# libzcloud is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#  ***** END LICENSE BLOCK *****

AC_INIT
AC_CONFIG_AUX_DIR(config)
AC_CONFIG_MACRO_DIR(config)
AC_CONFIG_SRCDIR([lib/store.c])
AC_CONFIG_HEADER([config/config.h])
AM_INIT_AUTOMAKE(libzcloud, "1.0alpha")
AC_PREREQ(2.59)

# Libtool
AM_PROG_LIBTOOL
AC_SUBST(LIBTOOL_DEPS)

# Checks for programs.
AC_PROG_CC

# Compiler and linker flags

# get gcc to check a lot of things for us
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wparentheses])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wdeclaration-after-statement])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wmissing-prototypes])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wstrict-prototypes])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wmissing-declarations])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wformat])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wformat-security])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wsign-compare])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wfloat-equal])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wold-style-definition])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wno-strict-aliasing])
ZCLOUD_ADD_GCC_WARNING_OPTION([-Wno-unknown-pragmas])

# Checks for header files.
AC_HEADER_DIRENT
AC_HEADER_STDC
AC_CHECK_HEADERS([ \
    errno.h \
    fcntl.h \
    stdlib.h \
    string.h \
    strings.h \
    sys/types.h \
    sys/stat.h \
    unistd.h \
])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_TYPE_SIZE_T

# Checks for library functions.
AC_CHECK_FUNCS([bzero regcomp])

# Checks for libraries.
ZCLOUD_CHECK_GLIB
ZCLOUD_CHECK_OPENSSL

# Set up directories
ZCLOUD_WITH_ZCPLUGINDIR

# load plugins
m4_include([plugins/configure.m4])

# set up documentation
ZCLOUD_CHECK_DOCUMENTATION

AC_CONFIG_FILES([
    Makefile
    man/Makefile
    lib/Makefile
    lib/libzcloud.pc
    bin/Makefile
    docs/Makefile
    docs/conf.py
])

AC_OUTPUT
ZCLOUD_SUMMARY
