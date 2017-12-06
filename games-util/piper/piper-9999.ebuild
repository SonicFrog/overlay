# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_4 python3_5 python3_6 )

inherit git-r3 python-r1 meson

DESCRIPTION="A GTK front-end to ratbagd"
HOMEPAGE="https://github.com/libratbag/piper"
EGIT_REPO_URI="https://github.com/libratbag/piper"
LICENSE="GPL-2"

SLOT="0"

DEPEND="
	>=dev-util/meson-0.40.0
"

RDEPEND="
	dev-python/python-evdev
	>=x11-libs/gtk+-3.22
	dev-python/pygobject:3
"

src_prepare() {
	default
	python_setup
}
