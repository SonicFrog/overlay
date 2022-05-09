# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=(python3_{8,9,10})

inherit distutils-r1

KEYWORDS="~amd64 ~x86"
LICENSE="public-domain"
DESCRIPTION="A patched mailcap module that conforms to RFC 1524"
HOMEPAGE="https://github.com/michael-lazar/mailcap_fix"
SRC_URI="https://github.com/michael-lazar/mailcap_fix/archive/v${PV}.tar.gz -> ${P}.tar.gz"

SLOT="0"
