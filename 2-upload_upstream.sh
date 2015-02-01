#!/bin/sh -x

UPSTREAM_VERSION="1.2"
VTYPE="clunits"

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   scp "upc_ca_${SPK}_${VTYPE}-${UPSTREAM_VERSION}.tgz" upc113:www/festcat.talp.cat/public/download
done

