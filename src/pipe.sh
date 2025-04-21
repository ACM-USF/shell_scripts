#!/bin/sh

# Runs another shell script and redirects the output to foo.txt
./find.sh > random/foo.txt

# Runs another shell script and pipes the output to wc to count the number of lines
length=$(./find.sh | wc -l)

# tr translates the string by removing ' ', getting rid of spaces
trimmed=$(echo $length | tr -d ' ')
echo "The number of files: $trimmed"