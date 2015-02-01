#!/bin/sh -x

VTYPE="clunits"


for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   curdir=$(pwd)
   cd "upc_ca_${SPK}_${VTYPE}" || exit 1
   debuild
   cd "${curdir}"
   scp "festvox-ca-${SPK}-${VTYPE}_1.2-1_all.deb" upc113:www/festcat.talp.cat/public/download
done

