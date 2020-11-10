# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Remotely connect to a gaming pc for a low latency remote computing experience"
HOMEPAGE="http://parsec.tv"
SRC_URI="https://builds.parsecgaming.com/package/parsec-linux.deb"

SLOT="0"

DEPEND="media-libs/libglvnd
x11-libs/libXext
x11-libs/libxcb
"
RDEPEND="${DEPEND}"
BDEPEND=""
S=${WORKDIR}
KEYWORDS="~amd64"

src_unpack() {
	unpack_deb ${A}
}

src_install() {
	cp -r "${S}/usr" "${D}/usr"
}
