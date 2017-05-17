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

DEPEND='
	sys-libs/linux-syscall-support:=
'
RDEPEND=''

# TODO remove bundled src/third_party

src_unpack() {
	local lss="${S}/src/third_party/lss"

	git-r3_src_unpack

	mkdir "${lss}" || die "unable to create ${S}"
	cp "${ROOT}/usr/include/linux_syscall_support.h" "${lss}" ||
		die 'unable to copy linux_syscall_support.h'

	default
}
