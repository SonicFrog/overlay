# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python2_7 python3_5 python3_6 python3_7)

inherit distutils-r1 python-r1

DESCRIPTION="Accurately separate the TLD from the domain and subdomains of a URL"
HOMEPAGE="https://github.com/john-kurkowski/tldextract"
SRC_URI="https://github.com/john-kurkowski/tldextract/archive/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="BSD"

CDEPEND="dev-python/requests-file"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"
