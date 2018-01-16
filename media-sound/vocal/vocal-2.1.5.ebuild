# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CMAKE_IN_SOURCE_BUILD="y"

inherit cmake-utils gnome2-utils vala

DESCRIPTION="A powerful, beautiful, and simple podcast client for the modern free desktop."
HOMEPAGE="https://github.com/needle-and-thread/vocal/"
SRC_URI="https://github.com/needle-and-thread/vocal/archive/${PV}.tar.gz -> ${P}.tar.gz"
SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	dev-db/sqlite
	$(vala_depend)
	dev-libs/libgee
	dev-libs/libxml2
	dev-libs/granite
	dev-libs/gtk+:3
	dev-libs/json-glib
	net-libs/libsoup:2.4
	net-libs/webkit-gtk
	media-libs/clutter-gst:3.0
	media-libs/clutter-gtk[gtk]
	media-libs/gstreamer:1.0
	x11-libs/gdk-pixbuf[jpeg]
	x11-libs/libnotify
"

src_prepare() {
	default
	vala_src_prepare --ignore-use
	cmake-utils_src_prepare

	# Cmake is dumb as fuck and can't find valac-x.yy
	sed -i "s,NAMES valac,NAMES valac-$(vala_best_api_version)," \
		cmake/FindVala.cmake || die "failed to fix build files"
}

src_configure() {
	local mycmakeargs=(
		# Both of these need to be disabled to avoid overwriting glib files
		-D GSETTINGS_COMPILE=OFF
	)

	cmake-utils_src_configure
}

pkg_preinst() {
	gnome2_schemas_savelist
	gnome2_schemas_update
}
