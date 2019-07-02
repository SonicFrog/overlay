# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils git-r3

DESCRIPTION="Client API library for Matrix, built on top of Boost.Asio"
HOMEPAGE="https://github.com/Nheko-Reborn/mtxclient"
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
SLOT="0"
EGIT_REPO_URI="https://github.com/Nheko-Reborn/mtxclient"

CDEPEND="
	>=dev-libs/boost-1.66

	libressl? (
			  dev-libs/libressl
	)
	!libressl? (
			   dev-libs/openssl
	)
	>=dev-libs/libsodium-1.0.14
"
