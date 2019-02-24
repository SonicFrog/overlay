# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1 udev user linux-info gnome2-utils git-r3

DESCRIPTION="A Linux device manager for Logitech's Unifying Receiver peripherals"
HOMEPAGE="https://pwer.github.com/Solaar"
EGIT_REPO_URI="https://github.com/pwr/Solaar"

LICENSE="GPL-2"
SLOT="0"
IUSE="doc"

RDEPEND=">=dev-python/pyudev-0.13[${PYTHON_USEDEP}]
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	x11-libs/gtk+:3[introspection]"

CONFIG_CHECK="~HID_LOGITECH_DJ ~HIDRAW"

python_prepare_all() {
	sed -i '/yield autostart_path/d' setup.py || die

	sed -i 's/#MODE=/MODE=/' rules.d/42-logitech-unify-permissions.rules || die

	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all

	udev_dorules rules.d/*.rules

	dodoc docs/devices.md
	if use doc; then
		dodoc -r docs/*
	fi
}
