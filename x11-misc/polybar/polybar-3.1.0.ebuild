# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

CMAKE_IN_SOURCE_BUILD=Y
PYTHON_COMPAT=( python2_7 )

inherit cmake-utils git-r3 python-single-r1

EGIT_COMMIT="bf16a4d415ea7d8845f578544de0c71e56ad314e"
EGIT_REPO_URI="https://github.com/jaagr/polybar/"

DESCRIPTION="A fast and easy-to-use status bar"
HOMEPAGE="https://github.com/jaagr/polybar"
SLOT="0"
LICENSE="MIT"

KEYWORDS="~amd64 ~x86"

IUSE="alsa pulseaudio i3 mpd network curl"

CDEPEND="
	i3? (
		dev-libs/jsoncpp
		x11-wm/i3
	)
	pulseaudio? (
		media-sound/pulseaudio
	)
	alsa? (
		  media-sound/alsa-lib
	)
	curl? ( net-misc/curl )
	mpd? (
		 media-libs/libmpdclient
	)
	network? (
		net-wireless/wireless-tools
	)

	dev-lang/python:2
	x11-libs/cairo
	x11-libs/libxcb
	x11-libs/xcb-util-image
	x11-libs/xcb-util-wm
	x11-libs/xcb-util-xrm
	x11-proto/xcb-proto
"

use_on() {
	if use $1 ; then
		echo -n ON
	else
		echo -n OFF
	fi
}

src_configure() {
	local mycmakeargs=(
		-DENABLE_MPD:BOOL=$(use_on mpd)
		-DENABLE_I3:BOOL=$(use_on i3)
		-DENABLE_PULSEAUDIO:BOOL=$(use_on pulseaudio)
		-DENABLE_ALSA:BOOL=$(use_on alsa)
		-DENABLE_CURL:BOOL=$(use_on curl)
		-DENABLE_NETWORK:BOOL=$(use_on network)
	)

	git submodule update --init --recursive || die "failed to clone submodule"

	cmake-utils_src_configure
}
