# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools

HOMEPAGE="https://github.com/Airblader/i3"
DESCRIPTION="i3-gaps – i3 with more features",
SRC_URI="https://github.com/Airblader/i3/archive/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
LICENSE="BSD"

IUSE="debug doc test"

CDEPEND="
	>=dev-libs/yajl-2.0.3
	dev-libs/libev
	dev-libs/libpcre

	dev-vcs/git

	x11-libs/libxkbcommon

	x11-libs/libxcb[xkb]
	x11-libs/xcb-util
	x11-libs/xcb-util-cursor
	x11-libs/xcb-util-keysyms
	x11-libs/xcb-util-wm
	x11-libs/xcb-util-xrm

	x11-libs/libXrandr
	x11-libs/libXinerama
	x11-libs/startup-notification
	>=x11-libs/cairo-1.14.4[X,xcb]
	>=x11-libs/pango-1.30.0[X]

	!x11-wm/i3"

DEPEND="${CDEPEND}
	app-text/asciidoc
	doc? ( app-text/xmlto dev-lang/perl )
	test? (
		  dev-perl/Module-Install
	)
	virtual/pkgconfig"

REDEPEND="${CDEPEND}
	dev-lang/perl
	dev-perl/AnyEvent-I3
	dev-perl/JSON-XS"

S="${WORKDIR}/i3-${PV}"

src_prepare() {
	default

	cat <<- EOF > "${T}"/i3wm
		#!/bin/sh
		exec /usr/bin/i3
	EOF

	eautoreconf
}

src_configure () {
	econf $(use_enable debug sanitizers) \
		  $(use_enable debug)
}

src_compile() {
	emake -C "${CBUILD}"
}

src_install() {
	emake -C "${CBUILD}" DESTDIR="${D}" install || die
	doman "${CBUILD}"/man/*.1

	use doc && einstalldocs
	exeinto /etc/X11/Sessions/
	doexe "${T}/i3wm"
}
