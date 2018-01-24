# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5} )

inherit distutils-r1 eutils

DESCRIPTION="Bridge for UDP tunnels, Ethernet, TAP and VMnet interfaces."
HOMEPAGE="https://github.com/GNS3/ubridge"
SRC_URI="https://github.com/GNS3/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# tests are severely broken upstream and they have been notified
RESTRICT="test"

#net-misc/gns3-server version should always match gns3-gui version

RDEPEND="
	net-libs/libpcap
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	eapply_user
}
