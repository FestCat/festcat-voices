#!/bin/sh -x

UPSTREAM_VERSION="1.1"
VTYPE="clunits"

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   wget "http://festcat.talp.cat/download/upc_ca_${SPK}_${VTYPE}-${UPSTREAM_VERSION}.tgz"
   tar xzf "upc_ca_${SPK}_${VTYPE}-${UPSTREAM_VERSION}.tgz"
done

