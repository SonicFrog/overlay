# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_5 python3_6 python3_7)

inherit distutils-r1 git-r3 python-r1

DESCRIPTION=""
HOMEPAGE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
EGIT_REPO_URI="https://github.com/dylanaraps/pywal"

CDEPEND="
	media-gfx/imagemagick
	sys-process/procps
"
DEPEND="${CDEPEND}"
