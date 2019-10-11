# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

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
