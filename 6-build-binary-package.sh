#!/bin/sh -x

VTYPE="hts"
VERSION="1.3-1"

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   curdir=$(pwd)
   cd "upc_ca_${SPK}_${VTYPE}" || exit 1
   debuild
   cd "${curdir}"
   scp "festvox-ca-${SPK}-${VTYPE}_${VERSION}_all.deb" metashare:www/festcat.talp.cat/public/download
done

