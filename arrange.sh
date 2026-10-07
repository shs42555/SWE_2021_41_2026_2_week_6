#!/bin/bash

set -e
shopt -s nullglob

for file in files/*; do
    [ -f "$file" ] || continue

    filename=${file##*/}
    first_letter=${filename:0:1}
    directory=${first_letter,,}

    mv -- "$file" "$directory/"
done
