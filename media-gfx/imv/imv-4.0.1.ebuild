# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit xdg-utils

DESCRIPTION="Minimal image viewer designed for tiling window manager users"
HOMEPAGE="https://github.com/eXeC64/imv"
SRC_URI="https://github.com/eXeC64/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="png jpeg gif svg tiff test wayland X"

RDEPEND="
	!sys-apps/renameutils
	media-libs/fontconfig
	media-libs/libsdl2
	media-libs/sdl2-ttf
	png? ( media-libs/freeimage[png] )
	jpeg? ( media-libs/freeimage[jpeg] )
	gif? ( media-libs/libnsgif )
	svg? ( gnome-base/librsvg )
	tiff? ( media-libs/tiff )
"

DEPEND="${RDEPEND}
	test? ( dev-util/cmocka )"

CONFIG=config.mk

src_configure() {
	default
	local backend

	if use wayland && ! use X; then
		backend=wayland
	elif use X && !use wayland; then
		backend=X
	elif use X && use wayland; then
		backend=all
	else
		eerror "At least one of X/wayland required"
	fi

	if use gif; then
		sed -i s/BACKEND_LIBNSGiF=no/BACKEND_LIBNSGIF=yes/ "$CONFIG"
	fi

	sed -i s/WINDOWS=all/WINDOWS=$backend/ "$CONFIG"
}

pkg_postinst() {
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
}
