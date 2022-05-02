# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_{8,9,10})

inherit distutils-r1 python-r1

DESCRIPTION=" Official ProtonVPN Linux app"
HOMEPAGE="https://github.com/ProtonVPN/linux-app"
LICENSE="GPL-3"
SRC_URI="https://github.com/ProtonVPN/linux-app/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	dev-libs/libappindicator
	dev-python/pygobject[${PYTHON_USEDEP},cairo]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/proton-nm-lib[$PYTHON_USEDEP]
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
