# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="Desktop client for Matrix using Qt and C++14"
HOMEPAGE="https://github.com/Nheko-Reborn/nheko"
SRC_URI="https://github.com/Nheko-Reborn/${PN}/archive/v${PV}.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
LICENSE="GPL-3"

IUSE="libressl"

QT_SLOT="5"

CDEPEND="
	app-text/cmark
	dev-libs/olm
	dev-libs/boost
	dev-libs/spdlog
	dev-libs/libsodium
	dev-cpp/nlohmann_json
	dev-cpp/gtest
	dev-db/lmdb
	dev-db/lmdb++

	dev-qt/qtcore:${QT_SLOT}
	dev-qt/qtsvg:${QT_SLOT}
	dev-qt/linguist-tools:${QT_SLOT}[qml]
	dev-qt/qtquickcontrols:${QT_SLOT}
	dev-qt/qtquickcontrols2:${QT_SLOT}
	dev-qt/qtgui:${QT_SLOT}
	dev-qt/qtmultimedia:${QT_SLOT}[qml]
	dev-qt/qtwidgets:${QT_SLOT}
	dev-qt/qtconcurrent:${QT_SLOT}

	sys-libs/zlib

	libressl? (
			  dev-libs/libressl
	)

	!libressl? (
			   dev-libs/openssl
	)
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_prepare() {
	cmake-utils_src_prepare
	sed -i "s/project(nheko LANGUAGES CXX C)/project(nheko LANGUAGES C CXX)/"  CMakeLists.txt || die "sed failed"
}

src_configure() {
	local mycmakeargs=(
		-DTHREADS_PREFER_PTHREAD_FLAG=ON
		-DBUILD_SHARED_LIBS=ON
		-DUSE_BUNDLED_MTXCLIENT=ON
		-DUSE_BUNDLED_TWEENY=ON
	)

	cmake-utils_src_configure
}
