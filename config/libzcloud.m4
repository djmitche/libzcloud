#! /bin/sh
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

# serial 1

# SYNOPSIS
#
#   ZCLOUD_CONFIGURE_PLUGIN
#
# DESCRIPTION
#
#   This macro establishes the basic information required to build a libzcloud
#   plugin:
#
#   * zcplugindir is set to the directory where the plugin should be installed;
#     this variable is available in Makefiles, but not in C code
#
#   TODO:
#   * glib compilation (but not linking) flags
#   * license this under public domain (curl does this?)

AC_DEFUN([ZCLOUD_CONFIGURE_PLUGIN], [
    # note that this only consults the cached value if --with-zcplugindir is not
    # provided
    AC_ARG_WITH(zcplugindir,
	AS_HELP_STRING([--with-zcplugindir=DIR],
	    [plugin directory @<:@libdir/libzcloud-plugins@:>@]),
	[
	    case "$withval" in
	    "" | y | ye | yes | n | no)
		AC_MSG_ERROR([Invalid --with-zcplugindir value])
	      ;;
	    *) zcplugindir="$withval"
	      ;;
	    esac
	], [
        AC_CACHE_VAL([zcloud_cv_zcplugindir], [
	        zcloud_cv_zcplugindir='${libdir}/libzcloud-plugins'
        ])
        zcplugindir="$zcloud_cv_zcplugindir"
	]
    )

    AC_SUBST([zcplugindir])
])
