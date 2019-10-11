# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit autotools flag-o-matic git-r3 pam

DESCRIPTION="A PAM module implementing authentication via OpenPGP smartcards"
HOMEPAGE="https://github.com/gpg/poldi"
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-2"

EGIT_REPO_URI="https://github.com/gpg/poldi"
EGIT_COMMIT="d9a9ff970ecbc57758a243858d30cbb398b7315e"

IUSE="nls"
SLOT="0"

CDEPEND="
	dev-libs/libgcrypt:=
	dev-libs/libgpg-error
	dev-libs/libksba
	sys-apps/texinfo
	virtual/libiconv
"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_configure() {
	econf --with-pam-module-directory=$(getpam_mod_dir) \
		  --enable-nls=$(usex nls) || die "econf failed"
	append-libs -lgpg-error || die "error adding flags"
}
