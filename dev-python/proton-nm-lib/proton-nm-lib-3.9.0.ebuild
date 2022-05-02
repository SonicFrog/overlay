# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{8,9,10})

inherit distutils-r1 python-r1

DESCRIPTION="ProtonVPN NetworkManager library"
HOMEPAGE="https://github.com/ProtonVPN/protonvpn-nm-lib"
SRC_URI="https://github.com/ProtonVPN/protonvpn-nm-lib/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	app-crypt/libsecret
	dev-python/distro[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/keyring[${PYTHON_USEDEP}]
	dev-python/proton-client[${PYTHON_USEDEP}]
	dev-python/pyxdg[${PYTHON_USEDEP}]
	gnome-base/gnome-keyring
	net-misc/networkmanager
	net-vpn/networkmanager-openvpn[gtk]
	net-vpn/openvpn
	sys-apps/dbus[X]
"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
