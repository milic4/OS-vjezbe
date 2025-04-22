#!/bin/bash

cd screenshots || exit 1

brojac=1

for datoteka in *; do
    novo_ime="screenshot_${brojac}_${datoteka}"
    mv "$datoteka" "$novo_ime"
    echo "$novo_ime"
    ((brojac++))
done

