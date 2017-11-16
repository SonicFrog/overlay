# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="A keyboard-centric VTE-based terminal"
EGIT_REPO_URI="https://github.com/thestinger/termite"
HOMEPAGE="https://github.com/thestinger/termite"
SLOT="0"

LICENSE="MIT"

KEYWORDS="~amd64 ~x86"

IUSE="nocsd"

RDEPEND="
	x11-terms/vte-ng
"

src_prepare() {
	default
	sed -i /-s /d Makefile

	if use nocsd; then
		wget -O patch.tar.gz \
			 https://aur.archlinux.org/cgit/aur.git/snapshot/termite-nocsd.tar.gz
		tar vxf patch.tar.gz
		# FIXME: for some reason epatch is not found...
		patch < termite-nocsd/termite.patch
	fi
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}
