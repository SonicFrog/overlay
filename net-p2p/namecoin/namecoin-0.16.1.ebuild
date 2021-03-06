# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

DESCRIPTION="Namecoin wallet"
HOMEPAGE="https://namecoin.info"
SRC_URI="https://github.com/namecoin/namecoin-core/archive/nc${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"

IUSE="libressl qt upnp protobuf qrencode wallet"

KEYWORDS="~amd64 ~x86"

QT_SLOT="5"

CDEPEND="
	>=dev-libs/boost-1.52.0
	dev-libs/libsecp256k1
	dev-libs/univalue

	qt? (
		dev-qt/qtdbus:${QT_SLOT}
		dev-qt/qtcore:${QT_SLOT}
		dev-qt/qtgui:${QT_SLOT}
		dev-qt/qtnetwork:${QT_SLOT}
		dev-qt/qttest:${QT_SLOT}
		dev-qt/qtwidgets:${QT_SLOT}
	)

	protobuf? (
			  dev-libs/protobuf
	)
	dev-libs/libevent

	libressl? (
			  dev-libs/libressl
	)

	!libressl? (
			  dev-libs/openssl:=
	)

	upnp? (
		  net-libs/miniupnpc
	)

	wallet? (
			sys-libs/db:4.8
	)
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

S="${WORKDIR}/namecoin-core-nc${PV}"

src_prepare() {
	eapply_user
	eautoreconf
}

src_configure() {
	args=""

	if ! use upnp ; then
		args="${args} --without-miniupnpc"
	fi

	if ! use wallet ; then
		args="${args} --disable-wallet"
	fi

	if ! use qt ; then
		args="${args} --without-gui"
	fi

	econf --with-system-univalue ${args}
}
