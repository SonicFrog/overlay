# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils git-r3

DESCRIPTION="Implementation of the olm and megolm cryptographic ratchets"
HOMEPAGE="https://gitlab.matrix.org/matrix-org/olm"
EGIT_REPO_URI="https://gitlab.matrix.org/matrix-org/olm.git"
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="APACHE"
