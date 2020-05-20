# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit distutils-r1

DESCRIPTION="Allowlist-based HTML cleaner"
HOMEPAGE="https://github.com/matthiask/html-sanitizer"
SLOT="0"
KEYWORDS="~amd64"
SRC_URI="https://github.com/matthiask/html-sanitizer/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD"

CDEPEND="
	>=dev-python/lxml-3.6.1
	dev-python/beautifulsoup:4
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
