#!/bin/bash

if [ -z $1 ]; then
    IP="192.168.1.1"
else
    IP=$1
fi
echo "[D] Target ip: "$IP

# 上传公钥
ssh root@$IP "mkdir ~/.ssh"
scp ~/.ssh/id_rsa.pub root@$IP:~/.ssh/key.tmp
ssh root@$IP "echo '' >> ~/.ssh/authorized_keys; cat ~/.ssh/key.tmp >> ~/.ssh/authorized_keys; rm ~/.ssh/key.tmp "


# 执行命令
ssh root@$IP "uname -a"
ssh root@$IP "cat ~/.ssh/authorized_keys"
