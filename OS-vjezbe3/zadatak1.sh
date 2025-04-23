#!/bin/bash
 
 if [ "$#" -ne 2 ]; then
     echo "Potrebno je proslijediti točno 2 argumenta."
     echo "Upotreba: $0 /putanja/do/direktorija .nastavak"
     exit 1
 fi
 
 putanja="$1"
 nastavak="$2"
 
 if [ ! -d "$putanja" ]; then
     echo "Greška! Direktorij '$putanja' ne postoji."
     exit 1
 fi
 
 brojac=0
 
 for datoteka in "$putanja"/*"$nastavak"; do
     if [ -f "$datoteka" ]; then
         echo "$(basename "$datoteka")"
         ((brojac++))
     fi
 done
 
 if [ "$brojac" -eq 0 ]; then
     echo "Nema datoteka s nastavkom '$nastavak' u direktoriju '$putanja'."
fi

