#!/bin/bash
for i in {1..10}
do
	echo $i
done

for i in $(seq 11 20)
do 
	echo $i
done

for((i=21;i<=30;i++));
do
	echo $i
done
