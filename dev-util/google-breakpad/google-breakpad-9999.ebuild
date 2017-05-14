# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 flag-o-matic

DESCRIPTION='An open-source multi-platform crash reporting system'
HOMEPAGE='http://code.google.com/p/google-breakpad/'
SRC_URI=''
EGIT_REPO_URI='https://chromium.googlesource.com/breakpad/breakpad'

LICENSE='BSD'
SLOT='0'
KEYWORDS=''
IUSE=''

DEPEND=''

src_unpack() {
	local repo='https://chromium.googlesource.com/linux-syscall-support'

	git-r3_src_unpack
	git-r3_fetch "${repo}"
	git-r3_checkout "${repo}" "${S}/src/third_party/lss"
}
