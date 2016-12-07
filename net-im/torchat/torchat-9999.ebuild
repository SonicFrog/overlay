# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit git-r3

DESCRIPTION="Anonymous messaging client using tor hidden services"
HOMEPAGE="https://github.com/prof7bit/TorChat"
SRC_URI=""
EGIT_REPO_URI="https://github.com/prof7bit/TorChat.git"
SLOT="2"
LICENSE="GPL-2"

RDEPEND="net-im/pidgin"

DEPEND="${RDEPEND}
		dev-lang/fpc"

KEYWORDS=""
