# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Helper script for OpenVPN to directly update DNS"
SRC_URI="https://github.com/jonathanio/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
HOMEPAGE="https://github.com/jonathanio/update-systemd-resolved"
KEYWORDS="~amd64 ~x86"
SLOT="0"

CDEPEND="
	net-vpn/openvpn
	sys-apps/systemd
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

DST="/etc/openvpn/scripts"

src_compile() {
	:
}

src_install() {
	exeinto "${DST}"
	doexe ${PN}
	insinto "${DST}"
	doins ${PN}.conf
}
