# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit git-r3

DESCRIPTION="Libpurple plugin to chat using Telegram"
HOMEPAGE="https://github.com/majn/telegram-purple"
SRC_URI=""
EGIT_REPO_URI="https://github.com/majn/telegram-purple.git"
LICENSE="GPL-2"
SLOT="0"

RDEPEND="dev-libs/glib:2
		sys-libs/zlib
		media-libs/libwebp
		net-im/pidgin
		dev-libs/libgcrypt:0"

DEPEND="${RDEPEND}"
