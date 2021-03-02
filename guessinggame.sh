#!/usr/bin/env bash
# filename: guessinggame.sh

filenumber=$(eval "ls | wc -l")

compare () {
    if [ $filenumber -lt $1 ]
    then
        echo "Give me a lower number"
    else
        echo "Give me a bigger number
        "
    fi
}


echo "How many files are in the current directory?"
read r

while [ $filenumber -ne $r ]
do
    compare $r
    read r
done

echo "Correct!!, your have $r files"