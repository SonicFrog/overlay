# Copyright 2018-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

inherit go-module git-r3

EGIT_REPO_URI="https://github.com/k0sproject/k0sctl.git"
EGIT_COMMIT="db3dfb711f8b95e6f3bf4297db60dd5fbd337f85"

DESCRIPTION="A bootstrapping and management tool for k0s clusters"
HOMEPAGE="https://k0sproject.io/"
LICENSE="Apache-2.0"

SLOT="0"

DEPEND=""
BDEPEND="
	>=dev-lang/go-1.26.0:=
"

src_fetch() {
	git-r3_fetch ${EGIT_REPO_URI}
}

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	ego build
}

src_install() {
	dobin ${PN}
}
