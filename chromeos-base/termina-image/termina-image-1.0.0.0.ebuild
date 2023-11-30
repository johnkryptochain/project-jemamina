# Copyright (c) 2023 Jema Innovations Limited and the openJema Authors.
# Distributed under the license specified in the root directory of this project.

EAPI="5"

inherit jemaos-ftp
DESCRIPTION="termina image and mount scripts"
HOMEPAGE="http://jemakey.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="arm amd64 arm64"
IUSE="+noarm64"

RDEPEND=""

DEPEND="${RDEPEND}"

src_install() {
    insinto /usr/local
    use amd64 && doins -r tatl-jemaos
    use arm && doins -r tael-jemaos
    use arm64 && doins -r tael-jemaos
}
