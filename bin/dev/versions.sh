#!/bin/bash
set -o errexit -o nounset

# Versions of the pieces pulled into SCF (outside of submodules).
# This file is sourced everywhere one or more of the versions are
# needed.

# I. bin/dev/install_tool.sh

export CFCLI_VERSION="6.21.1"
export FISSILE_VERSION="5.0.0+57.gdb657e9"
export KK_VERSION="40a5b3756cf4bcbed940e6156272c0af"
export KUBECTL_VERSION="1.5.4"
export K_VERSION="0.0.12"
export STAMPY_VERSION="0.0.0.22.gbb93bf3"
export UBUNTU_VERSION="14.04"

# For stampy we need the major+minor+patch as a separate value.
export STAMPY_MAJOR=$(echo "$STAMPY_VERSION" | sed -e 's/\.g.*//' -e 's/\.[^.]*$//')

# Notes
# splatform/bosh-cli - Unversioned docker pull

# II. .envrc

export FISSILE_STEMCELL_VERSION=42.2-6.ga651b2d-28.33

# III. bin/generate-dev-certs.sh

export GOLANG_VERSION=1.7

# IV. make/include/versioning

export CF_VERSION=251

# Notes
# github.com/square/certstrap - Unversioned `go get`

# Show versions, if called on its own.
# # ## ### ##### ######## ############# #####################

if [ "X$(basename "$0")" = "Xversions.sh" ]
then
    echo cf '      =' $CF_VERSION
    echo cf-cli '  =' $CFCLI_VERSION
    echo fissile ' =' $FISSILE_VERSION
    echo go '      =' $GOLANG_VERSION
    echo k '       =' $K_VERSION
    echo kk '      =' $KK_VERSION
    echo kubectl ' =' $KUBECTL_VERSION
    echo stampy '  =' $STAMPY_VERSION
    echo stemcell '=' $FISSILE_STEMCELL_VERSION
    echo ubuntu '  =' $UBUNTU_VERSION
    echo
fi
