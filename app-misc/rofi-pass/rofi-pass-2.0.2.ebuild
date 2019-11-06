# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

SRC_URI="https://github.com/carnager/rofi-pass/archive/${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="rofi frontend for pass"
HOMEPAGE="https://github.com/carnager/rofi-pass"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="otp wayland X"

CDEPEND="
	app-admin/pass
	otp? ( app-admin/pass-otp )
	sys-apps/gawk
	sys-apps/sed
	x11-misc/rofi
	wayland? ( gui-apps/wl-clipboard )
	X? ( x11-misc/xdotool )
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_prepare() {
	default
	if use "wayland"; then
		sed -i s/xclip/wl-copy/g ${PN}
	fi
}

src_compile() {
	:
}

src_install() {
	dobin ${PN}
	dodoc README.md config.example
}
