# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils git-2

DESCRIPTION="An mpd compatible extensible music server"
HOMEPAGE="https://www.mopidy.com"
EGIT_REPO_URI="https://github.com/mopidy/mopidy.git"
SLOT="0"
LICENSE="Apache-2.0"

RDEPEND="dev-lang/python:2
		dev-python/gst-python:0.10
		media-plugins/gst-plugins-bad:0.10
		media.plugins/gst-plugins-good:0.10
		media-plugins/gst-plugins-ugly:0.10
		media-plugins/gst-plugins-meta:0.10"

DEPEND="${RDEPEND}"

KEYWORDS="~amd64 ~arm ~mips ~sparc ~x86"

PYTHON_COMPAT=( python2_7 )

src_install() {
	if [ -f setup.py ]; then
		python2 setup.py install
	fi
}
