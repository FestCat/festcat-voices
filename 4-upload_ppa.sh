#!/bin/sh -x

VERSION="1.2-1"

for SPK in "bet" "eli" "eva" "jan" "mar" "ona" "pau" "pep" "pol" "teo" "uri"; do
   dput festcat festvox-ca-${SPK}-hts_${VERSION}_source.changes
done

