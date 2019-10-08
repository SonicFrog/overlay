# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python2_7 python3_5 python3_6 python3_7)

inherit distutils-r1 python-r1

DESCRIPTION="Transport adapter for fetching file:// URLs with the requests python library"
HOMEPAGE="https://github.com/dashea/requests-file"
SRC_URI="https://github.com/dashea/requests-file/archive/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="~amd64 ~x86"

CDEPEND="dev-python/requests"
RDEPEND="${CDEPEND}"
DEPEND="${CDEPEND}"
