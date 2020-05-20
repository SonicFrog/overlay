# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="Implementation of the olm and megolm cryptographic ratchets"
HOMEPAGE="https://gitlab.matrix.org/matrix-org/olm"
SRC_URI="https://gitlab.matrix.org/matrix-org/olm/-/archive/${PV}/olm-${PV}.tar.bz2 -> ${P}.tar.bz2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="Apache-2.0"
