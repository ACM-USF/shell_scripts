#!/bin/bash
# Ask the user for their name
echo "What's your name?"

# Reads input into the name
read name

# Get length of their name
length=${#name}

# Greet the user
echo "Hello, $name! Nice to meet you."
echo "What's your favourite number?"

# Read in a number
read n

# Output the sum of their name length and favourite number
# Depending on the context, a variable is either a string or an int!
# Differences between [] and (()): https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs
echo "$length + $n = $[$a + $n]"
echo "$length + $n = $(($a + $n))"