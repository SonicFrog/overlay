# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=(python3_7 python3_8)

inherit python-r1 distutils-r1

DESCRIPTION="A Python Matrix client library, designed according to sans I/O"H
HOMEPAGE="https://github.com/poljar/matrix-nio"
SLOT="0"
LICENSE="ISC"
KEYWORDS="~amd64"

IUSE="e2e"

SRC_URI="https://github.com/poljar/matrix-nio/archive/${PV}.tar.gz -> ${P}.tar.gz"

CDEPEND="
	dev-python/logbook[${PYTHON_USEDEP}]
	dev-python/aiofiles[${PYTHON_USEDEP}]
	dev-python/typing[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/pycryptodome[${PYTHON_USEDEP}]
	dev-python/unpaddedbase64[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/hyper-h2[${PYTHON_USEDEP}]
	dev-python/h11[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/pymediainfo[${PYTHON_USEDEP}]
	dev-python/mistune[${PYTHON_USEDEP}]

	media-libs/cairosvg

	e2e? (
		 dev-python/peewee[${PYTHON_USEDEP}]
		 dev-python/cachetools[${PYTHON_USEDEP}]
		 dev-python/atomicwrites[${PYTHON_USEDEP}]
		 dev-python/olm[${PYTHON_USEDEP}]
	)
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_configure() {
	default # TODO: add extra features to setup.py
}
