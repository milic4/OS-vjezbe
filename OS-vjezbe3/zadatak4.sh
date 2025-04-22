#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Greška: Potrebno je proslijediti točno jedan argument (naziv direktorija)."
    exit 1
fi

direktorij="$1"

if [ ! -d "./$direktorij" ]; then
    echo "Greška: Direktorij '$direktorij' ne postoji u trenutnom direktoriju."
    exit 1
fi

zip -j svi_zapisi.zip ./"$direktorij"/* > /dev/null

echo "Datoteke iz direktorija '$direktorij' su uspješno komprimirane u 'svi_zapisi.zip'."

