# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python3_4 python3_5)

inherit distutils-r1

KEYWORDS="~amd64 ~x86"
LICENSE="public-domain"
DESCRIPTION="A patched mailcap module that conforms to RFC 1524"
HOMEPAGE="https://github.com/michael-lazar/mailcap_fix"
SRC_URI="https://github.com/michael-lazar/mailcap_fix/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
