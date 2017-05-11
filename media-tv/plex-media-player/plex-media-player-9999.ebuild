# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CMAKE_IN_SOURCE_BUILD=y

inherit git-r3 cmake-utils

DESCRIPTION="Desktop client for Plex based on mpv"
HOMEPAGE="https://github.com/plexinc/plex-media-player"
EGIT_REPO_URI="https://github.com/plexinc/plex-media-player.git"
LICENSE="GPL-2"

SLOT="0"

RDEPEND=">=dev-qt/qtcore-5.7.0
		>=dev-qt/qtgui-5.7.0
		>=dev-qt/qtwebchannel-5.7.0[qml]
		>=dev-qt/qtwebengine-5.7.0
		>=dev-qt/qtnetwork-5.7.0
		>=dev-qt/qtxml-5.7.0

		dev-util/conan

		>=media-video/mpv-0.25.0[libmpv]
		x11-libs/libXrandr
		x11-libs/libvdpau
		x11-libs/libva
		media-libs/mesa
		media-video/ffmpeg
		net-libs/gnutls
		media-libs/libsdl2"

DEPEND="${RDEPEND}"

src_configure() {
	local mycmakeargs=(
		-DQTROOT=/usr/share/qt5
	)

	elog Fetching dependencies...

	conan remote add plex https://conan.plex.tv 2>&1 > /dev/null
	conan install . 2>&1 > /dev/null

	elog OK!

	cmake-utils_src_configure
}
