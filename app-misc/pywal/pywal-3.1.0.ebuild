# Copyright 2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_{5,6,7})

inherit distutils-r1 python-r1

SRC_URI="https://github.com/dylanaraps/pywal/archive/${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="https://github.com/dylanaraps/pywal"
DESCRIPTION="Generate and change color-schemes on the fly."
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="MIT"
