#!/bin/bash
# $? 最后运行的命令的结束代码（返回值。0表示没有错误，其他任何值表明有错误)
ls | grep "symbol\.sh" > /dev/null
echo $?
ls | grep "symbolxx" > /dev/null
echo $?
cat push.sh | grep "push" > /dev/null
echo $?
cat push.sh | grep "pushxxx" > /dev/null
echo $?

# $1～$n 添加到Shell的各参数值。$1是第1参数、$2是第2参数…。
# $0 shell 脚本本身的名称
# $@ 所有参数
echo $0 $1 $2
echo $@

# $$ 当前进程号
echo $$
ps -ax|grep "symbol\.sh"
