#!/bin/sh -x

VTYPE="hts"


for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   curdir=$(pwd)
   cd "upc_ca_${SPK}_${VTYPE}" || exit 1
   debuild clean
   cd "${curdir}"
done

