# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit scons-utils toolchain-funcs

DESCRIPTION="A secure distributed filesystem"
HOMEPAGE="http://ori.scs.stanford.edu/"
SLOT="0"

SRC_URI="https://bitbucket.org/orifs/ori/downloads/ori-0.8.1.tar.xz"

IUSE="fuse s3"

RDEPEND="dev-libs/openssl:0
		dev-libs/boost
		dev-libs/libevent
		fuse? ( sys-fs/fuse )
		s3? ( dev-libs/libxml2 )"

DEPEND="${RDEPEND}
		dev-util/scons"

KEYWORDS="~amd64 ~x86 ~arm"
LICENSE="MIT"

src_compile() {
	escons CC="$(tc-getCC)"
}

src_install() {
	escons PREFIX="${D}/usr" install
}
