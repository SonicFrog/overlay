# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="Select a region in a Wayland compositor"
HOMEPAGE="https://wayland.emersion.fr/slurp/"
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"
SRC_URI="https://github.com/emersion/slurp/releases/download/v${PV}/slurp-${PV}.tar.gz -> ${P}.tar.gz"

IUSE="doc"

CDEPEND="
	doc? ( app-text/scdoc )
	dev-libs/wayland
	dev-libs/wayland-protocols
	x11-libs/cairo
"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_configure() {
	local emesonargs=(
		-Dman-pages=$(usex doc enabled disabled)
	)

	meson_src_configure
}
