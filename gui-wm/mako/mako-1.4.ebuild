# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

<<<<<<< Updated upstream
SRC_URI="https://github.com/emersion/mako/releases/download/v${PV}/mako-${PV}.tar.gz"
DESCRIPTION="A lightweight Wayland notification daemon"
HOMEPAGE="https://github.com/emersion/mako"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

CDEPEND="
	|| ( sys-apps/systemd sys-auth/elogind )
	app-text/scdoc
	dev-libs/wayland
	dev-libs/wayland-protocols
	sys-apps/dbus[user-session]
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	x11-libs/pango
"
=======
DESCRIPTION="A lightweight Wayland notification daemon"
HOMEPAGE="https://github.com/emersion/mako"
SRC_URI="https://github.com/emersion/mako/releases/download/v${PV}/mako-${PV}.tar.gz -> {P}.tar.gz"
KEYWORDS="~amd64 ~x86"
SLOT="0"
LICENSE="MIT"

IUSE="systemd"

CDEPEND="
	dev-libs/wayland
	systemd? ( sys-apps/systemd )
	!systemd? ( sys-auth/elogind )
	x11-libs/cairo
	x11-libs/pango
"

DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}
	sys-apps/dbus[user-session]
"
>>>>>>> Stashed changes
