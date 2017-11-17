# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils git-r3

DESCRIPTION="A notification system for tiling window managers"
HOMEPAGE="https://github.com/sboli/twmn"
LICENSE="LGPL-3"
EGIT_REPO_URI="https://github.com/sboli/twmn"

SLOT="0"

src_prepare() {
	default

	for file in twmnc/twmnc.pro twmnd/twmnd.pro; do
		sed -i s,/usr/local/bin,"${D}/usr/bin", "$file" || die
	done
}

src_configure() {
	eqmake5 DESTDIR="${D}"
}
