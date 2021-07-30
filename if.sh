#!/bin/bash
a=10
b=20
if (( $a <= 10 )); then
	echo "<="
else
	echo ">"
fi

#if [[ $a == 10 || $b == 10 ]]; then
if (( $a == 10 || $b == 10 )); then
	echo "true"
else
	echo "false"
fi

#if [[ $a == 10 && $b == 10 ]]; then
if (( $a == 10 && $b == 10 )); then
	echo "true"
else
	echo "false"
fi
