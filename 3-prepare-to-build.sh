#!/bin/sh -x

UPSTREAM_VERSION="1.2"
VERSION="${UPSTREAM_VERSION}-1"
RELEASE="precise"
DATE=$(date -R)
VTYPE="hts"
SPK="uri"
#for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   curdir=$(pwd)
   rm -rf "upc_ca_${SPK}_${VTYPE}/debian"
   ln -s "upc_ca_${SPK}_${VTYPE}-${UPSTREAM_VERSION}.tgz" "festvox-ca-${SPK}-${VTYPE}_${UPSTREAM_VERSION}.orig.tar.gz"
   cp -pr "debian_template-${VTYPE}" "upc_ca_${SPK}_${VTYPE}/debian" || exit 1
   cd "upc_ca_${SPK}_${VTYPE}/debian" || exit 1
   for fitx in "changelog" "control" "copyright" "install" "watch"; do
       cat "$fitx" | sed -e "s:@VERSION@:${VERSION}:g" \
                         -e "s:@SPK@:${SPK}:g" \
                         -e "s:@RELEASE@:${RELEASE}:g" \
                         -e "s|@DATE@|${DATE}|g" \
                         -i "$fitx" || exit 1
   done
   cd "${curdir}"   
#done

