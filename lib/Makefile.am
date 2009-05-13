 #  -*- Mode: C; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
 #  vi: set tabstop=4 shiftwidth=4 expandtab: */
 #  ***** BEGIN LICENSE BLOCK *****
 #  Version: LGPL 2.1/GPL 2.0
 #  This file is part of libzcloud.
 # 
 #  libzcloud is free software: you can redistribute it and/or modify
 #  it under the terms of the GNU Lesser General Public License (the LGPL)
 #  as published by the Free Software Foundation, either version 2.1 of
 #  the LGPL, or (at your option) any later version.
 # 
 #  libzcloud is distributed in the hope that it will be useful,
 #  but WITHOUT ANY WARRANTY; without even the implied warranty of
 #  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 #  GNU Lesser General Public License for more details.
 # 
 #  The Original Code is Zmanda Incorporated code.
 # 
 #  The Initial Developer of the Original Code is
 #   Zmanda Incorporated
 #  Portions created by the Initial Developer are Copyright (C) 2009
 #  the Initial Developer. All Rights Reserved.
 # 
 #  Contributor(s):
 #    Nikolas Coukouma <atrus@zmanda.com>
 # 
 #  Alternatively, the contents of this file may be used under the terms of
 #  the GNU General Public License Version 2 or later (the "GPL"),
 #  in which case the provisions of the GPL are applicable instead
 #  of those above. If you wish to allow use of your version of this file only
 #  under the terms of either the GPL and not to allow others to
 #  use your version of this file under the terms of the LGPL, indicate your
 #  decision by deleting the provisions above and replace them with the notice
 #  and other provisions required by the GPL. If you do not delete
 #  the provisions above, a recipient may use your version of this file under
 #  the terms of either the the GPL or the LGPL.
 # 
 #  You should have received a copy of the GNU Lesser General Public License
 #  and GNU General Public License along with libzcloud. If not, see
 #  <http://www.gnu.org/licenses/>.
 # 
 #  ***** END LICENSE BLOCK ***** */

zcincludedir = $(includedir)/zcloud
zcinclude_HEADERS = \
	zcloud/address.h \
	zcloud/address_template.h \
	zcloud/download_consumer.h \
	zcloud/list_consumer.h \
	zcloud/progress_listener.h \
	zcloud/store.h \
	zcloud/upload_producer.h \
    zcloud/zcloud.h

INCLUDES = -I. -I$(top_srcdir)/config
AM_CPPFLAGS = $(GLIB_CFLAGS)

lib_LTLIBRARIES = libzcloud.la
libzcloud_la_LIBADD = $(GLIB_LIBS)
libzcloud_la_SOURCES = \
    address.c \
    address_template.c \
    download_consumer.c \
    list_consumer.c \
    progress_listener.c \
    store.c \
    upload_producer.c \
    zcloud.c