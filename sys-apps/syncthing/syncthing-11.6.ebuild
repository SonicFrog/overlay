# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit golang-vcs

DESCRIPTION="Open Source Continuous File Synchronization"
HOMEPAGE="https://syncthing.net"
SLOT="11"
LICENSE="MPLv2"
SRC_URI="http://github.com/syncthing/syncthing/archive/v0.11.6.tar.gz"
EGO_PN="github.com/syncthing/syncthing"
EGO_SRC="github.com/syncthing/syncthing"

RDEPEND=">=dev-lang/go-1.3
		dev-vcs/git"

DEPEND="${RDEPEND}"

KEYWORDS="~amd64 ~arm ~x86"

src_compile () {
	go run build.go -no-upgrade install
}

src_install () {
	dobin ./bin/syncthing
}
