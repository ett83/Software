#!/bin/bash

for f in *.r; do 
echo "$f" | sed 's/\([0-9]\+\).*/mkdir -p "..\/mod_aufgabe0\1" \&\& mv "\0" "..\/mod_aufgabe0\1\/"/g' | bash
done
