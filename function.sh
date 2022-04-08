#!/bin/bash
# 1、可以带function fun() 定义，也可以直接fun() 定义,不带任何参数。
# 2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255

function p(){
    echo $1
    return 10
}


echo $1
p "Hello"
echo $?
echo $1
