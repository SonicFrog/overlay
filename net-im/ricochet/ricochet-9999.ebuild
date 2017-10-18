# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="An instant messaging service over Tor"
HOMEPAGE="https://ricochet.im"
EGIT_REPO_URI="https://github.com/ricochet-im/ricochet.git"

LICENSE="BSD"

SLOT="0"

DEPEND="dev-qt/qtcore:5/5.7
		dev-qt/qtgui:5/5.7
		dev-qt/qtquickcontrols:5/5.7
		dev-qt/qtdeclarative:5/5.7
		dev-qt/qtwebchannel:5/5.7[qml]
		dev-libs/protobuf
		dev-libs/libressl
		net-vpn/tor"
RDEPEND="${DEPEND}"

src_configure() {
	qmake -qt5 DEFINES+=RICOCHET_NO_PORTABLE
}

src_compile() {
	emake release
}
