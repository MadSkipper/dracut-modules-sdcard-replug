#!/bin/bash
# SPDX-License-Identifier: GPL-2.0-or-later

check() {
    require_binaries echo || return 1
    require_binaries sleep || return 1
    return 0
}

depends() {
    echo " dracut-systemd "
    return 0
}

install() {
    inst echo
    inst sleep
    inst_hook pre-mount 90 "$moddir/replug.sh"
}
