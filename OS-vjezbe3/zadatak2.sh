#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Greška: Potrebno je proslijediti točno 1 argument."
    exit 1
fi

broj="$1"

if ! [[ "$broj" =~ ^[0-9]+$ ]]; then
    echo "Greška: Argument mora biti broj."
    exit 1
fi

if [ "$broj" -lt 1 ] || [ "$broj" -gt 10 ]; then
    echo "Greška: Broj mora biti između 1 i 10."
    exit 1
fi

> brojevi.txt
for ((i=1; i<=broj; i++)); do
    echo "$i" >> brojevi.txt
done

echo "Datoteka 'brojevi.txt' uspješno kreirana s brojevima od 1 do $broj."
