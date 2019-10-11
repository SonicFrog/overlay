# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Dynamic display configuration for Wayland"
HOMEPAGE="https://github.com/emersion/kanshi"
SLOT="0"
LICENSE="MIT"
SRC_URI="https://github.com/emersion/kanshi/releases/download/v${PV}/${P}.tar.gz"

CDEPEND="
	app-text/scdoc
	dev-libs/wayland
	dev-libs/wayland-protocols
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
