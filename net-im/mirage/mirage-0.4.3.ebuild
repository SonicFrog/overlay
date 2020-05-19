# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit git-r3 python-r1 qmake-utils

DESCRIPTION="A fancy, customizable, keyboard-operable Matrix chat client"
HOMEPAGE="https://github.com/mirukana/mirage"
SLOT="0"
LICENSE="LGPL-3"
EGIT_REPO_URI="https://github.com/mirukana/mirage"
EGIT_COMMIT="aa4cd5bd2c18e211c6d1a4208fe6e221d4d0bddc"
KEYWORDS="~amd64"

QT_VER="5"

CDEPEND="
	>dev-libs/olm-3.0
	dev-qt/qtcore:${QT_VER}
	dev-qt/qtdeclarative:${QT_VER}
	dev-qt/qtsvg:${QT_VER}
	dev-qt/qtgraphicaleffects:${QT_VER}
	dev-qt/qtimageformats:${QT_VER}
	dev-qt/qtquickcontrols2:${QT_VER}
	dev-python/pip
	dev-python/aiofiles
	dev-python/uvloop
	dev-python/pyotherside

	media-libs/openjpeg:2
	media-libs/libwebp
	media-libs/tiff
	media-libs/libmediainfo
	media-libs/libjpeg-turbo

	sys-libs/zlib
"

DEPEND="${CDEPEND}
	dev-util/cmake
"

RDEPEND="${CDEPEND}"

src_configure() {
	eqmake5 PREFIX="${D}"
}
