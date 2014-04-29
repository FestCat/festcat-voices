#!/bin/sh -x

UPSTREAM_VERSION="1.2"
VERSION="${UPSTREAM_VERSION}-1"
RELEASE="precise"
DATE=$(date -R)

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   rm -rf "upc_ca_${SPK}_hts/debian"
   tar czf "upc_ca_${SPK}_hts-${UPSTREAM_VERSION}.tgz" "upc_ca_${SPK}_hts" || exit 1
done

