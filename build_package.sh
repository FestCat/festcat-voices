#!/bin/sh -x

UPSTREAM_VERSION="1.1"
VERSION="${UPSTREAM_VERSION}-1"
RELEASE="precise"
DATE=$(date -R)

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   curdir=$(pwd)
   rm -rf "upc_ca_${SPK}_hts/debian"
   tar czf "upc_ca_${SPK}_hts-${UPSTREAM_VERSION}.tgz" "upc_ca_${SPK}_hts" || exit 1
   ln -s "upc_ca_${SPK}_hts-${UPSTREAM_VERSION}.tgz" "upc_ca_${SPK}_hts-${UPSTREAM_VERSION}.orig.tar.gz"
   cp -pr "debian_template" "upc_ca_${SPK}_hts/debian" || exit 1
   cd "upc_ca_${SPK}_hts/debian" || exit 1
   for fitx in "changelog" "control" "copyright" "install" "watch"; do
       cat "$fitx" | sed -e "s:@VERSION@:${VERSION}:g" \
                         -e "s:@SPK@:${SPK}:g" \
                         -e "s:@RELEASE@:${RELEASE}:g" \
                         -e "s|@DATE@|${DATE}|g" \
                         -i "$fitx" || exit 1
   done
   cd ".."
   debuild -S
   cd "${curdir}"   
done

