#!/bin/bash

##rename files
# for f in M*.tex; do 
# echo "$f" | sed 's/M\([0-9]\+\).*/mv "\0" "geo_aufgabe\1.tex"/g' | bash
# done

# add TAGS line
for f in *.tex; do 
grep -qxF '%%% TAGS' $f || sed -i '/\\aufgabe*/a %%% TAGS:' $f
done

## add author line
for f in *.tex; do 
sed -i '/%%% TAGS/a %%% AUTHOR: Schwarzenberger, Fabian' $f
done
