#  -*- Mode: makefile; tab-width: 4; indent-tabs-mode: t -*- */
#  vi: set tabstop=4 shiftwidth=4 noexpandtab: */
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


EXTRA_DIST = conf.py.in

include rst-files
clean-local:
	rm -rf build

html: conf.py
	$(SPHINX_BUILD) -c $(builddir) -b html -d build/doctree $(srcdir) build/html
	tar -C build -cf html.tgz html

gh-pages: html
	$(srcdir)/gh-pages.sh

.PHONY: gh-pages
