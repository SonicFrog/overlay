# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 qmake-utils

DESCRIPTION="An instant messaging service over Tor"
HOMEPAGE="https://ricochet.im"
EGIT_REPO_URI="https://github.com/ricochet-im/ricochet.git"

LICENSE="BSD"

SLOT="0"

IUSE="libressl"

DEPEND="dev-qt/qtcore:5
		dev-qt/qtgui:5
		dev-qt/qtquickcontrols:5
		dev-qt/qtdeclarative:5
		dev-qt/qtwebchannel:5[qml]
		dev-libs/protobuf
		!libressl? ( dev-libs/openssl:0= )
		libressl? ( dev-libs/libressl:0= )
		net-vpn/tor"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	sed -i '/vtable-verify/d;/FORTIFY_SOURCE/d' hardened.pri
}

src_configure() {
	eqmake5 DEFINES+=RICOCHET_NO_PORTABLE DESTDIR="${D}"
}

src_compile() {
	emake release
}

src_install() {
	emake INSTALL_ROOT="${D}" install
	rm -f "${D}/ricochet"
}
