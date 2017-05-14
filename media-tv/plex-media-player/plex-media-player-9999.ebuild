# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CMAKE_IN_SOURCE_BUILD=y

inherit git-r3 cmake-utils

DESCRIPTION='Desktop client for Plex based on mpv'
HOMEPAGE='https://github.com/plexinc/plex-media-player'
SRC_URI=''
EGIT_REPO_URI="https://github.com/plexinc/${PN}.git"

LICENSE='GPL-2'
SLOT='0'
KEYWORDS=''
IUSE=''

CDEPEND='
	dev-qt/qtcore:5/5.7
	dev-qt/qtgui:5/5.7
	dev-qt/qtwebchannel:5/5.7[qml]
	dev-qt/qtwebengine:5/5.7
	dev-qt/qtnetwork:5/5.7
	dev-qt/qtxml:5/5.7
	dev-util/conan
	dev-util/google-breakpad
	>=media-video/mpv-0.25.0[libmpv]
	media-libs/libsdl2
	media-libs/mesa
	media-video/ffmpeg
	x11-libs/libva
	x11-libs/libvdpau
	x11-libs/libXrandr
	net-libs/gnutls
'

RDEPEND="
	${CDEPEND}
	dev-qt/qtquickcontrols:5/5.7
"

DEPEND="${CDEPEND}"

src_prepare() {
	# TODO remove conan, use directly portage
	conan remote add plex https://conan.plex.tv
	conan install .

	default
}

src_configure() {
	local mycmakeargs=(
		-DQTROOT=/usr/share/qt5
	)

	cmake-utils_src_configure
}
