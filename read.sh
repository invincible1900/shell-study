#!/bin/bash
echo "Continue? [Y/n]"
read next

if [ "$next" == "n" ]
then
        echo "bye"
        exit
fi

echo "continue"

FILE=$0

function read_file(){
    while read line
    do
            echo $line
    done < $FILE
}

read_file
