#!/bin/zsh
echo "Give me a number!"
read n

for i in {0..$n}; do
    j=0
    while [ $j -le 2 ]; do
        echo "Inner loop: $j"
        j=$((j + 1))
    done
    echo "Outer loop: $i"
done                      # Denotes end of loop