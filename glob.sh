#!/bin/bash

for e in `ls`
do
	echo "$e"
done

for e in ./*
do
	echo $e "	|	"  $(basename $e)
done
