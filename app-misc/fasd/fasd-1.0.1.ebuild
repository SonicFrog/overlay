# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Fasd (pronounced similar to \"fast\") is a command-line productivity booster."
HOMEPAGE="https://github.com/clvv/fasd"
KEYWORDS="~amd64 ~x86 ~arm"
LICENSE="MIT"
S="${WORKDIR}/clvv-fasd-4822024"

SLOT="0"

SRC_URI="https://github.com/clvv/fasd/tarball/${PV} -> fasd.tar.gz"

src_install() {
	emake PREFIX="${D}/usr" install
}
