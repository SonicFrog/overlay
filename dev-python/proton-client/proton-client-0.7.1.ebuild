# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{8,9,10})

inherit python-r1 distutils-r1

DESCRIPTION="Python Proton client module"
HOMEPAGE="https://github.com/ProtonMail/proton-python-client"
SRC_URI="https://github.com/ProtonMail/proton-python-client/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"

S="${S}/../proton-python-client-${PV}"

CDEPEND="
	>=dev-python/requests-2.16.0[${PYTHON_USEDEP}]
	dev-python/bcrypt[${PYTHON_USEDEP}]
	dev-python/python-gnupg[${PYTHON_USEDEP}]
	dev-python/pyopenssl[${PYTHON_USEDEP}]
"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
