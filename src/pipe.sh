#!/bin/sh

# Runs another shell script and redirects the output to foo.txt
./find.sh > random/foo.txt

# Generates the values random/foo.txt random/foo.md, so mv random/foo.txt random/foo.md
mv random/foo.{txt,md}

# Lists directory and pipes the output to wc to count the number of lines
length=$(ls -l | wc -l)

# tr translates the string by removing ' ', getting rid of spaces
trimmed=$(echo $length | tr -d ' ')
echo "The number of files: $trimmed"