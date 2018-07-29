# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Stack trace visualizer"
HOMEPAGE="https://github.com/brendangregg/FlameGraph"
SRC_URI="https://github.com/brendangregg/FlameGraph/archive/v${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"
S="${WORKDIR}/FlameGraph-${PV}"

src_install() {
	mv flamegraph.pl flamegraph
	mv stackcollapse-perf.pl stackcollapse-perf

	dobin flamegraph
	dobin stackcollapse-perf
}
