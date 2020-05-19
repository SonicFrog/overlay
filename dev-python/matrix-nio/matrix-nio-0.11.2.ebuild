# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit python-r1 distutils-r1

DESCRIPTION="A Python Matrix client library, designed according to sans I/O"
HOMEPAGE="https://github.com/poljar/matrix-nio"
SLOT="0"
LICENSE="ISC"
KEYWORDS="~amd64"

SRC_URI="https://github.com/poljar/matrix-nio/archive/${PV}.tar.gz -> ${P}.tar.gz"

src_configure() {
	default # TODO: add extra features to setup.py
}
