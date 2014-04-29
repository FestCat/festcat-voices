#!/bin/sh -x

UPSTREAM_VERSION="1.2"

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   scp "upc_ca_${SPK}_hts-${UPSTREAM_VERSION}.tgz" tts@festcat.talp.cat:/home/tts/www/download
done

