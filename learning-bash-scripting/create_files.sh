#!/usr/bin/env bash

if [ -d ./tmp ]; then
    rm -r tmp
fi

mkdir -p tmp
# touch ./tmp/file{01..00010}
touch ./tmp/{red,green,blue}_{01..010}_{a..d}.txt

# echo {1..10..2}
# echo {1..10..3}
# echo {A..z}
# echo {A..Z}
# echo {A..Z..2}
# echo {w..d..2}
