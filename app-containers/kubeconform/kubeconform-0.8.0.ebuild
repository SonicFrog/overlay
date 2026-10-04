# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=9

inherit go-module

SRC_URI="https://github.com/yannh/kubeconform/archive/refs/tags/v${PV}.tar.gz"

DESCRIPTION="FAST Kubernetes manifests validator with Custom Resources support"
HOMEPAGE="https://github.com/yannh/kubeconform"
LICENSE="Apache-2.0"

SLOT="0"

DEPEND=""
BDEPEND="
	>=dev-lang/go-1.26.0:=
"

S="${WORKDIR}/${P}"

src_compile() {
	ego build ./cmd/kubeconform
}

src_install() {
	dobin kubeconform
}
