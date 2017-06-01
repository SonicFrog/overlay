# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit meson

DESCRIPTION="A library to configure gaming mice"
HOMEPAGE="https://github.com/libratbag/libratbag"
SRC_URI="https://github.com/libratbag/libratbag/archive/v${PV}.tar.gz -> libratbag-${PV}.tar.gz "
LICENSE="MIT"

SLOT="0"

IUSE="doc test"

KEYWORDS="~amd64 ~x86"

DEPEND="${RDEPEND}
		dev-util/meson
		dev-util/ninja
		doc? ( app-doc/doxygen )
		doc? ( media-gfx/graphviz )"

RDEPEND="virtual/libudev
		dev-libs/libevdev"

src_configure() {
	# FIXME: Can't find this "check" utility anywhere so test USE is bugged...
	local emesonargs=(
		-Denable-tests=$(usex test true false)
		-Denable-documentation=$(usex doc true false)
	)

	meson_src_configure
}
