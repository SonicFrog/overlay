# Copyright 2017-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CRATES="
aho-corasick-0.6.4
ansi_term-0.11.0
atty-0.2.10
backtrace-0.2.3
backtrace-sys-0.1.16
base64-0.1.1
bitflags-1.0.3
byteorder-1.2.2
cc-1.0.15
cfg-if-0.1.3
chan-0.1.21
chrono-0.4.2
chrono-tz-0.4.1
clap-2.31.2
crossbeam-channel-0.3.8
crossbeam-utils-0.6.5
cpuprofiler-0.0.3
dbghelp-sys-0.2.0
dbus-0.6.1
dtoa-0.4.2
encoding-0.2.33
encoding-index-japanese-1.20141219.5
encoding-index-korean-1.20141219.5
encoding-index-simpchinese-1.20141219.5
encoding-index-singlebyte-1.20141219.5
encoding-index-tradchinese-1.20141219.5
encoding_index_tests-0.1.4
error-chain-0.5.0
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.21
i3ipc-0.8.2
inotify-0.5.1
inotify-sys-0.1.2
itoa-0.4.1
kernel32-sys-0.2.2
lazy_static-0.2.11
lazy_static-1.3.0
libc-0.2.59
libdbus-sys-0.1.3
libpulse-binding-2.5.0
libpulse-sys-1.5.0
log-0.3.9
log-0.4.1
maildir-0.1.1
mailparse-0.5.1
memchr-2.0.1
nix-0.14.1
notmuch-0.1.1
num-0.1.42
num-bigint-0.1.43
num-complex-0.1.43
num-integer-0.1.36
num-iter-0.1.35
num-rational-0.1.42
num-traits-0.2.3
parse-zoneinfo-0.1.1
pkg-config-0.3.11
proc-macro2-0.3.8
progress-0.2.0
quote-0.5.2
quoted_printable-0.3.3
rand-0.3.22
rand-0.4.2
redox_syscall-0.1.37
redox_termios-0.1.1
regex-0.2.11
regex-1.3.1
regex-syntax-0.5.6
regex-syntax-0.6.12
rustc-demangle-0.1.8
rustc-serialize-0.3.24
serde-1.0.53
serde_derive-1.0.53
serde_json-1.0.17
strsim-0.7.0
syn-0.13.7
smallvec-0.6.9
terminal_size-0.1.7
termion-1.5.1
textwrap-0.9.0
thread_local-0.3.5
time-0.1.40
toml-0.4.6
ucd-util-0.1.1
unicode-width-0.1.4
unicode-xid-0.1.0
unreachable-1.0.0
utf8-ranges-1.0.0
uuid-0.6.3
vec_map-0.8.0
void-1.0.2
winapi-0.2.8
winapi-0.3.4
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo

DESCRIPTION="Very resourcefriendly and feature-rich replacement for i3status"
HOMEPAGE="https://github.com/greshake/i3status-rust"
SRC_URI="$(cargo_crate_uris ${CRATES})
		  https://github.com/greshake/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

CDEPEND="
sys-apps/dbus
"
DEPEND="${CDEPEND}"
RDEPEND="${CDEPEND}"

src_install() {
	dobin target/release/i3status-rs
}
