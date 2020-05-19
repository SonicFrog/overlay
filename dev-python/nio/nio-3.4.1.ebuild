# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit python-r1 distutils-r1

DESCRIPTION="The Python block development framework for the nio software platform"
HOMEPAGE="https://github.com/niolabs/nio"
SLOT="0"
KEYWORDS="~amd64"
LICENSE="Apache-2.0"

SRC_URI="https://github.com/niolabs/nio/archive/${PV}.tar.gz -> ${P}.tar.gz"
