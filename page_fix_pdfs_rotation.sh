#!/bin/bash

# Check if the 'rotated' directory exists, and create it only if it doesn't
[ ! -d rotated ] && mkdir rotated

for file in originals/*.pdf; do
    pdftk "$file" burst output temp_page_%02d.pdf
    for i in $(seq 2 2 $(ls temp_page_*.pdf | wc -l)); do
        pdftk temp_page_$(printf "%02d" $i).pdf cat 1south output temp_page_$(printf "%02d" $i)_rotated.pdf
        mv temp_page_$(printf "%02d" $i)_rotated.pdf temp_page_$(printf "%02d" $i).pdf
    done
    pdftk temp_page_*.pdf cat output "rotated/$(basename "$file")"
    rm temp_page_*.pdf
done

