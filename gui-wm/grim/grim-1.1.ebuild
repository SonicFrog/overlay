# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Grab images from a wayland compositor"
SRC_URI="https://github.com/emersion/grim/archive/v${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/emersion/grim"
SLOT="0"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	app-text/scdoc
	dev-libs/wayland
	dev-libs/wayland-protocols
	media-libs/libjpeg-turbo
	x11-libs/cairo
"

DEPEND="
	${CDEPEND}
	virtual/pkgconfig
"
RDEPEND="${CDEPEND}"
