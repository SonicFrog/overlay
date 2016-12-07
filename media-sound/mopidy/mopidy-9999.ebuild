# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit eutils git-2 python-r1 distutils-r1

DESCRIPTION="An mpd compatible extensible music server"
HOMEPAGE="https://www.mopidy.com"
EGIT_REPO_URI="https://github.com/mopidy/mopidy.git"
SLOT="0"
LICENSE="Apache-2.0"

RDEPEND="dev-lang/python:2.7
		dev-python/gst-python:0.10
		media-libs/gst-plugins-bad:0.10
		media-libs/gst-plugins-good:0.10
		media-libs/gst-plugins-ugly:0.10
		media-plugins/gst-plugins-meta:0.10"

DEPEND="${RDEPEND}"
