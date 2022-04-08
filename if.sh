#!/bin/bash
echo "########################################"
echo "\$1 判空"
# -z string
#   True if the length of string is zero.
if [ -z $1 ]; then
	echo "param1: NULL"
else
	echo "param1:" $1
fi


# $1, $2 ...
if [[ $1 ]]; then 
	echo "param1:" $1
else
	echo "param1: NULL"
fi

echo "########################################"
echo "\$? 使用：检查命令执行结果，正常返回 0，错误返回非 0"
# $? 
ls xxxx 2>/dev/null
if (( $? == 0 )); then
	echo ok
else
	echo no
fi

# echo 会影响 $? 的结果
echo $?
if (( $? == 0 )); then
	echo ok
else
	echo no
fi

# 实际案例：判断文件是否为 ELF
file /bin/ls | grep ELF > /dev/null
if (( $? != 0)); then
	echo "not elf"
else
	echo "elf"
fi

echo "########################################"
# Number
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


echo "########################################"
# elif
a=100
b=200

if (( $a > 100 ))
then
        echo "a > 100"
elif (( $b > 100 ))
then
        echo "b > 100"
else
        echo "else"
fi



