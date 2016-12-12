# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 autotools

DESCRIPTION="Libpurple plugin to use the tox IM protocol"
HOMEPAGE="https://tox.dhs.org/"
EGIT_REPO_URI="https://github.com/jin-eld/tox-prpl.git"
LICENSE="GPL-3"
SRC_URI=""

SLOT="0"

RDEPEND="dev-libs/glib:2
		sys-libs/ncurses
		net-im/pidgin
		dev-libs/libsodium
		net-libs/tox"

src_prepare() {
	default
	eautoreconf
}
