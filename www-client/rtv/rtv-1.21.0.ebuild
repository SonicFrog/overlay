# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python3_4 python3_5 python3_6)

inherit distutils-r1

LICENSE="MIT"
SRC_URI="https://github.com/michael-lazar/rtv/archive/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION="browse Reddit from your terminal"
HOMEPAGE="https://github.com/michael-lazar/rtv"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-python/beautifulsoup:4
	dev-python/decorator
	dev-python/kitchen
	sys-libs/ncurses:0
	dev-python/six
	dev-python/requests
	"
