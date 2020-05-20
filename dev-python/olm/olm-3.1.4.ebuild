# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit distutils-r1

DESCRIPTION="Python CFFI binding to libolm"
HOMEPAGE="https://gitlab.matrix.org/matrix-org/olm/"
SRC_URI="https://gitlab.matrix.org/matrix-org/olm/-/archive/${PV}/olm-${PV}.tar.bz2 -> ${P}.tar.bz2"
KEYWORDS="~amd64"
SLOT="0"
LICENSE="Apache-2.0"

S="${S}/python"

CDEPEND="
	>=dev-libs/olm-${PV}
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

pkg_preinst() {
	default
	# README is already installed by dev-libs/olm
	rm "${D}/usr/share/doc/olm-3.1.3/README.md.bz2"
}
