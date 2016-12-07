# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGO_PN="github.com/syncthing/syncthing"

inherit golang-vcs

DESCRIPTION="Open Source Continuous File Synchronization"
HOMEPAGE="https://syncthing.net"
SLOT="12"
LICENSE="MPLv2"
SRC_URI="http://github.com/syncthing/syncthing/archive/v0.12.4.tar.gz -> ${P}.tar.gz"
EGO_SRC="github.com/syncthing/syncthing"
S="${WORKDIR}/${P}/src/{EGO_PN}"

RDEPEND=">=dev-lang/go-1.3
		dev-vcs/git"

DEPEND="${RDEPEND}"

KEYWORDS="~amd64 ~arm ~mips ~x86"

src_compile () {
	go run build.go -no-upgrade install
}

src_install () {
	dobin ./bin/syncthing
}
